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

import data.dto.PayDto;
import data.mapper.PayMapperInter;


@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired PayMapperInter mapper;
	
	@PostMapping("/done")
	public ModelAndView insert(
			@RequestParam String mid, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("param_string");
		String setParamString [] = paramString.split("[|]");
		
		if(setParamString.length  > 0) {
			for (int i = 0; i < setParamString.length; i++) {
				
				//String 배열을 int 배열로...
				int intArr [] = Arrays.stream(setParamString[i].split(",")).mapToInt(Integer::parseInt).toArray();
			
				PayDto dto = new PayDto();
				dto.setMid(mid);
				
				dto.setPnum(intArr[0]);
				dto.setOid(intArr[1]);
				dto.setPyquantity(intArr[2]);
				
				mapper.insertPay(dto);
				
			}
		}
		
		PayDto dto = new PayDto();
		dto.setMid(mid);
		
		mapper.deleteOrderinfo(mid);
		mapper.deleteCart(mid);
		
		ModelAndView mview = new ModelAndView(); 
		
		mview.setViewName("/cart/done");
		return mview;	
	}
	
	@GetMapping("/done")
	public String aaa(
			@RequestParam String mid
			)throws Exception
	{
		return "/cart/done";
	}
}
