package com.haisanviethung;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CheckLoginUser {

	public static boolean Check(HttpServletRequest request) {

		HttpSession session = request.getSession();
		if (session.getAttribute("emailUser") != null) {
			return true;
		}
		return false;

	}
}
