package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class formController {
	
	@RequestMapping(path = "/form", method= RequestMethod.GET)
	public String form()
	{
		System.out.println("This is form Page");
		return "form";
	}
	
	@RequestMapping(path = "/welcome", method = RequestMethod.POST)
	public String handleform(
			@RequestParam(name = "userEmail", required= false) String Email,
			@RequestParam("userName") String Name,
			@RequestParam("userPassword") String Password, 
			Model model) 
	{
		System.out.println("User Email"+ Email);
		System.out.println("User Name"+ Name);
		System.out.println("User Password"+ Password);
		
		model.addAttribute("name", Name);
		model.addAttribute("email", Email);
		model.addAttribute("password", Password);
		return "welcome";
	}

}
