package com.haisanviethung.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.IsExisting;
import com.haisanviethung.entities.Items;
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

//	@SuppressWarnings("unchecked")
//	@RequestMapping(value = { "/cart" }, method = { RequestMethod.GET })
//	public String addToCart4(final ModelMap model, HttpServletRequest request, HttpServletResponse response) {
//		model.addAttribute("category", categoriesRepository.findAll());
//		model.addAttribute("policies", postsRepository.findTitlePost("chính sách"));
//
//		String action = request.getParameter("action");
//		HttpSession session = request.getSession();
//
//		if (action.equals("delete")) {
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
//		return "gio-hang";
//	}

//	@SuppressWarnings("unchecked")
//	@PostMapping("/cart")
//	public String updateCart(Model model, HttpServletRequest request, HttpServletResponse response) {
//		String action = request.getParameter("action");
//		HttpSession session = request.getSession();
//		if (action.equals("update")) {
//			List<Items> cart = (List<Items>) session.getAttribute("cart");
//			String[] quantity = request.getParameterValues("quantity");
//			for (int i = 0; i < cart.size(); i++) {
//				cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
//			}
//			session.setAttribute("cart", cart);
//		}
//
//		return "gio-hang";
//	}

}
