package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class formController2 {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonDataforModel(Model m) {
		m.addAttribute("Congrats","Welcome to the Our Result Management System");
		m.addAttribute("Header", "Pls Registration Your profile");
	}
	
	@RequestMapping(path = "/form2", method= RequestMethod.GET)
	public String form(Model m)
	{
		/*
		 * ******Opore declear kora hoase******
		 * m.addAttribute("Congrats","Welcome to the Our Result Management System");
		 * m.addAttribute("Header", "Pls Registration Your profile");
		 */
		return "form2";
	}
	
	@RequestMapping(path = "/welcome2", method = RequestMethod.POST)
	public String handleform2(@ModelAttribute User user, Model model) 
	{
		
		//..............If Required...............................
					if(user.getUserName().isEmpty()) {
						
						return "redirect:/form2"; 
								
					}
		
		/*
		 * ******Opore declear kora hoase******
		 * model.addAttribute("Congrats","Welcome to the Our Result Management System");
		 * model.addAttribute("Header", "Pls Registration Your profile");
		 */
		
		int createUser= this.userService.createUser(user);
		model.addAttribute("mgs", "User created with id " +createUser);
		System.out.println(user);
		return "welcome2";
	}
	
	
	
	
	
//	
//	@RequestMapping(path = "/welcome2", method = RequestMethod.POST)
//	public String handleform2(
//			@RequestParam(name = "userEmail", required= false) String Email,
//			@RequestParam("userName") String Name,
//			@RequestParam("userPassword") String Password, 
//			Model model) 
//	{
//		/*
//		 * System.out.println("User Email"+ Email);
//		 * System.out.println("User Name"+Name); System.out.println("User Password"+
//		 * Password);
//		 */ 
//		User user =new User();
//		user.setUserEmail(Email);
//		user.setUserName(Name);
//		user.setUserPassword(Password);
//		
//		System.out.println(user);
//		/*
//		 * model.addAttribute("name", Name); model.addAttribute("email", Email);
//		 * model.addAttribute("password", Password);
//		 */
//		model.addAttribute("user", user);
//		return "welcome2";
//	}
//	
//	

}	



