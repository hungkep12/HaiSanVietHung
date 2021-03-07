package com.haisanviethung.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.entities.Admins;
import com.haisanviethung.repositories.OrdersRepository;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.repositories.ReviewProductRepository;
import com.haisanviethung.repositories.UsersRepository;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	@Autowired
	private ReviewProductRepository reviewProductRepository;

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private ProductsRepository productsRepository;

	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String logInAdminView(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("loginAdmin", new Admins());
		model.addAttribute("revenue", ordersRepository.getRevenueMonthly());
		if (session.getAttribute("emailAdmin") != null)
			return "admin/index";
		else
			return "admin/login";
	}

	@GetMapping("/hot")
	public String hotProducts(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("mostProduct", productsRepository.findProductSold());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/hot";
	}

	@GetMapping("/review_products")
	public String showComment(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("comment", reviewProductRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/review_products";
	}

//	Xóa đánh giá
	@RequestMapping(value = { "/review_products/delete/{commentId}" }, method = { RequestMethod.GET })
	public String deleteCmt(@PathVariable int commentId, final ModelMap model, final HttpServletRequest request) {
		HttpSession session = request.getSession();
		reviewProductRepository.deleteById(commentId);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/review_products";
	}

	@GetMapping("/users-account")
	public String showUsAcc(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("users", usersRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/users-account";
	}

//	Xóa người dùng
	@GetMapping("/users-account/delete/{userId}")
	public String deleteUser(@PathVariable int userId, final ModelMap model, final HttpServletRequest request) {
		HttpSession session = request.getSession();
		usersRepository.deleteById(userId);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/users-account";
	}

}
