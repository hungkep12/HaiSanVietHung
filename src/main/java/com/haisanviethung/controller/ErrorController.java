package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.repositories.PostsRepository;

@Controller
public class ErrorController {

//	@Autowired
//	private CategoriesRepository categoriesRepository;
//
//	@Autowired
//	private PostsRepository postsRepository;
//	
//	@RequestMapping(value = "/errors", method = RequestMethod.GET)
//	public ModelAndView renderErrorPage(HttpServletRequest httpRequest, final ModelAndView modelAndView) {
//
//		ModelAndView errorPage = new ModelAndView("errorPage");
//		String errorMsg = "";
//		int httpErrorCode = getErrorCode(httpRequest);
//
//		switch (httpErrorCode) {
//		case 400: {
//			errorMsg = "Http Error Code: 400. Bad Request";
//			break;
//		}
//		case 401: {
//			errorMsg = "Http Error Code: 401. Unauthorized";
//			break;
//		}
//		case 404: {
//			errorMsg = "Http Error Code: 404. Resource not found";
//			break;
//		}
//		case 500: {
//			errorMsg = "Http Error Code: 500. Internal Server Error";
//			break;
//		}
//		}
//		errorPage.addObject("errorMsg", errorMsg);
//		
//		modelAndView.addObject("category", categoriesRepository.findAll());
//		modelAndView.addObject("policies", postsRepository.findPosts("chính sách"));
//
//		return errorPage;
//	}
//
//	private int getErrorCode(HttpServletRequest httpRequest) {
//		return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
//	}
}