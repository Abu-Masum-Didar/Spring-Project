package springmvc.controller;

import java.time.LocalDateTime;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class controller {
	
	//Model And View....................................................
		@RequestMapping("/help")
		public ModelAndView help() {
			System.out.println("This is help page");
			
		//Creating ModelAndView object.......................	
			ModelAndView MAV= new ModelAndView();
			
		//Setting the Data...................................
			MAV.addObject("name", "AbuMasumDidar");
			MAV.addObject("Id", "160226051");
			
			LocalDateTime now=LocalDateTime.now();
			MAV.addObject("time", now);
			
		//Setting the View Name..........................
			MAV.setViewName("help");
			return MAV;
		}

}
