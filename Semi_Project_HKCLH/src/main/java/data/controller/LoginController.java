package data.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.mapper.LoginMapperInter;
import data.mapper.MemberMapperInter;


@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired MemberMapperInter memberMapper;
	@Autowired LoginMapperInter loginMapper;

	@GetMapping("/loginform")
	public String login()
	{
		
		return "/login/loginform";
	}
	
	
	@PostMapping("kakao")
	@ResponseBody
		public String kakao(@RequestParam String kakaoid,
				@RequestParam String kakaopass,
				@RequestParam(required = false) String chkid,
				HttpSession session) {
		
			Map<String, String> map=new HashMap<>();
			
			map.put("kakaoid", kakaoid);
			map.put("kakaopass", kakaopass);
			
			int n=memberMapper.kakaologin(map);
			
			if(n==0) {
				String msg="ok";
				
				session.setAttribute("mId", kakaoid);
				
				//로그인한 아이디의 mName값 얻어오기
				String mName=kakaopass;
				session.setAttribute("mName", mName);
				session.setAttribute("saveok", chkid==null?"no":"yes");
				session.setAttribute("loginok", "kakao");
				
				return msg;
			}else {
				String msg="no";
				
				return msg;
			}
			
		}
	
	
	
	//로그인
	@PostMapping("/process")
	public String process(@ModelAttribute MemberDto dto,
			@RequestParam String mId,
			@RequestParam String mPassword,
			@RequestParam(required = false) String chkid,
			HttpSession session) {
				
		Map<String, String> map=new HashMap<>();
		
		map.put("mId", mId);
		map.put("mPassword", mPassword);
		
		int n=memberMapper.login(map);
		
		if(n==1)
		{
			session.setMaxInactiveInterval(60*60*8); //로그인 8시간동안 유지
			session.setAttribute("mId", mId);
			
			//로그인한 아이디의 mName값 얻어오기
			String mName=memberMapper.getmName(mId);
			session.setAttribute("mName", mName);
			//session.setAttribute("mId", mId);
			session.setAttribute("saveok", chkid==null?"no":"yes");
			session.setAttribute("loginok", "yes");
			
			return "redirect:/";

		}
		else {			
			return "redirect:/login/loginform";

		}
	}
	
	@PostMapping("/process2")
	@ResponseBody
	public Map<String, String> pocess(@RequestParam String mId,
			@RequestParam String mPassword,
			@RequestParam(required = false) String chkid,
			HttpSession session){
		
		Map<String, String> map=new HashMap<>();
		
		map.put("mId", mId);
		map.put("mPassword", mPassword);
		
		int n=memberMapper.login(map);
		if(n==1)
		{
			session.setAttribute("mId", mId);
			
			//로그인한 아이디의 mName값 얻어오기
			String mName=memberMapper.getmName(mId);
			session.setAttribute("mName", mName);
			session.setAttribute("mId", mId);
			session.setAttribute("saveok", chkid==null?"no":"yes");
			session.setAttribute("loginok", "yes");
			
			map.put("error", "ok");
			
			return map;

		}
		else {			
			map.put("error", "no");
			return map;

		}
		
	}
	
	@GetMapping("/logout")
	//@ResponseBody
	public String logout(HttpSession session)
	{
		session.removeAttribute("mId");
		session.removeAttribute("loginok");
		return "redirect:/";
	}
	
	@PostMapping("/kakaoout")
	public String kakaoout(HttpSession session)
	{
		session.removeAttribute("loginok");
		return "redirect:/";
	}
	
	@GetMapping("/findidpage")
	public String findidpage() {
		
		return "/login/findid";
	}
	
	@GetMapping("/findpasspage")
	public String findpasspage() {
		
		return "/login/findpass";
	}
	
	@PostMapping("/findid")
	@ResponseBody
	public Map<String, String> findid(@RequestParam String mName,
			@RequestParam String mEmail){
		
		Map<String, String> map=new HashMap<>();
		
		String mId=loginMapper.findmId(mName, mEmail);
		
		map.put("mId", mId);		
		
		return map;		
	}
	
	@PostMapping("/findpass")
	@ResponseBody
	public Map<String, String> findpass(@RequestParam String mId,
			@RequestParam String mName,
			@RequestParam String mEmail){
		
		Map<String, String> map=new HashMap<>();
		
		String mPassword=loginMapper.findmPassword(mId,mName, mEmail);
		
		map.put("mPassword", mPassword);	
		map.put("mId", mId);
		map.put("mName", mName);
		map.put("mEmail", mEmail);
		
		return map;		
	}
}
