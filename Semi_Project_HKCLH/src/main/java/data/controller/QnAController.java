package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Util.FileUtil;
import data.dto.NoticeDto;
import data.dto.QnADto;
import data.mapper.MemberMapperInter;
import data.mapper.QnAMapperInter;
import data.service.QnABoardService;

@Controller
@RequestMapping("/qna")
public class QnAController {

	@Autowired
	private QnABoardService qnaService;
	
	@Autowired QnAMapperInter qnamapper;
	
	@Autowired
	private MemberMapperInter memberMapper;
	
	@GetMapping("/form")
	public ModelAndView form(@RequestParam Map<String, String>map) {
		ModelAndView mview = new ModelAndView();
	      //답글일 경우 읽어야 할 5개의 값 (새 글일 경우는 값이 안넘어옴 = 모두 null)
	      String currentPage=map.get("currentPage");
	      String qnum=map.get("qnum");
	      String reg=map.get("reg");
	      String restep=map.get("restep");
	      String relevel=map.get("relevel");
	      
	      mview.addObject("currentPage",currentPage==null?"1":currentPage);
	      mview.addObject("qnum",qnum==null?"0":qnum);
	      mview.addObject("reg",reg==null?"0":reg);
	      mview.addObject("restep",restep==null?"0":restep);
	      mview.addObject("relevel",relevel==null?"0":relevel);
	      
	    mview.setViewName("/qna/qnaform");
		return mview;
		
	}
	
	@GetMapping("/list")
	public ModelAndView list(
			@RequestParam(defaultValue = "1") int currentPage
			) {
		
		ModelAndView mview = new ModelAndView();
		//페이징 처리
		int totalCount; //총 갯수
		int perPage=15; //한 페이지당 보여질 글의 갯수
		int perBlock=5; //한 블럭당 보여질 글의 갯수 (◀이전 1,2,3,4,5 다음▶)
		int totalPage; //총 페이지수
		int startQNum; //한 페이지에서 보여질 시작 글번호
		int startPage; //한 블럭에서 보여질 시작 페이지 번호
		int endPage; //한 블럭에서 보여질 끝 페이지 번호
		int no; //각 페이지당 보여질 시작번호
		
		//총 글의 갯수를 구한다
		totalCount = qnaService.getTotalCount();
		//총 페이지 수
		totalPage = totalCount/perPage+(totalCount%perPage==0?0:1);
		
		startPage = (currentPage-1)/perBlock*perBlock+1;
		endPage = startPage+perBlock-1;
		
		if(endPage>totalPage) {
			endPage=totalPage;
		}
		
		startQNum = (currentPage-1)*perPage;
		no = totalCount-(currentPage-1)*perPage;
		
		//데이터 가져오기
		List<QnADto> list = qnaService.getQnAList(startQNum, perPage);

		//각 데이터에 id를 이용해서 이름 넣어주기

		//model에 저장
		mview.addObject("currentPage",currentPage);
		mview.addObject("totalCount",totalCount);
		mview.addObject("totalPage",totalPage);
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("no",no);
		mview.addObject("list",list);
		
		mview.setViewName("/qna/qnalist");
		return mview;
	}
	
	@PostMapping("/insert")
	   public String insert
	   (@ModelAttribute QnADto dto,	
		@RequestParam String currentPage,
		@RequestParam int qnum,
		@RequestParam String mid,
		@RequestParam ArrayList<MultipartFile> upload,
		HttpSession session,
		HttpServletRequest request
			   )
	   {
		//사진을 저장할 경우
		String path = request.getServletContext().getRealPath("/save");
		
		//세션으로부터 로그인한 아이디 얻기
		String mId = (String)session.getAttribute("mid");
		dto.setMid(mid); //dto에 id 넣기
		
		
		//사진을 업로드 안했을 경우 photos 에 'no'라고 저장
		if(upload.get(0).getOriginalFilename().equals("")) {
			dto.setQimg("no");
		}else {
			FileUtil fileUtil = new FileUtil();
			String qimg = "";
			for(MultipartFile f:upload)
			{
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				qimg+=rename+",";
				
				File file = new File(path+"\\"+rename);
				try {
					f.transferTo(file); //save 폴더에 업로드됨
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//마지막 컴마 제거
			qimg = qimg.substring(0,qimg.length()-1);
			System.out.println(qimg);
			dto.setQimg(qimg);
		}
		
	
			//db insert
		qnaService.insertQnA(dto);
	      return "redirect:list?currentPage="+ currentPage;
	   }
	
	@GetMapping("/content")
	public ModelAndView content(
			@RequestParam int qnum,
			@RequestParam String currentPage
			)
	
	{
		ModelAndView mview = new ModelAndView();

		//num에 해당하는 dto
		QnADto dto = qnaService.getData(qnum);
		//이름 넣어주기
		String mname = memberMapper.getmName(dto.getMid());
		dto.setMid(mname); 
		
		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);
		
		mview.setViewName("/qna/qnacontent");
		return mview;
	}
	
	@PostMapping("/update")
	public String update(
		@ModelAttribute QnADto dto,
		@RequestParam String currentPage,
		@RequestParam ArrayList<MultipartFile> upload,
		HttpServletRequest request
		) 
	{	//사진을 저장할 경우
		String path = request.getServletContext().getRealPath("/save");
		
		//사진을 업로드 안했을 경우 photos 에 'null'이라고 저장
		if(upload.get(0).getOriginalFilename().equals("")) {
			dto.setQimg(null);
		}else {
			FileUtil fileUtil = new FileUtil();
			String qimg = "";
			for(MultipartFile f:upload)
			{
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				qimg+=rename+",";
				
				File file = new File(path+"\\"+rename);
				try {
					f.transferTo(file); //save 폴더에 업로드됨
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//마지막 컴마 제거
			qimg = qimg.substring(0,qimg.length()-1);
			//System.out.println(photos);
			dto.setQimg(qimg);
		}
		
		//db update
		qnaService.updateQnA(dto);
		//내용보기로 이동한다
		return "redirect:content?currentPage="+currentPage+"&qnum="+dto.getQnum(); //해당 페이지로 이동
	}
	
	
	@GetMapping("/updateform")
	public ModelAndView updateForm(
			
			@RequestParam int qnum,
			@RequestParam int currentPage
			) {
		
		ModelAndView mview = new ModelAndView();
		//num에 해당하는 dto
		QnADto dto = qnaService.getData(qnum);
		//model에 저장
		mview.addObject("dto",dto);
		mview.addObject("currentPage",currentPage);
		
		mview.setViewName("/qna/updateform");
		return mview;
	}
	
	@GetMapping("/delete")
	public String delete(
			@RequestParam int qnum,
			@RequestParam int currentPage,
			HttpServletRequest request
			)
	{	//save 폴더의 위치 구하기
		String path = request.getServletContext().getRealPath("/save"); //save의 실제 경로
		//일단 save 폴더의 파일 삭제
		String qimg = qnaService.getData(qnum).getQimg();
		if(!qimg.equals("no")) {
			String []fileName=qimg.split(",");
			for(String f:fileName) {
				File file = new File(path+"\\"+f);
				if(file.exists())
					file.delete();
			}
		}
		
		//db에서 데이터 삭제
		qnaService.deleteQnA(qnum);
		//보던 페이지로 이동
		return "redirect:list?currentPage="+currentPage;

	}		
	
	
}
