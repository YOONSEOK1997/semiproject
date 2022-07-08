package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.CartDto;
import data.mapper.CartMapperInter;
import data.mapper.PayMapperInter;


@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired CartMapperInter cartmapper;
	
	
	
	/* 브랜드페이지 이동 */
	@GetMapping("/about")
	public String form()
	{
		return "/brand/about";		
	}
	
	
	/* 장바구니에 담기 */
	@PostMapping("insert")
	@ResponseBody  //json타입의 데이터를 받기 위해
	public Map<String, String> insertCart(
			@RequestParam CartDto dto)
	{
		int cnt = cartmapper.insertCart(dto);
		Map<String, String> map = new HashMap<>();
		if(cnt > 0) {
			map.put("message", "성공적으로 장바구니에 담겼습니다.");
		}
		
		return map;
	}
	
	/* 장바구니 리스트 출력 */
	@GetMapping("/list")
	public ModelAndView getAllCart(
			@RequestParam String mid // 필수 파라메터 설정
			)
	{
		ModelAndView mview = new ModelAndView(); //Model -> view로 전달
		
		List<Map<String,Object>> cList=cartmapper.getAllCart(mid); //List = 배열형태
		
		mview.addObject("cList", cList);
		
		mview.setViewName("/cart/cartform");
		return mview;
	}
	
	
	/*  카트 삭제 */
	@GetMapping("/delete")
	@ResponseBody
	public void deleteCart(@RequestParam String cids) {
		
		//,로 cid를 분리
		String cid[]=cids.split(",");
		for(String n:cid) {
			cartmapper.deleteCart(n);
		}  
	}

	
	@GetMapping("/nocart")
	public String nocart()
	{
		return "/cart/nocart";		
	}

}
