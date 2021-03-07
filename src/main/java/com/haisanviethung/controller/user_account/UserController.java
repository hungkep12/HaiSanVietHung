package com.haisanviethung.controller.user_account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haisanviethung.entities.UserAddress;
import com.haisanviethung.entities.Users;
import com.haisanviethung.other.PoliciesAndCategories;
import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.repositories.ItemsRepository;
import com.haisanviethung.repositories.OrdersRepository;
import com.haisanviethung.repositories.PostsRepository;
import com.haisanviethung.repositories.UserAddressRepository;
import com.haisanviethung.repositories.UsersRepository;
import com.haisanviethung.services.UserAddressServices;
import com.haisanviethung.services.UserServices;

@Controller
@RequestMapping(value = "/tai-khoan")
public class UserController {

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private UserServices userServices;

	@Autowired
	private UserAddressRepository userAddressRepository;

	@Autowired
	private UserAddressServices userAddressServices;

	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private ItemsRepository itemsRepository;
	@Autowired
	private PoliciesAndCategories policiesAndCategories;

	private void initCandP(final ModelMap model) {
		model.addAttribute("category", policiesAndCategories.policiesAndCategories().getCategories());
		model.addAttribute("policies", policiesAndCategories.policiesAndCategories().getPosts());
	}

	@GetMapping(value = "/don-hang")
	public String orders(final ModelMap model, final HttpServletRequest request) {
		initCandP(model);

		try {
			HttpSession session = request.getSession();
			int idUser = (int) session.getAttribute("idUser");
			model.addAttribute("orderOfUser", ordersRepository.findByIdUser(idUser));
			model.addAttribute("countOrderOfUser", ordersRepository.countByIdUser(idUser));

		} catch (NullPointerException e) {
			return "redirect:/tai-khoan";
		}
		return "user_account/don-hang";

	}

	@GetMapping(value = "/view-order/{idOrder}")
	public String viewOrder(@PathVariable int idOrder, final ModelMap model, final HttpServletRequest request) {
		initCandP(model);

		try {
			HttpSession session = request.getSession();
			int idUser = (int) session.getAttribute("idUser");
			model.addAttribute("orderByid", ordersRepository.getOne(idOrder));
			model.addAttribute("itemByIdOrder", itemsRepository.findByIdOrder(idOrder));

		} catch (NullPointerException e) {
			return "redirect:/tai-khoan";
		}
		return "user_account/view-order";

	}

	@RequestMapping(value = "/edit-account/{displayName}", method = { RequestMethod.GET })
	public String editAccGet(final HttpServletRequest request, @PathVariable String displayName, final ModelMap model) {
		initCandP(model);
		try {
			HttpSession session = request.getSession();
			int id = (int) session.getAttribute("idUser");
			model.addAttribute("accountUser", usersRepository.getOne(id));
		} catch (NullPointerException e) {
			return "redirect:/tai-khoan";
		}
		return "user_account/edit-account";
	}

	@RequestMapping(value = "/edit-account", method = { RequestMethod.POST })
	public String editAccPost(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model, @ModelAttribute("accountUser") Users user) {

		HttpSession session = request.getSession();
		String displayName = (String) session.getAttribute("displayNameUser");
		Users u = usersRepository.findByDisplayName(displayName);
		Boolean check;
		try {
			if (user.getPassword().equals("")) {
				userServices.updateUserWithoutPassword(user.getDisplayName(), user.getEmail(), user.getfName(),
						user.getlName(), u.getId());
				check = true;
				model.addAttribute("status", "success");
			} else {
				if (u.getPassword().equals(user.getPassword())) {
					userServices.updateUserWithPassword(user.getDisplayName(), user.getEmail(), user.getfName(),
							user.getlName(), user.getNewPassword(), u.getId());
					check = true;
					model.addAttribute("status", "success");
				} else {
					model.addAttribute("status", "wrong");
					check = false;
				}

			}
		}

		catch (Exception e) {
			model.addAttribute("status", "fail");
			check = false;
		}

		if (check) {
			session.setAttribute("displayNameUser", user.getDisplayName());
			session.setAttribute("emailUser", user.getEmail());
			session.setAttribute("fName", user.getfName());
			session.setAttribute("lName", user.getlName());
		}

		if (session.getAttribute("displayNameUser") != null)
			return "user_account/edit-account";
		else
			return "redirect:/tai-khoan";
	}

	@GetMapping(value = "/edit-address/{displayName}")
	public String editAddressGet(final HttpServletRequest request, @PathVariable String displayName,
			final ModelMap model) {
		initCandP(model);

		try {
			HttpSession session = request.getSession();
			int id = (int) session.getAttribute("idUser");
			UserAddress u = userAddressRepository.findById(id);
			try {
				if (u.getAddress() != null || u.getPhone() != null) {
					model.addAttribute("addressUser", u);
				}

			} catch (NullPointerException e) {
				model.addAttribute("addressUser", new UserAddress());
			}

		} catch (NullPointerException e) {
			return "redirect:/tai-khoan";
		}
		return "user_account/edit-address";
	}

	@PostMapping(value = "/edit-address")
	public String editAddressPost(final HttpServletRequest request, final HttpServletResponse response,
			final ModelMap model, @ModelAttribute("addressUser") UserAddress userAddress) {
		HttpSession session = request.getSession();

		try {
			int id = (int) session.getAttribute("idUser");
			UserAddress u = userAddressRepository.findById(id);
			try {
				if (u.getAddress() != null || u.getPhone() != null) {
					if (userAddress.getPOSTCODE() == "") {
						userAddressServices.updateAddressWithoutPOSTCODE(userAddress.getAddress(),
								userAddress.getPhone(), id);

						model.addAttribute("status", "success");
					} else {
						userAddressServices.updateAddressWithPOSTCODE(userAddress.getPOSTCODE(),
								userAddress.getAddress(), userAddress.getPhone(), id);

						model.addAttribute("status", "success");
					}
				}

			} catch (NullPointerException e) {
				if (userAddress.getPOSTCODE() == "") {
					userAddressServices.insertAddressWithoutPOSTCODE(userAddress.getAddress(), userAddress.getPhone(),
							id);

					model.addAttribute("status", "success");
				} else {
					userAddressServices.insertAddressWithPOSTCODE(userAddress.getPOSTCODE(), userAddress.getAddress(),
							userAddress.getPhone(), id);

					model.addAttribute("status", "success");
				}
			}

		} catch (Exception e) {

			model.addAttribute("status", "fail");
		}
		if (session.getAttribute("displayNameUser") != null)
			return "user_account/edit-address";
		else
			return "redirect:/tai-khoan";
	}

}
