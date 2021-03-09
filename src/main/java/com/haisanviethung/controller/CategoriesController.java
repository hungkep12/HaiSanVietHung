package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.services.ProductServices;

@Controller
@RequestMapping(value = { "/danh-muc" })
public class CategoriesController {

	@Autowired
	private ProductsRepository productsRepository;

	@Autowired
	private ProductServices productServices;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@GetMapping("/{nameCategory}")
	public String danhMuc(@PathVariable String nameCategory, final HttpServletRequest request,
			final HttpServletResponse response, final ModelMap model) {
		initCandP(model);

		model.addAttribute("nameCategory", nameCategory);

		if (request.getParameter("min_price") == null && request.getParameter("max_price") == null) {
			model.addAttribute("productByCategory", productServices.findByNameCategory(nameCategory));
			model.addAttribute("countProduct", productsRepository.countProductOfCategory(nameCategory));
		} else {
			long min_price = Long.parseLong(request.getParameter("min_price"));
			long max_price = Long.parseLong(request.getParameter("max_price"));

			model.addAttribute("productByCategory",
					productServices.findByNameCategoryBetween(nameCategory, min_price, max_price));
			model.addAttribute("countProduct",
					productsRepository.countProductOfCategoryBetween(nameCategory, min_price, max_price));
		}

		return "danh-muc";
	}

}
