package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.repositories.PostsRepository;

@Controller
@RequestMapping(value = { "/gio-hang" })

public class CartController {

//	@Autowired
//	private ProductsRepository productsRepository;

	@Autowired
	private PostsRepository postsRepository;

	@Autowired
	private CategoriesRepository categoriesRepository;

	@RequestMapping(value = { "" }, method = { RequestMethod.GET })
	public String gioHang(final ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("category", categoriesRepository.findAll());
		model.addAttribute("policies", postsRepository.findTitlePost("chính sách"));

		return "gio-hang";
	}

}
