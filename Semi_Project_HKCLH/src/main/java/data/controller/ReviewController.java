package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;


@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewMapperInter reviewMapper;
	
	@GetMapping("/form")
	public String form() {
		return "/review/reviewform";
	}
	
	
		@GetMapping("/list")
		public ModelAndView list() 
		{			
			ModelAndView mview = new ModelAndView();
			
			int totalCount = reviewMapper.getTotalReviewCount();
			List<ReviewDto> list = reviewMapper.getPnumReviewList();
			
			mview.addObject("totalCount", totalCount);
			mview.addObject("list",list);
			
			mview.setViewName("/review/reviewlist");
			return mview;
			
		}
		
		@GetMapping("/pnumlist")
		public ModelAndView pnumlist() {
			
		ModelAndView mview = new ModelAndView();
		
		List<Integer> p = reviewMapper.getPnumList();
		List<List<ReviewDto>> pnumlist = new ArrayList<List<ReviewDto>>();
		List<ReviewDto> list2 = reviewMapper.getPnumReviewPartList2();
		//int totalpnumreviewcount = reviewMapper.getTotalPnumReviewCount();
		
		
		 for(int pnum:p) {
			 List<ReviewDto> list=reviewMapper.getPnumReviewPartList(pnum);
			 pnumlist.add(list);			 
			 
			 
		 }
		 
		 	//mview.addObject("totalpnumreviewcount", totalpnumreviewcount);
		 	mview.addObject("list2", list2);	
			mview.addObject("pnumlist", pnumlist);
			mview.setViewName("/review/pnumreviewlist");
			return mview;
		}
		
		
		@PostMapping("/insert")
		public String insert
		(@ModelAttribute ReviewDto dto,
		@RequestParam MultipartFile upload,
		HttpSession session,
		HttpServletRequest request
				)
		{
			  //사진을 저장할 경우
			  String path=request.getServletContext().getRealPath("/save");
			  
			  String rphoto=upload.getOriginalFilename();
			  dto.setRphoto(rphoto);
			  try {
				upload.transferTo(new File(path+"\\"+rphoto));
			} catch (IllegalStateException | IOException e) {

				e.printStackTrace();
			}  
	 
			reviewMapper.insertReview(dto);
			return "redirect:list";
		}
	}