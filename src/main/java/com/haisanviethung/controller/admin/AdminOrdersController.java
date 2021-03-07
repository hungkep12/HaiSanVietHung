package com.haisanviethung.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haisanviethung.entities.Items;
import com.haisanviethung.entities.Orders;
import com.haisanviethung.entities.Products;
import com.haisanviethung.repositories.ItemsRepository;
import com.haisanviethung.repositories.OrdersRepository;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.services.OrderServices;
import com.haisanviethung.services.ProductServices;

@Controller
@RequestMapping(value = "/admin/orders")
public class AdminOrdersController {

	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private ItemsRepository itemsRepository;

	@Autowired
	private OrderServices orderServices;

	@Autowired
	private ProductServices productServices;

	@Autowired
	private ProductsRepository productsRepository;

	@GetMapping("")
	public String showOrders(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("orders", ordersRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/orders";
	}

	@GetMapping("/processing")
	public String showOrdersProcessing(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("processing", ordersRepository.getProcessingOrders());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/orders_processing";
	}

	@GetMapping("/{orderId}")
	public String showItems(@PathVariable int orderId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();

		model.addAttribute("items", itemsRepository.findByIdOrder(orderId));

		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/items";
	}

//	Sửa trạng thái đơn hàng
	@GetMapping("/edit/{orderId}")
	public String editProduct(@PathVariable int orderId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		Orders order = ordersRepository.getOne(orderId);
		model.addAttribute("order", order);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_stt_order";
	}

	@PostMapping("/edit_order")
	public String editProductPost(@ModelAttribute("order") Orders order, final HttpServletRequest request,
			final ModelMap model) {
		HttpSession session = request.getSession();
		List<Products> products = productsRepository.findAll();
		List<Items> items = itemsRepository.findByIdOrder(order.getId());		
		final int crStt = order.getStt();

		if (crStt == 0 || crStt == 2) {
			orderServices.updateSttForOrder(order.getNewStt(), order.getId());
			if (order.getNewStt() == 1) {
				for (Products p : products) {
					for (Items i : items) {
						if (i.getProducts().getId() == p.getId()) {
							productServices.updateQuantityProduct(p.getQuantity() - i.getQuantity(), p.getId());
						}
					}
				}
			}

		} else if (crStt == 1) {
			orderServices.updateSttForOrder(order.getNewStt(), order.getId());
			if (order.getNewStt() == 0 || order.getNewStt() == 2) {
				for (Products p : products) {
					for (Items i : items) {
						if (i.getProducts().getId() == p.getId()) {
							productServices.updateQuantityProduct(p.getQuantity() + i.getQuantity(), p.getId());
						}
					}
				}
			}
		}

		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/orders";
	}

//	Hết trạng thái đơn hàng

}
