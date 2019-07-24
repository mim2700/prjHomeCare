package com.home.care.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.home.care.bo.FacilityBO;
import com.home.care.dao.service.HomeCareService;
import com.home.care.model.SearchModel;

@Controller
public class HomeCareController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	HomeCareService		homeCareService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("searchModel", new SearchModel());
		return "welcome";
	}
	
	@PostMapping("/searchAction")
	public String searchSubmit(@ModelAttribute SearchModel searchModel, Model model)
	{
		logger.info("SearchModel : "+searchModel);
		String 	zip		=	null;
		String	state	=	null;
		
		if(homeCareService.isNumeric(searchModel.getStateZip()))
		{
			zip	=	searchModel.getStateZip();
		}
		else
		{
			state	=	searchModel.getStateZip();
		}
		
		List<FacilityBO> facilities	=	homeCareService.getFacilities(null, state, zip);
		model.addAttribute("numberOfFacilities", facilities.size());
		model.addAttribute("stateZip", searchModel.getStateZip());
		model.addAttribute("facilities", facilities);
		model.addAttribute("isUserLoggedIn", true);
		
		logger.info("size : "+facilities.size());
		return "listing";
	}
	
}
