package com.haisanviethung.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.IsExisting;
import com.haisanviethung.entities.Items;
import com.haisanviethung.entities.Products;
import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.ImageProductsRepository;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.repositories.ReviewProductRepository;
import com.haisanviethung.services.ProductServices;
import com.haisanviethung.services.ReviewProductServices;

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

		model.addAttribute("product", productsRepository.findAll());
		model.addAttribute("productByName", productsRepository.findByNameProductLike(nameProduct));
		model.addAttribute("imageProducts", imageProductsRepository.findImageProductById(idProduct));
		model.addAttribute("idImageProducts", imageProductsRepository.findIdImageProduct(nameProduct));

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

//	@GetMapping("/cart")
//	public String addToCart3(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
//		initCandP(model);
//		;
//		model.addAttribute("product", productsRepository.findAll());
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
//		return "cua-hang";
//	}

//	@PostMapping("/{nameProduct}/cart")
//	public String addToCart5(@PathVariable String nameProduct, ModelMap model, HttpServletRequest request,
//			HttpServletResponse response) {
//		initCandP(model);
//		HttpSession session = request.getSession();
//		int idProduct = productsRepository.findIdByNameProduct(nameProduct);
//
//		int id = productsRepository.findIdByNameProduct(nameProduct);
//
//		model.addAttribute("product", productsRepository.findAll());
//		model.addAttribute("productByName", productsRepository.findByNameProductLike(nameProduct));
//		model.addAttribute("imageProducts", imageProductsRepository.findImageProductById(id));
//		model.addAttribute("idImageProducts", imageProductsRepository.findIdImageProduct(nameProduct));
//
//		model.addAttribute("countComment", reviewProductRepository.countCommentOfProduct(idProduct));
//		model.addAttribute("comment", reviewProductRepository.findByProducts(idProduct));
//		try {
//			int idUser = (Integer) session.getAttribute("idUser");
//			model.addAttribute("userComment", reviewProductRepository.countCommentUserAtProducts(idProduct, idUser));
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//
//		String action = request.getParameter("action");
//		String quantity = request.getParameter("quantity");
//
//		if (action.equals("add")) {
//			if (session.getAttribute("cart") == null) {
//
//				List<Items> cart = new ArrayList<Items>();
//				Products product = productsRepository.findById(Integer.parseInt(request.getParameter("id")));
//				cart.add(new Items(product.getId(), product, Integer.parseInt(quantity), product.getPrice()));
//				session.setAttribute("cart", cart);
//
//			} else {
//				List<Items> cart = (List<Items>) session.getAttribute("cart");
//
//				int index = IsExisting.isExisting(Integer.parseInt(request.getParameter("id")), cart);
//
//				if (index == -1) {
//					Products product = productsRepository.findById(Integer.parseInt(request.getParameter("id")));
//					cart.add(new Items(product.getId(), product, Integer.parseInt(quantity), product.getPrice()));
//
//				} else {
//
//					int quantity2 = cart.get(index).getQuantity() + Integer.parseInt(quantity);
//					cart.get(index).setQuantity(quantity2);
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
//		try {
//			double star = reviewProductRepository.avgRatingProduct(idProduct);
//			model.addAttribute("star", star);
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		return "san-pham";
//	}

//	@PostMapping("/{nameProduct}/add-comment")
//	public String saveComment(@PathVariable String nameProduct,
//			@ModelAttribute("addComment") ReviewProduct reviewProduct, ModelMap model, HttpServletRequest request,
//			HttpServletResponse response) {
//		initCandP(model);
//
//		HttpSession session = request.getSession();
//		int idProduct = productsRepository.findIdByNameProduct(nameProduct);
//		int idUser = (Integer) session.getAttribute("idUser");
//		
//		if (session.getAttribute("emailUser") != null) {
//			reviewProductServices.insertComment(reviewProduct.getComment(), reviewProduct.getRating(), idProduct,
//					idUser);
//		}
//
//		model.addAttribute("productByName", productsRepository.findByNameProductLike(nameProduct));
//		model.addAttribute("imageProducts", imageProductsRepository.findImageProductById(idProduct));
//		model.addAttribute("idImageProducts", imageProductsRepository.findIdImageProduct(nameProduct));
//
//		model.addAttribute("countComment", reviewProductRepository.countCommentOfProduct(idProduct));
//		model.addAttribute("comment", reviewProductRepository.findByProducts(idProduct));
//		if (session.getAttribute("idUser") != null) {
//
//			model.addAttribute("userComment", reviewProductRepository.countCommentUserAtProducts(idProduct, idUser));
//		}
//		try {
//			double star = reviewProductRepository.avgRatingProduct(idProduct);
//			model.addAttribute("star", star);
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//
//		return "san-pham";
//	}
}
