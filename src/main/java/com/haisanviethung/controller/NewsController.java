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
@RequestMapping(value = { "/tin-tuc" }, method = { RequestMethod.GET })
public class NewsController {

	@Autowired
	private PostsRepository postsRepository;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@RequestMapping(value = { "" }, method = { RequestMethod.GET })
	public String tinTuc(final HttpServletRequest request, final HttpServletResponse response, final ModelMap model) {
		initCandP(model);
		model.addAttribute("news", postsRepository.findTitlePost("tin tức"));
		return "tin-tuc";
	}

	@RequestMapping(value = { "/{title}" }, method = { RequestMethod.GET })
	public String chiTietTinTuc(@PathVariable String title, final HttpServletRequest request,
			final HttpServletResponse response, final ModelMap model) {
		initCandP(model);
		model.addAttribute("newsByTitle", postsRepository.findByTitleAndType(title, "tin tức"));

		return "chi-tiet-tin-tuc";
	}
}
