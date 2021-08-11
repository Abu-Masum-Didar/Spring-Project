package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/masum")
public class ResultController {
	
	//Model And View....................................................
			@RequestMapping(path="/result", method = RequestMethod.GET)
			public ModelAndView result() {
				System.out.println("Marks sheet");
				
			//Creating ModelAndView object.......................	
				ModelAndView result= new ModelAndView();
				
			//Setting the Data...................................
				result.addObject("name", "Abu Masum Didar");
				result.addObject("roll", "425962");
				result.addObject("math", "A+");
				result.addObject("phy", "A");
				result.addObject("che", "A");
				result.addObject("bio", "A+");
				result.addObject("ict", "A+");
				
				//List.....
				List<Integer> list= new ArrayList<Integer>();
				list.add(82);
				list.add(76);
				list.add(80);
				list.add(79);
				result.addObject("marks", list);
				
				
			//Setting the View Name..........................
				result.setViewName("result");
				return result;
			}

}
