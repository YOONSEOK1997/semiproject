package data.controller;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import data.dto.CartDto;
import data.dto.OrderInfoDto;
import data.dto.ProductDto;
import data.dto.ProductOptionDto;
import data.dto.ReviewDto;
import data.mapper.CartMapperInter;
import data.mapper.OrderInfoMapperInter;
import data.mapper.ProductMapperInter;
import data.mapper.ReviewMapperInter;
@Controller
@RequestMapping("/product")
public class ProductController {

   @Autowired
   ProductMapperInter productMapper; //private?
   
   @Autowired
   CartMapperInter cartMapper;
   
   @Autowired
   OrderInfoMapperInter oderinfoMapper;
   
   @Autowired
   ReviewMapperInter reviewMapper;
   
   @GetMapping("/form") //보여주기
   public String form()
   {
      return "/product/productform";
   }

   @PostMapping("/insert") //값이나 상태변경
   public String insert(@ModelAttribute ProductDto dto,
		    @RequestParam MultipartFile upload,
		    @RequestParam MultipartFile upload2,
			HttpSession session,
			
			HttpServletRequest request)
   {
	  //사진을 저장할 경우
	  String path=request.getServletContext().getRealPath("/save");
		
	  String pphoto=upload.getOriginalFilename();
	  String pphoto2=upload2.getOriginalFilename();
	  dto.setPphoto(pphoto);
	  dto.setPphoto2(pphoto2);
	  try {
		upload.transferTo(new File(path+"\\"+pphoto));
		upload2.transferTo(new File(path+"\\"+pphoto2));
	} catch (IllegalStateException | IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  	  
      productMapper.insertProduct(dto);
      return "redirect:fragrance";

   }

   @GetMapping("/fragrance")
   public ModelAndView list()
   {
      ModelAndView mview=new ModelAndView();
      
      //mapper 로부터 총 갯수 가져오기
      int totalCount=productMapper.getTotalProductCount("fragrance");
      List<ProductDto> list=productMapper.getProductList("fragrance");
      //model에 저장
      mview.addObject("totalCount", totalCount);
      mview.addObject("list", list);

      mview.setViewName("/product/fragrance");
      return mview;
   }
   
   
   @GetMapping("/goods")
   public ModelAndView goods()
   {
      ModelAndView mview=new ModelAndView();
      
      //mapper 로부터 총 갯수 가져오기
      int totalCount=productMapper.getTotalProductCount("goods");
      List<ProductDto> list=productMapper.getProductList("goods");
      //model에 저장
      mview.addObject("totalCount", totalCount);
      mview.addObject("list", list);

      mview.setViewName("/product/goods");
      return mview;
   }
   @GetMapping("/myset")
   public ModelAndView myset()
   {
      ModelAndView mview=new ModelAndView();
      
      //mapper 로부터 총 갯수 가져오기
      int totalCount=productMapper.getTotalProductCount("myset");
      List<ProductDto> list=productMapper.getProductList("myset");
      //model에 저장
      mview.addObject("totalCount", totalCount);
      mview.addObject("list", list);

      mview.setViewName("/product/myset");
      return mview;
   }
	
   @GetMapping("/detail")
   public ModelAndView detail(
		   @RequestParam int pnum
		   ) {
	   //num에 해당하는 dto얻기
	   ProductDto dto = productMapper.getProduct(pnum);
	   //int oid = productMapper.getOid(pnum);
	   List <ProductOptionDto> opdto = productMapper.getProductOptionList(pnum);
	   List <ReviewDto> redto = reviewMapper.getPnumReviewListHB(pnum);
	   
	   ModelAndView mview = new ModelAndView();
	   
	   //mview.addObject("oid", oid);
	   mview.addObject("redto", redto);
	   mview.addObject("dto",dto);
	   mview.addObject("opdto",opdto);
	   mview.setViewName("/product/productdetail");
	   //System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");	   
	   
	   for(int i = 0; i < opdto.size(); i++) {
		   
		   ProductOptionDto opdto1 = (ProductOptionDto)opdto.get(i);
		   //System.out.println(" opdto1.oname : " + opdto1.getOname());
		   
	   }
	   
	   
	   return mview;
	   
   }
   
   @GetMapping("/delete")
	 public String delete(
			 @RequestParam int pnum
			 //,@RequestParam int currentPage,
			 //HttpServletRequest request
			 ) {
	   	 //db에서 data삭제
	   	 productMapper.deleteProduct(pnum);
		 //페이지이동
		 return "redirect:list";
	 }
   
   //cart insert
   @PostMapping("/cart")
	public ModelAndView buy(
			@RequestParam String mid, 
			@RequestParam int pnum,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("data");
		String setParamString [] = paramString.split("[|]");
		
		if(setParamString.length  > 0) {
			for (int i = 0; i < setParamString.length; i++) {
				
				int intArr [] = Arrays.stream(setParamString[i].split(",")).mapToInt(Integer::parseInt).toArray();
			
				CartDto dto = new CartDto();
				
				dto.setMid(mid);
				dto.setPnum(pnum);
				
				dto.setOid(intArr[0]);
				dto.setCquantity(intArr[1]);
				
				cartMapper.insertCart2(dto);
			}
			
		}
		//for문 종료 후 orderId와 mid로 주문목록 조회
//		List<Map<String,Object>> orderList = mapper.getOrderInfo(mid, orderId);
		
		ModelAndView mview = new ModelAndView(); 
		
//		mview.addObject("orderList", orderList);
		
		mview.setViewName("/cart/cartform");
		return mview;		
	}

 //order insert
   @PostMapping("/order")
	public ModelAndView dibuy(
			@RequestParam String mid, 
			@RequestParam int pnum,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("data");
		String setParamString [] = paramString.split("[|]");
		
		//System.out.println(setParamString);
		
		//멤버id로 조회한 주문정보 중 orderid가 가장 큰 거를 조회
		Integer orderId = oderinfoMapper.selectLastOrderId(mid);
		if(orderId == null) {
			orderId = 0;
		}else {
			orderId += 1;
		}
		
		
		
		
		if(setParamString.length  > 0) {
			for (int i = 0; i < setParamString.length; i++) {
				
				int intArr [] = Arrays.stream(setParamString[i].split(",")).mapToInt(Integer::parseInt).toArray();
			
				OrderInfoDto dto = new OrderInfoDto(); 
				
				dto.setMid(mid);
				dto.setPnum(pnum);
				
				dto.setOid(intArr[0]);
				dto.setOquantity(intArr[1]);
				
				dto.setOrderId(orderId);
				
				oderinfoMapper.insertOrderInfo(dto);
			}
			
		}
		
		ModelAndView mview = new ModelAndView(); 
		
		mview.setViewName("/cart/buyform");
		return mview;		
	}
    
   //업데이트 만들어야함...
   //@GetMapping("/productupdateform")
}