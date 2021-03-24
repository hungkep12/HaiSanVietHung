package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ImageProductsRepository;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.repositories.ReviewProductRepository;
import com.haisanviethung.services.ProductServices;

@Controller
@RequestMapping(value = { "/san-pham" }, method = { RequestMethod.GET })
public class ProductsController {

	@Autowired
	private ProductsRepository productsRepository;

	@Autowired
	private ImageProductsRepository imageProductsRepository;

	@Autowired
	private ProductServices productServices;

	@Autowired
	private ReviewProductRepository reviewProductRepository;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@RequestMapping(value = { "" }, method = { RequestMethod.GET })
	public String cuaHang(final HttpServletRequest request, final HttpServletResponse response, final ModelMap model) {

		initCandP(model);

		if (request.getParameter("min_price") == null && request.getParameter("max_price") == null) {
			model.addAttribute("product", productsRepository.findAll());
			model.addAttribute("countProduct", productsRepository.countAllProducts());
		} else {
			long min_price = Long.parseLong(request.getParameter("min_price"));
			long max_price = Long.parseLong(request.getParameter("max_price"));

			model.addAttribute("product", productServices.findAllProductsBetwwen(min_price, max_price));
			model.addAttribute("countProduct", productsRepository.countAllProductsBetween(min_price, max_price));
		}

		return "cua-hang";
	}

	@RequestMapping(value = { "/{nameProduct}" }, method = { RequestMethod.GET })
	public String sanPham(@PathVariable String nameProduct, final HttpServletRequest request,
			final HttpServletResponse response, final ModelMap model) {
		HttpSession session = request.getSession();
		int idProduct = productsRepository.findIdByNameProduct(nameProduct);
		initCandP(model);

		model.addAttribute("productByName", productsRepository.findByNameProductLike(nameProduct));
		model.addAttribute("imageProducts", imageProductsRepository.findImageProductById(idProduct));

		model.addAttribute("countComment", reviewProductRepository.countCommentOfProduct(idProduct));
		model.addAttribute("comment", reviewProductRepository.findByProducts(idProduct));
		if (session.getAttribute("idUser") != null) {
			int idUser = (Integer) session.getAttribute("idUser");
			model.addAttribute("userComment", reviewProductRepository.countCommentUserAtProducts(idProduct, idUser));
		}
		try {
			double star = reviewProductRepository.avgRatingProduct(idProduct);
			model.addAttribute("star", star);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return "san-pham";
	}

}
