package data.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MemberDto;
import data.dto.PayDto;
import data.dto.QnADto;
import data.dto.ReviewDto;
import data.mapper.CartMapperInter;
import data.mapper.LoginMapperInter;
import data.mapper.MemberMapperInter;
import data.mapper.PayMapperInter;
import data.mapper.QnAMapperInter;
import data.mapper.ReviewMapperInter;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired MemberMapperInter memberMapper;
	@Autowired LoginMapperInter loginMapper;
	@Autowired CartMapperInter cartMapper;
	@Autowired ReviewMapperInter reviewMapper;
	@Autowired QnAMapperInter qnaMapper;
	@Autowired PayMapperInter payMapper;
	
	@GetMapping()
	public ModelAndView mypage(@RequestParam String mId) {
		ModelAndView mview=new ModelAndView();
		List<MemberDto> dto=memberMapper.getmemberData(mId);
	
		mview.addObject("dto", dto);
		
		
		mview.setViewName("/mypage/myPage");
		return mview;
	}
	
	
	@GetMapping("/review")
	public ModelAndView myreview(@RequestParam String mid) {
		ModelAndView mview=new ModelAndView();
		
		List<ReviewDto> list=reviewMapper.getmIdReviewList(mid);
		
		mview.addObject("list", list);

		
		mview.setViewName("/mypage/myReview");
		
		return mview;
	}
	
	@GetMapping("/list")
	public ModelAndView mylist(@RequestParam String mId) {
		ModelAndView mview=new ModelAndView();
		
		List<PayDto> list=payMapper.getmyPay(mId);
		
		mview.addObject("list", list);		
		
		mview.setViewName("/mypage/myList");
		
		return mview;
	}

	
	@GetMapping("/qna")
	public ModelAndView myqna(@RequestParam String mId) {
		ModelAndView mview=new ModelAndView();
				
		List<QnADto> list=qnaMapper.getmyQnA(mId);
		
		mview.addObject("list",list);
		
		
		mview.setViewName("/mypage/myQnA");
		
		return mview;
	}
	
	@GetMapping("/alter")
	public String myalter() {
		return "/mypage/myAlter";
	}
	
	@GetMapping("/delete")
	public String mydelete() {
		return "/mypage/myDelete";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute MemberDto dto) {
		
		memberMapper.alterMember(dto);
		
		return "/mypage/myAlter";
		
	}
	
	
	@PostMapping("/memberdelete")
	@ResponseBody
	public Map<String, String> memberdelete(@RequestParam String mId,
			@RequestParam String mPassword,
			HttpSession session)
			
	{		
		Map<String, String> map=new HashMap<>();
		map.put("mId", mId);
		map.put("mPassword", mPassword);
		
		int n=memberMapper.login(map);
		
		if(n==1) {
			
			session.removeAttribute("loginok");
			map.put("msg", "ok");
			memberMapper.deleteMember(mId);
			return map;
		
		}else {
			map.put("msg", "no");
			return map;
		}

	}
	
	
	

	

	
	
	
}
