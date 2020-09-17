package com.green.bespoke.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {

	@RequestMapping(value = {"/", "/home"})
	public ModelAndView homeBody(ModelAndView mv){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("auth.getPrincipal() : "+auth.getPrincipal()+"\n");
        System.out.println("auth.getName() :  "+auth.getName()+"\n");
        System.out.println("auth.getDetails() :  "+auth.getDetails()+"\n");
        System.out.println("auth.getAuthorities() :  "+auth.getAuthorities()+"\n");
        System.out.println("auth.getCredentials() :  "+auth.getCredentials()+"\n");
        mv.setViewName("/main/home-body");
		return mv;
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about(ModelAndView mv){
		mv.setViewName("/main/about");
		return mv;
	}

	@RequestMapping(value = "/showcase")
	public ModelAndView showcase(ModelAndView mv){
		mv.setViewName("/main/showcase");
		return mv;
	}
	
	@RequestMapping(value = "/popupJuso")
	public ModelAndView popupJuso(){
		ModelAndView mv = new ModelAndView("/notiles/popup-juso");
		return mv;
	}
	
}


 