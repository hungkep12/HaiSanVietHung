package com.haisanviethung.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.PostsRepository;

@Controller
@RequestMapping(value = { "/chinh-sach" }, method = { RequestMethod.GET })
public class PoliciesController {

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	@Autowired
	private PostsRepository postsRepository;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@RequestMapping(value = { "/{title}" }, method = { RequestMethod.GET })
	public String chinhSach(@PathVariable String title, final HttpServletRequest request,
			final HttpServletResponse response, final ModelMap model) {

		initCandP(model);

		model.addAttribute("policiesByTitle", postsRepository.findByTitleAndType(title, "chính sách"));

		return "chinh-sach";
	}
}
