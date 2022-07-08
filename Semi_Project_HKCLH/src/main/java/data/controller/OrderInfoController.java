package data.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.OrderInfoDto;
import data.mapper.OrderInfoMapperInter;


@Controller
@RequestMapping("/orderinfo")
public class OrderInfoController {

	@Autowired OrderInfoMapperInter mapper;
	
	@PostMapping("/buy")
	public ModelAndView buy(
			@RequestParam String mid, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("param_string");
		String setParamString [] = paramString.split("[|]");
		
		//멤버id로 조회한 주문정보 중 orderid가 가장 큰 거를 조회
		Integer orderId = mapper.selectLastOrderId(mid);
		if(orderId == null) {
			orderId = 0;
		}else {
			orderId += 1;
		}
		
		if(setParamString.length  > 0) {
			for (int i = 0; i < setParamString.length; i++) {
				
				//String 배열을 int 배열로...
				int intArr [] = Arrays.stream(setParamString[i].split(",")).mapToInt(Integer::parseInt).toArray();
			
				OrderInfoDto dto = new OrderInfoDto();
				dto.setMid(mid);
				
				dto.setPnum(intArr[0]);
				dto.setOid(intArr[1]);
				dto.setOquantity(intArr[2]);
			
				dto.setOrderId(orderId);
				
				mapper.insertOrderInfo(dto);
				
			}
			
		}
		//for문 종료 후 orderId와 mid로 주문목록 조회
//		List<Map<String,Object>> orderList = mapper.getOrderInfo(mid, orderId);
		
		ModelAndView mview = new ModelAndView(); 
		
//		mview.addObject("orderList", orderList);
		
		mview.setViewName("/cart/buyform");
		return mview;		
	}

	
	@GetMapping("/buy")
	public ModelAndView getOrderInfo(
			@RequestParam String mid
			)throws Exception
	{
		ModelAndView mview = new ModelAndView();
		//Integer orderId = mapper.selectLastOrderId(mid);
		
		List<Map<String,Object>> orderList = mapper.getOrderInfo(mid);
		
		mview.addObject("orderList", orderList);
		
		mview.setViewName("/cart/buyform");
		return mview;
	}
	
}
