package com.haisanviethung.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.haisanviethung.entities.Items;
import com.haisanviethung.entities.Orders;
import com.haisanviethung.entities.Users;
import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ItemsRepository;
import com.haisanviethung.repositories.OrdersRepository;
import com.haisanviethung.repositories.UsersRepository;
import com.haisanviethung.services.ItemServices;

@Controller
public class PayController {

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private ItemServices itemServices;

	@Autowired
	private ItemsRepository itemsRepository;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@GetMapping("/thanh-toan")
	public String pay(final ModelMap model, final HttpServletRequest request) {
		HttpSession session = request.getSession();
		Orders order = new Orders();
		String displayName = (String) session.getAttribute("displayNameUser");
		if (displayName != null) {
			Users user = usersRepository.findByDisplayName(displayName);
			try {
				if (user.getUserAddress().getAddress() != null && user.getUserAddress().getPhone() != null) {
					order.setPhone(user.getUserAddress().getPhone());
					order.setAddress(user.getUserAddress().getAddress());
				}
			} catch (NullPointerException e) {
				order.setPhone("");
				order.setAddress("");
			}

			order.setEmail(user.getEmail());
			try {
				if (user.getfName() != null && user.getlName() != null) {
					order.setfName(user.getfName());
					order.setlName(user.getlName());
				}
			} catch (NullPointerException e) {
				order.setfName("");
				order.setlName("");
			}

		}
		model.addAttribute("pay", order);
		initCandP(model);

		return "thanh-toan";
	}

	@PostMapping("/thanh-toan/post")
	public String paySuccess(final ModelMap model, final HttpServletRequest request,
			@ModelAttribute("pay") Orders orders) {
		HttpSession session = request.getSession();
		initCandP(model);

		if (session.getAttribute("cart") == null) {
			return "order-failed";
		} else {
			List<Items> cart = (List<Items>) session.getAttribute("cart");
			String displayName = (String) session.getAttribute("displayNameUser");
			if (displayName != null) {
				Date dateOrder = new Date();
				Users user = usersRepository.findByDisplayName(displayName);
				orders.setUser(user);
				orders.setStt(0);
				orders.setDateOrder(dateOrder);
				ordersRepository.save(orders);
				long s = 0;
				for (int i = 0; i < cart.size(); i++) {
					itemServices.insertItem(cart.get(i).getPrice(), cart.get(i).getQuantity(), orders.getId(),
							cart.get(i).getProducts().getId());
					s += cart.get(i).getPrice() * cart.get(i).getQuantity();
				}
				session.removeAttribute("cart");
				orders.setTotal(s);
				ordersRepository.save(orders);
				model.addAttribute("listItem", itemsRepository.findByIdOrder(orders.getId()));
				model.addAttribute("order", ordersRepository.findByMaxId());
			} else {
				Date dateOrder = new Date();
				orders.setStt(0);
				orders.setDateOrder(dateOrder);
				ordersRepository.save(orders);
				long s = 0;
				for (int i = 0; i < cart.size(); i++) {

					itemServices.insertItem(cart.get(i).getPrice(), cart.get(i).getQuantity(), orders.getId(),
							cart.get(i).getProducts().getId());
					s += cart.get(i).getPrice() * cart.get(i).getQuantity();
				}
				session.removeAttribute("cart");
				orders.setTotal(s);
				ordersRepository.save(orders);
				model.addAttribute("listItem", itemsRepository.findByIdOrder(orders.getId()));
				model.addAttribute("order", ordersRepository.findByMaxId());
			}
			return "order-received";
		}

	}
}
