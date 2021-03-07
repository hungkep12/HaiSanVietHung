package com.haisanviethung.controller.admin;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

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

import com.haisanviethung.entities.Posts;
import com.haisanviethung.repositories.PostsRepository;

@Controller
@RequestMapping(value = "/admin/posts")
public class AdminPostsController {

	@Autowired
	private PostsRepository postsRepository;

	@GetMapping("")
	public String showPosts(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("posts", postsRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/posts";
	}

//	Thêm bài viết
	@GetMapping("/add")
	public String addPost(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("post", new Posts());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/add_post";
	}

	@PostMapping("/add_post")
	public String addPostp(@ModelAttribute("post") Posts post, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		Date input = new Date();
		LocalDate date = input.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		post.setDate(date);
		postsRepository.save(post);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/posts";
	}

//	Hết thêm bài viết

//	Sửa bài viết
	@GetMapping("/{postId}")
	public String editPost(@PathVariable int postId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("post", postsRepository.getOne(postId));
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_post";
	}

	@PostMapping("/edit_post")
	public String editPostp(@ModelAttribute("post") Posts post, final HttpServletRequest request,
			final ModelMap model) {
		HttpSession session = request.getSession();
		postsRepository.save(post);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/posts";
	}

//	Hết sửa bài viết

//	Xóa bài viết
	@GetMapping("/delete/{postId}")
	public String deletePost(@PathVariable int postId, final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		postsRepository.deleteById(postId);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/posts";
	}
}
