package data.controller;



import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired MemberMapperInter membermapper;

	@GetMapping("/joinform")
	public String joinform()
	{
		return "/member/MemberJoinForm";		
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute MemberDto dto)
	{
		
		
		
		membermapper.insertMember(dto);	
		
		return "redirect:/";		
	}
	
	@GetMapping("/idchkform")
	@ResponseBody
	public Map<String, Integer> getSearchId(@RequestParam String mId)
	{
		Map<String, Integer> map=new HashMap<>();
		
		int n=membermapper.getmId(mId);
		map.put("count", n);		
		
		return map;		
	}
	

	
}
