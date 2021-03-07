package com.haisanviethung.controller.admin;

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

import com.haisanviethung.entities.Admins;
import com.haisanviethung.repositories.AdminsRepository;
import com.haisanviethung.services.AdminServices;

@Controller
@RequestMapping(value = "/admin/admins-account")
public class AdminAccountController {

	@Autowired
	private AdminsRepository adminsRepository;

	@Autowired
	private AdminServices adminServices;

	@GetMapping("")
	public String showAdmAcc(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("admins", adminsRepository.findAll());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/admins-account";
	}

//	Thêm tài khoản
	@GetMapping("/add")
	public String addAdmin(final HttpServletRequest request, final ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("admin", new Admins());
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/add_admin";
	}

	@PostMapping("/add_admin")
	public String addAdminPost(@ModelAttribute("admin") Admins admin, final HttpServletRequest request,
			final ModelMap model) {
		HttpSession session = request.getSession();
		admin.setStt(false);
		adminsRepository.save(admin);
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/admins-account";
	}

//	Hết thêm tài khoản

//	Sửa tài khoản
	@GetMapping("/{adminId}")
	public String editAdmin(final HttpServletRequest request, final ModelMap model, @PathVariable int adminId) {
		HttpSession session = request.getSession();
		model.addAttribute("admin", adminsRepository.getOne(adminId));
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		if ((Integer) session.getAttribute("idAdmin") != adminId)
			return "redirect:/admin/admins-account/" + (Integer) session.getAttribute("idAdmin");
		return "admin/form_validation/edit_admin";
	}

	@PostMapping("/edit_admin")
	public String editAdminPost(final HttpServletRequest request, final ModelMap model,
			@ModelAttribute("admin") Admins admin) {
		HttpSession session = request.getSession();
		Boolean check = false;
		int adminId = (Integer) session.getAttribute("idAdmin");
		Admins a = adminsRepository.getOne(adminId);
		try {
			if (admin.getPassword().equals("")) {
				adminServices.updateAdminWithoutPassword(admin.getEmail(), admin.getUsername(), admin.getId());
				check = true;
				model.addAttribute("stt", "success");
			} else {
				if (admin.getPassword().equals(a.getPassword())) {
					adminServices.updateAdminWithPassword(admin.getEmail(), admin.getNewPassword(), admin.getUsername(),
							admin.getId());
					check = true;
					model.addAttribute("stt", "success");
				} else {
					model.addAttribute("stt", "wrong");
				}

			}
		} catch (Exception e) {
			model.addAttribute("stt", "fail");
		}

		if (check) {
			session.setAttribute("emailAdmin", admin.getEmail());
			session.setAttribute("username", admin.getUsername());
		}
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "admin/form_validation/edit_admin";
	}
//	Hết sửa tài khoản

//	Xóa tài khoản
	@GetMapping("/delete/{adminId}")
	public String deleteadmin(@PathVariable int adminId, final ModelMap model, final HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (adminId != 1) {
			adminsRepository.deleteById(adminId);
		}
		if (session.getAttribute("emailAdmin") == null)
			return "redirect:/admin";
		else
			return "redirect:/admin/admins-account";
	}
}
