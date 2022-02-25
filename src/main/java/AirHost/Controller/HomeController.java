package AirHost.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import AirHost.Service.AirHostService;

@Controller
public class HomeController {
	
	@Autowired
	AirHostService service;
	
	ObjectMapper objectMapper = new ObjectMapper();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() throws JsonProcessingException {
		ModelAndView mav = new ModelAndView("index");
		String data = objectMapper.writeValueAsString(service.getCurrentData());
		mav.addObject("dataNow", data);
		mav.addObject("listData", service.getListData());
		return mav;
	}
	
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView("history");
		mav.addObject("dataNow", service.getCurrentData());
		mav.addObject("listData", service.getListData());
		return mav;
	}
}
