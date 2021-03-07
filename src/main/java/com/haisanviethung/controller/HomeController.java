package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.services.ProductServices;

@Controller
public class HomeController {

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

	@RequestMapping(value = { "/", "/trang-chu" }, method = { RequestMethod.GET })
	public String trangChu(final HttpServletRequest request, final HttpServletResponse response, final ModelMap model) {
		initCandP(model);
		model.addAttribute("product", productsRepository.findAll());
		model.addAttribute("mostProduct", productServices.findHotProducts());
		model.addAttribute("product1", productServices.findAllByNameCategory1());

		return "trang-chu";
	}

//	@SuppressWarnings("unchecked")
//	@GetMapping("/cart")
//	public String addToCart(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
//		initCandP(model);
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
//		return "redirect:/";
//	}

	@RequestMapping(value = { "/gioi-thieu-ve-hai-san-viet-hung" }, method = { RequestMethod.GET })
	public String gioiThieu(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model) {
		initCandP(model);
		return "gioi-thieu";
	}

}
