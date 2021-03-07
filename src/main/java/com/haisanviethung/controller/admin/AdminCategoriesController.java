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
import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.services.CategoryServices;

@Controller
@RequestMapping(value = "/admin/categories")
public class AdminCategoriesController {

	@Autowired
	private CategoriesRepository categoriesRepository;

	@Autowired
	CategoryServices categoryServices;

	@Value("${file.upload.path}")
	private String URL;

	@GetMapping("")
	public String showCategories(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("categories", categoriesRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/categories";
	}

//	Thêm danh mục sản phẩm
	@GetMapping("/add")
	public String addCategory(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("categories", new Categories());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/add_category";
	}

	@PostMapping("/add_category")
	public String addCategoryPost(final HttpServletRequest request, final ModelMap model,
			@ModelAttribute("categories") Categories category, @RequestParam("icon") MultipartFile icon)
			throws IllegalStateException, IOException {

		if (icon != null && icon.getSize() > 0) {

			int pos = URL.lastIndexOf("/META-INF/");
			String url = URL.substring(pos + 10);
			url += "/";
			url += icon.getOriginalFilename();
			category.setImage(url);

			icon.transferTo(new File(URL + "/" + icon.getOriginalFilename()));
		}

		categoriesRepository.save(category);
		HttpSession session = request.getSession();
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/categories";
	}
//	Hết thêm danh mục sản phẩm

//	Sửa danh mục sản phẩm
	@GetMapping("/{categoryId}")
	public String editProduct(@PathVariable int categoryId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();

		model.addAttribute("category", categoriesRepository.getOne(categoryId));
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_category";
	}

	@PostMapping("/edit_category")
	public String editProductPost(@ModelAttribute("category") Categories category, final HttpServletRequest request,
			final ModelMap model, @RequestParam("icon") MultipartFile icon) throws IllegalStateException, IOException {
		if (icon != null && icon.getSize() > 0) {

			int pos = URL.lastIndexOf("/META-INF/");
			String url = URL.substring(pos + 10);
			url += "/";
			url += icon.getOriginalFilename();
			icon.transferTo(new File(URL + "/" + icon.getOriginalFilename()));
			categoryServices.updateCategoryWithImg(url, category.getNameCategory(), category.getId());
		} else {
			categoryServices.updateCategoryWithoutImg(category.getNameCategory(), category.getId());
		}

		HttpSession session = request.getSession();

		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/categories";
	}

//	Hết sửa sản phẩm

//	Xóa sản phẩm
	@RequestMapping(value = { "/delete/{categoryId}" }, method = { RequestMethod.GET })
	public String deleteProduct(@PathVariable int categoryId, final ModelMap model, final HttpServletRequest request) {
		HttpSession session = request.getSession();
		categoriesRepository.deleteById(categoryId);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/categories";
	}

}
