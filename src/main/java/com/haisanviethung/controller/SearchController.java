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

//	@SuppressWarnings("unchecked")
//	@GetMapping("/search/cart")
//	public String addToCart5(ModelMap model, HttpServletRequest request, HttpServletResponse response,
//			@RequestParam(defaultValue = "") String nameProduct) throws IOException {
//		initCandP(model);
//		model.addAttribute("productSearched", productServices.findByNameProductLike("%" + nameProduct + "%"));
//
//		String action = request.getParameter("action");
//		HttpSession session = request.getSession();
//
//		if (action.equals("add")) {
//			if (session.getAttribute("cart") == null) {
//
//				List<Items> cart = new ArrayList<Items>();
//				Products product = productsRepository.findById(Integer.parseInt(request.getParameter("id")));
//				cart.add(new Items(product.getId(), product, 1, product.getPrice()));
//				session.setAttribute("cart", cart);
//
//			} else {
//				List<Items> cart = (List<Items>) session.getAttribute("cart");
//
//				int index = IsExisting.isExisting(Integer.parseInt(request.getParameter("id")), cart);
//
//				if (index == -1) {
//					Products product = productsRepository.findById(Integer.parseInt(request.getParameter("id")));
//					cart.add(new Items(product.getId(), product, 1, product.getPrice()));
//
//				} else {
//
//					int quantity = cart.get(index).getQuantity() + 1;
//					cart.get(index).setQuantity(quantity);
//
//				}
//				session.setAttribute("cart", cart);
//			}
//		} else if (action.equals("delete")) {
//			List<Items> cart = (List<Items>) session.getAttribute("cart");
//
//			int index = IsExisting.isExisting(Integer.parseInt(request.getParameter("id")), cart);
//			cart.remove(index);
//
//			session.setAttribute("cart", cart);
//
//			if (cart.size() == 0)
//				session.removeAttribute("cart");
//
//		}
//
//		return "add-to-cart-success";
//	}
}
