package com.green.bespoke.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.service.MemberService;
import com.green.bespoke.vo.MemberVO;

@RestController
@RequiredArgsConstructor
public class MemberController {

	private final MemberService service;
	
	@RequestMapping(value = "/loginForm")
	public ModelAndView loginForm(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("/login/loginForm");
		if(request.getParameter("SignUpSuccess")!=null) {
			mv.addObject("SignUpSuccess", "true");
		}
		return mv;
	}
	
	@RequestMapping(value = "/loginError")
	public ModelAndView loginError(ModelAndView mv, HttpServletRequest request) {
		mv.addObject("LoginFailure", "true");
		mv.setViewName("/" + request.getRequestURL().toString());
		return mv;
	}
	
	@RequestMapping(value = "/sign_up_form")
	public ModelAndView sign_up_form(ModelAndView mv) {
		mv.setViewName("/login/sign_up_form");
		return mv;
	}
	
	@RequestMapping(value = "/sign_up")
	public ModelAndView sign_up(ModelAndView mv, MemberVO vo) {
		service.sign_up(vo);
		mv.addObject("SignUpSuccess", "true");
		mv.setViewName("redirect:/loginForm");
		return mv;
	}
	
	@RequestMapping(value = "/search_pw_form")
	public ModelAndView search_pw_form(ModelAndView mv) {
		mv.setViewName("/login/search_pw_form");
		return mv;
	}
	
	@RequestMapping(value = "/help/myInfo")
	public ModelAndView modify_form(ModelAndView mv, HttpServletRequest request) {
		
		
		
		if (request.getParameter("session_time_out") != null) {
			mv.addObject("session_time_out", "true");
		}
		mv.setViewName("/help/my-info");
		return mv;
	}

}
