package com.haisanviethung.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.entities.Admins;
import com.haisanviethung.entities.Orders;
import com.haisanviethung.repositories.AdminsRepository;
import com.haisanviethung.repositories.OrdersRepository;
import com.haisanviethung.services.AdminServices;

@Controller
public class LoginAdminController {

	@Autowired
	private AdminsRepository adminsRepository;

	@Autowired
	private AdminServices adminServices;

	@PostMapping("/login")
	public String logInAdmin(@ModelAttribute("loginAdmin") Admins admin, ModelMap model,
			final HttpServletRequest request) {

		List<Admins> admins = adminsRepository.findAll();
		for (int i = 0; i < admins.size(); i++) {
			if (admin.getEmail().equals(admins.get(i).getEmail())
					&& admin.getPassword().equals(admins.get(i).getPassword())) {
				int id = admins.get(i).getId();
				HttpSession session = request.getSession(true);
				adminServices.updateStatusForId(true, id);
				session.setAttribute("emailAdmin", admins.get(i).getEmail());
				session.setAttribute("idAdmin", admins.get(i).getId());
				session.setAttribute("username", admins.get(i).getUsername());
				System.out.println(session.getAttribute("idAdmin"));
				return "redirect:/admin";
			} else {
				if (i == admins.size() - 1) {
					model.addAttribute("status", "wrong");
					return "admin/login";
				}
			}
		}
		return "admin/index";

	}

	@GetMapping(value = "/admin/logout")
	public String logOut(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("emailAdmin") != null) {
			int id = (int) session.getAttribute("idAdmin");
			adminServices.updateStatusForId(false, id);
			session.removeAttribute("emailAdmin");
			session.removeAttribute("idAdmin");
			session.removeAttribute("username");
			return "redirect:/admin";
		}
		return "redirect:/admin";
	}
}
