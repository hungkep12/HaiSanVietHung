package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.services.ProductServices;

@Controller
public class HomeController {

	@Autowired
	private ProductServices productServices;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@RequestMapping(value = { "/", "/trang-chu" }, method = { RequestMethod.GET })
	public String trangChu(final HttpServletRequest request, final HttpServletResponse response, final ModelMap model) {
		initCandP(model);

		model.addAttribute("mostProduct", productServices.findHotProducts());
		model.addAttribute("product1", productServices.findAllByNameCategory1());

		return "trang-chu";
	}

	@RequestMapping(value = { "/gioi-thieu-ve-hai-san-viet-hung" }, method = { RequestMethod.GET })
	public String gioiThieu(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model) {
		initCandP(model);
		return "gioi-thieu";
	}

}
