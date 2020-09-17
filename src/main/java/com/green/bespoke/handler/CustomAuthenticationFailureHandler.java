package com.green.bespoke.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler implements ExceptionProcessor {
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		log.debug("CustomAuthenticationFailureHandler.onAuthenticationFailure ::::");
		
		System.out.println();
		
		System.out.println(request);
		System.out.println(response);
		System.out.println(exception);
		System.out.println("로그인실패");
		super.onAuthenticationFailure(request, response, exception);
	}
	
	@Override
	public void makeExceptionResponse(HttpServletRequest request, HttpServletResponse response,
			Exception exception) {
	}
}
