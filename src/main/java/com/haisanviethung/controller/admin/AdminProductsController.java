package com.haisanviethung.controller.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.haisanviethung.entities.Categories;
import com.haisanviethung.entities.ImageProducts;
import com.haisanviethung.entities.Products;
import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.repositories.ImageProductsRepository;
import com.haisanviethung.repositories.ProductsRepository;
import com.haisanviethung.services.ImageProductsServices;

@Controller
@RequestMapping(value = "/admin/products")
public class AdminProductsController {

	@Autowired
	private ProductsRepository productsRepository;

	@Autowired
	private CategoriesRepository categoriesRepository;

	@Autowired
	private ImageProductsRepository imageProductsRepository;

	@Autowired
	private ImageProductsServices imageProductsServices;

	@Value("${file.upload.path}")
	private String URL;

	@GetMapping("")
	public String showProducts(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("products", productsRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/products";
	}

//	Thêm sản phẩm
	@GetMapping("/add")
	public String addProduct(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("product", new Products());
		model.addAttribute("categories", categoriesRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/add_product";
	}

	@PostMapping("/add_product")
	public String addProductPost(final HttpServletRequest request, final ModelMap model,
			@ModelAttribute("product") Products product, @RequestParam("productImg") MultipartFile[] productImg)
			throws IllegalStateException, IOException {

		if (productImg != null && productImg.length > 0) {
			for (MultipartFile multipartFile : productImg) {
				if (multipartFile.getSize() <= 0)
					continue;
				ImageProducts imageProducts = new ImageProducts();
				int pos = URL.lastIndexOf("/META-INF/");
				String url = URL.substring(pos + 10);
				url += "/";
				url += multipartFile.getOriginalFilename();
				imageProducts.setURL(url);
				product.addImageProduct(imageProducts);

				multipartFile.transferTo(new File(URL + "/" + multipartFile.getOriginalFilename()));
			}

		}
		Categories category = categoriesRepository.getOne(product.getCategory().getId());
		product.setCategory(category);
		productsRepository.save(product);
		HttpSession session = request.getSession();
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products";
	}
//	Hết thêm sản phẩm

//	Sửa sản phẩm
	@GetMapping("/{productId}")
	public String editProduct(@PathVariable int productId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("images", imageProductsRepository.findImageProductById(productId));
		model.addAttribute("product", productsRepository.getOne(productId));
		model.addAttribute("categories", categoriesRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_product";
	}

	@PostMapping("/edit_product")
	public String editProductPost(@ModelAttribute("product") Products product, final HttpServletRequest request,
			final ModelMap model) {
		HttpSession session = request.getSession();
		productsRepository.save(product);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products";
	}

//	Hết sửa sản phẩm

//	Xóa sản phẩm
	@RequestMapping(value = { "/delete/{productId}" }, method = { RequestMethod.GET })
	public String deleteProduct(@PathVariable int productId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		HttpSession session = request.getSession();
		productsRepository.deleteById(productId);
		imageProductsServices.deleteImgByIdProduct(productId);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products";
	}

//	Thêm ảnh sản phẩm
	@GetMapping("/{productId}/image/add")
	public String addImgProduct(@PathVariable int productId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		Products product = productsRepository.getOne(productId);
		model.addAttribute("product", product);
		model.addAttribute("image", new ImageProducts());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/add_image_product";
	}

	@PostMapping("/{productId}/add_image")
	public String addImgProductPost(@PathVariable int productId, final HttpServletRequest request, final ModelMap model,
			@RequestParam("productImg") MultipartFile[] productImg, @ModelAttribute("image") ImageProducts imageProduct)
			throws IllegalStateException, IOException {
		HttpSession session = request.getSession();
		Products product = productsRepository.getOne(productId);
		model.addAttribute("product", product);

		if (productImg != null && productImg.length > 0) {
			for (MultipartFile multipartFile : productImg) {
				if (multipartFile.getSize() <= 0)
					continue;
				int pos = URL.lastIndexOf("/META-INF/");
				String url = URL.substring(pos + 10);
				url += "/";
				url += multipartFile.getOriginalFilename();

				multipartFile.transferTo(new File(URL + "/" + multipartFile.getOriginalFilename()));
				imageProductsServices.insertImg(url, product.getId());
			}

		}

		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products/" + productId;
	}
//	Hết thêm ảnh sản phẩm

//	Sửa ảnh sản phẩm
	@GetMapping("/{productId}/image/{imageProductId}")
	public String editImgProduct(@PathVariable int productId, @PathVariable int imageProductId,
			final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("image", imageProductsRepository.getOne(imageProductId));
		model.addAttribute("product", productsRepository.getOne(productId));
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_image_product";
	}

	@PostMapping("/{productId}/edit_image")
	public String editImgProductPost(@PathVariable int productId, final HttpServletRequest request,
			final ModelMap model, @ModelAttribute("image") ImageProducts imageProduct,
			@RequestParam("productImg") MultipartFile productImg) throws IllegalStateException, IOException {
		Products product = productsRepository.getOne(productId);
		HttpSession session = request.getSession();
		if (productImg != null && productImg.getSize() > 0) {
			int pos = URL.lastIndexOf("/META-INF/");
			String url = URL.substring(pos + 10);
			url += "/";
			url += productImg.getOriginalFilename();
			imageProduct.setURL(url);

			productImg.transferTo(new File(URL + "/" + productImg.getOriginalFilename()));
		}
		imageProduct.setProduct(product);
		imageProductsRepository.save(imageProduct);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products/" + productId;
	}
//	Hết sửa ảnh sản phẩm

//	Xóa ảnh sản phẩm
	@RequestMapping(value = { "/{productId}/delete/{imageProductId}" }, method = { RequestMethod.GET })
	public String deleteImgProduct(@PathVariable int productId, @PathVariable int imageProductId, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		HttpSession session = request.getSession();
		imageProductsServices.deleteImgById(imageProductId);
		
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/products/" + productId;
	}
}
