package project.home.study;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestMunuController {

	@GetMapping("/")
	public String home()
	{
		return "/layout/main";
	}
	
	@GetMapping("/load/map")
	public String map()
	{
		return "/sub/layout/map";
	}
	
	@GetMapping("/joinform2")
	public String join2()
	{
		return "/member/jointest";		
	}

}
