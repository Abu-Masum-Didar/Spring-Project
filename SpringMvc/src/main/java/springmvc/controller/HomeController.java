package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
	@RequestMapping("/home")
	public String home()
	{
		System.out.println("This is home url");
		return "home";
	}
	
	@RequestMapping("/Profile")
	public String Profile()
	{
		System.out.println("This is My Profile");
		return "profile";
	}
	
	@RequestMapping("/service")
	public String Services()
	{
		System.out.println("This is Services Page");
		return "services";
	}
	
	@RequestMapping("/index")
	public String index(Model model) 
	{
		System.out.println("This is Model url");
		
		model.addAttribute("name","Masum Didar");
		model.addAttribute("ID", 12345);
		model.addAttribute("Dept", "Computer Science & Engineering");
		
		return "index";
	}
	
	@RequestMapping("/list")
	public String arrList(Model model)
	{
		System.out.println("This model url for array List");
		
		List<String> friends=new ArrayList<String>();
		friends.add("Abdur Rahat Tarek");
		friends.add("Antu Chy");
		friends.add("Munna");
		friends.add("Sazzat Khan");
		
		model.addAttribute("F", friends);
		return "list";
	}
	
	
	
	
	
	
	
	

}
