package data.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.NoticeDto;
import data.mapper.NoticeMapperInter;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	private NoticeMapperInter noticeMapper;

	@GetMapping("/form")
	public String form() {
		return "/notice/noticeform";
	}

	@GetMapping("/list")
	public ModelAndView list() 
	{
		
		ModelAndView mview = new ModelAndView();
		List<NoticeDto> list = noticeMapper.getNoticeList();
		
		mview.addObject("list",list);
		
		mview.setViewName("/notice/noticelist");
	    return mview;
	}

	 @PostMapping("/insert")
	   public String insert
	   (@ModelAttribute NoticeDto dto)
	   {
	      noticeMapper.insertNotice(dto);
	      return "redirect:list";
	   }

}