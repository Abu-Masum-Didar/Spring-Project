package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ReController {
	
	
//.........Redirect Prefix......................................
	
	@RequestMapping("/one")
	public String one() {
		System.out.println("This is One handler");
		return "redirect:/two";
	}
	
	@RequestMapping("/two")
	public String tow() {
		System.out.println("Tihis is two handler");
		return "form2";
	}
//.........Redirect View..................................	
	
	@RequestMapping("/tree")
	public RedirectView tree() {
		System.out.println("This is tree handler");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("https://www.google.com");
		return redirectView;
	}
	
	@RequestMapping("/four")
	public String four() {
		System.out.println("Tihis is four handler");
		return "form2";
	}

}
