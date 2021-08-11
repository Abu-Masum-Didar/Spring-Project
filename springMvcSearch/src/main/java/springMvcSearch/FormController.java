package springMvcSearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {
	
	@RequestMapping("/complex")
	public String showForm() {
		
		return "SignUp";
	}
	
	  @RequestMapping(path="/handleform", method=RequestMethod.POST)
	  public String formHandler(@ModelAttribute("user") User user, BindingResult result) {
		 
		  if(result.hasErrors()) {
			  return "SignUp";
			  
		  }
		  
		  System.out.println(user);
		return "success";
	}

}
