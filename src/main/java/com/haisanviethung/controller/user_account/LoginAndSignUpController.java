package com.haisanviethung.controller.user_account;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.CheckLoginUser;
import com.haisanviethung.entities.Users;
import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.UsersRepository;
import com.haisanviethung.services.UserServices;

@Controller
public class LoginAndSignUpController {

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private UserServices userServices;

	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@RequestMapping(value = "/tai-khoan", method = { RequestMethod.GET })
	public String logInView(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model) {
		HttpSession session = request.getSession();
		initCandP(model);
		if (session.getAttribute("emailUser") != null)
			return "user_account/tai-khoan";
		else {
			model.addAttribute("login", new Users());
			return "user_account/dang-nhap";
		}

	}

	@PostMapping(value = "/DangNhap")
	public String logIn(@ModelAttribute("login") Users user, ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		List<Users> users = usersRepository.findAll();
		initCandP(model);
		for (int i = 0; i < users.size(); i++) {
			if (user.getEmail().equals(users.get(i).getEmail())
					&& user.getPassword().equals(users.get(i).getPassword())) {
				int id = users.get(i).getId();
				HttpSession session = request.getSession(true);
				userServices.updateStatusForId(true, id);
				session.setAttribute("idUser", id);
				session.setAttribute("displayNameUser", users.get(i).getDisplayName().toString());
				session.setAttribute("emailUser", users.get(i).getEmail().toString());
				try {
					session.setAttribute("fName", users.get(i).getfName().toString());
					session.setAttribute("lName", users.get(i).getlName().toString());
				} catch (Exception e) {
					return "redirect:/";
				}
				if (request.getParameter("rememberme") != null) {
					Cookie ckEmail = new Cookie("ckEmail", users.get(i).getEmail());
					ckEmail.setMaxAge(3600);
					response.addCookie(ckEmail);
					Cookie ckPassword = new Cookie("ckPassword", users.get(i).getPassword());
					ckPassword.setMaxAge(3600);
					response.addCookie(ckPassword);
				}
				return "redirect:/";
			} else {
				if (users.size() - 1 == i) {
					model.addAttribute("status", "wrong");
					return "user_account/dang-nhap";
				}
			}
		}
		return "trang-chu";
	}

	@PostMapping(value = "/DangKy")
	public String signUp(@ModelAttribute("signUp") Users user, BindingResult result, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		user.setStt(false);
		user.setPassword(user.getPassword());
		String s = user.getEmail();
		int pos = s.lastIndexOf("@");
		String displayName = "";
		for (int i = 0; i < pos; i++) {
			displayName += s.charAt(i);
		}
		user.setDisplayName(displayName);
		user.setEmail(user.getEmail());

		if (!userServices.Insert(user)) {
			result.addError(new FieldError("user", "email", "Email đã tồn tại!"));
			return "redirect:/tai-khoan";
		}
		return "redirect:/";
	}

	@RequestMapping(value = { "/tai-khoan/customer-logout" }, method = { RequestMethod.GET })
	public String logOut(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (CheckLoginUser.Check(request)) {
			int id = (int) session.getAttribute("idUser");
			userServices.updateStatusForId(false, id);
			session.removeAttribute("idUser");
			session.removeAttribute("displayNameUser");
			session.removeAttribute("emailUser");
			if (session.getAttribute("fName") != null)
				session.removeAttribute("fName");
			if (session.getAttribute("lName") != null)
				session.removeAttribute("lName");
			return "redirect:/";
		}
		for (Cookie ck : request.getCookies()) {
			if (ck.getName().equalsIgnoreCase("email")) {
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
			if (ck.getName().equalsIgnoreCase("password")) {
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
		}
		return "redirect:/";
	}

	public Users checkCookie(final HttpServletRequest request) {
		Cookie cookies[] = request.getCookies();
		Users u = null;
		String email = "", password = "";
		for (Cookie ck : cookies) {
			if (ck.getName().equalsIgnoreCase("email"))
				email = ck.getValue();
			if (ck.getName().equalsIgnoreCase("password"))
				password = ck.getValue();
		}
		if (!email.isEmpty() && !password.isEmpty())
			u = new Users(email, password);
		return u;
	}

}
