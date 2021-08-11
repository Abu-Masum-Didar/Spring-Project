package springMvcSearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class search {
	
	
	//.............Path Variable annotation.........................
	
	@RequestMapping("/user/{userId}/{userName}")
	public String getUserDetails(@PathVariable("userId") int userId, 
								 @PathVariable("userName") String userName) 
					{
						System.out.println(userId);
						System.out.println(userName);
						
//						Number Format Exception Handler
//						Integer.parseInt(userName);
						
						return "home";
					}
	
	
	
	@RequestMapping("/home")
	public String home() {
		System.out.println("home page loaded ");
		
		/* Null pointer exception handler */
//		String str=null;
//		System.out.println(str.length());
		return "home";
	}
	
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) 
	{
		
		String url ="https://www.google.com/search?q="+query;
		if(query.isEmpty()) {
			RedirectView rd = new RedirectView();
			rd.setUrl("home");
			return rd;
			
		}
		
		RedirectView rdv = new RedirectView();
		rdv.setUrl(url);
		return rdv;
	}
	
	
	//  Handling exception in our spring mvc
//	
//	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(value=NullPointerException.class)
//	public String exceptionHandlerNull(Model m) {
//		m.addAttribute("msg", "Null Pointer exception has occured!!!!");
//		return "nullPage";
//	}
//	
//	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(value=NumberFormatException.class)
//	public String exceptionHandlerNumberFormat(Model m) {
//		m.addAttribute("msg", "Number formate exception has occured!!!!");
//		
//		return "nullPage";
//	}
//	
//	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(value=Exception.class)
//	public String exceptionHandlerGeneric(Model m) {
//		m.addAttribute("msg", "Exception has occured!!!!");
//		
//		return "nullPage";
//	}

}
