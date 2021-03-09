package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.services.ProductServices;

@Controller

public class SearchController {

	@Autowired
	private ProductServices productServices;

	@Autowired
	private ProductsRepository productsRepository;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@GetMapping(value = { "/search" })
	public String search(ModelMap model, @RequestParam(defaultValue = "") String nameProduct,
			HttpServletRequest request) {

		initCandP(model);
		model.addAttribute("searchProduct", nameProduct);

		if (request.getParameter("min_price") == null && request.getParameter("max_price") == null) {
			model.addAttribute("productSearched", productServices.findByNameProductLike("%" + nameProduct + "%"));
			model.addAttribute("countProduct", productsRepository.countProductSearch("%" + nameProduct + "%"));
		} else {
			long min_price = Long.parseLong(request.getParameter("min_price"));
			long max_price = Long.parseLong(request.getParameter("max_price"));

			model.addAttribute("productSearched",
					productServices.findByNameProductLikeBetween("%" + nameProduct + "%", min_price, max_price));
			model.addAttribute("countProduct",
					productsRepository.countProductSearchBetween("%" + nameProduct + "%", min_price, max_price));
		}

		return "search";
	}

}
