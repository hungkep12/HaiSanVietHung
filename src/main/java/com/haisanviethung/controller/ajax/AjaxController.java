package com.haisanviethung.controller.ajax;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.haisanviethung.IsExisting;
import com.haisanviethung.entities.Items;
import com.haisanviethung.entities.Products;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.repositories.ReviewProductRepository;
import com.haisanviethung.services.ProductServices;
import com.haisanviethung.services.ReviewProductServices;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Autowired
	private ProductServices productServices;

	@Autowired
	private ReviewProductRepository reviewProductRepository;

	@Autowired
	private ProductsRepository productsRepository;

	@Autowired
	private ReviewProductServices reviewProductServices;

	@RequestMapping(value = "/living-search", method = { RequestMethod.GET })
	public String livingSearch(ModelMap model,
			@RequestParam(defaultValue = "cxvxczgbfdgfdgdfghfd") String nameProduct) {
		model.addAttribute("productSearched", productServices.findByNameProductLike("%" + nameProduct + "%"));
		return "ajax/living-search";
	}

	@RequestMapping(value = "/add-comment", method = { RequestMethod.POST })
	public String addComment(ModelMap model, @RequestParam(name = "nameProduct") String nameProduct,
			@RequestParam(name = "rating", required = false) Integer rating,
			@RequestParam(name = "comment", required = false) String comment, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int idProduct = productsRepository.findIdByNameProduct(nameProduct);
		int idUser = (Integer) session.getAttribute("idUser");
		if (session.getAttribute("emailUser") != null) {
			if (rating != null && comment != null) {
				reviewProductServices.insertComment(comment, rating, idProduct, idUser);
			}

		}
		model.addAttribute("comment", reviewProductRepository.findByProducts(idProduct));
		model.addAttribute("countComment", reviewProductRepository.countCommentOfProduct(idProduct));
		model.addAttribute("nameProduct", nameProduct);
		if (session.getAttribute("idUser") != null) {
			model.addAttribute("userComment", reviewProductRepository.countCommentUserAtProducts(idProduct, idUser));
		}
		return "ajax/add-comment";
	}

	@RequestMapping(value = "/cart", method = { RequestMethod.GET })
	public String addToCart(ModelMap model, HttpServletRequest request, @RequestParam(name = "id") int id) {
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {

			List<Items> cart = new ArrayList<Items>();
			Products product = productsRepository.findById(id);
			cart.add(new Items(product.getId(), product, 1, product.getPrice()));
			session.setAttribute("cart", cart);

		} else {
			List<Items> cart = (List<Items>) session.getAttribute("cart");

			int index = IsExisting.isExisting(id, cart);

			if (index == -1) {
				Products product = productsRepository.findById(id);
				cart.add(new Items(product.getId(), product, 1, product.getPrice()));

			} else {

				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);

			}
			session.setAttribute("cart", cart);
		}
		return "ajax/add-to-cart";
	}

	@RequestMapping(value = "/remove-cart", method = { RequestMethod.GET })
	public String removeFromCart(ModelMap model, HttpServletRequest request, @RequestParam(name = "id") int id) {
		HttpSession session = request.getSession();
		List<Items> cart = (List<Items>) session.getAttribute("cart");

		int index = IsExisting.isExisting(id, cart);
		cart.remove(index);

		session.setAttribute("cart", cart);

		if (cart.size() == 0)
			session.removeAttribute("cart");
		return "ajax/remove-from-cart";
	}

	@PostMapping("/update-cart")
	public String updateCart(ModelMap model, HttpServletRequest request,
			@RequestParam(value="quantity[]") Integer[] quantity) {
		HttpSession session = request.getSession();
		List<Items> cart = (List<Items>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			cart.get(i).setQuantity(quantity[i]);
		}
		session.setAttribute("cart", cart);

		return "ajax/update-cart";
	}

	@PostMapping("/add-to-cart2")
	public String addMultipleProductsToCart(ModelMap model, HttpServletRequest request,
			@RequestParam(name = "quantity") Integer quantity, @RequestParam(name = "id") int id) {
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {

			List<Items> cart = new ArrayList<Items>();
			Products product = productsRepository.findById(id);
			cart.add(new Items(product.getId(), product, quantity, product.getPrice()));
			session.setAttribute("cart", cart);

		} else {
			List<Items> cart = (List<Items>) session.getAttribute("cart");

			int index = IsExisting.isExisting(id, cart);

			if (index == -1) {
				Products product = productsRepository.findById(id);
				cart.add(new Items(product.getId(), product, quantity, product.getPrice()));

			} else {

				int quantity2 = cart.get(index).getQuantity() + quantity;
				cart.get(index).setQuantity(quantity2);

			}
			session.setAttribute("cart", cart);
		}
		return "ajax/add-to-cart";
	}
}
