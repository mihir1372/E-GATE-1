package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ChangeBean;
import com.bean.ForgotBean;
import com.bean.HouseBean;
import com.bean.LoginBean;
import com.bean.SearchBean;
import com.bean.SignUpBean;
import com.bean.UserBean;
import com.dao.ChartDao;
import com.dao.DashboardDao;
import com.dao.HouseDao;
import com.dao.UserDao;

@Controller
public class SessionController {

	@Autowired
	UserDao udao;

	@Autowired
	HouseDao hDao;

	@Autowired
	ChartDao cdao; 
	@GetMapping(value = { "/", "login" })
	public String Login() {
		return "Login";

	}

	@PostMapping("/authenticate")
	public String Authenticate(LoginBean login, Model model, HttpSession session) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());

		UserBean user = udao.LoginUser(login.getEmail(), login.getPassword());
		if (user == null) {
			model.addAttribute("message", "Invalid email or password");
			return "Login";
		} else {
			session.setAttribute("user", user);
			if (user.getRole().equals("USER")) {
				HouseBean house = hDao.getHouseDetailByUserId(user.getUserId());
				if (house != null)
					session.setAttribute("house", house);
				return "redirect:/home";
			} else if (user.getRole().equals("ADMIN")) {
				return "redirect:/dashboard";
			} else {
				return "redirect:/login";
			}
		}
	}

	@GetMapping("/forgot")
	public String Forgot() {
		return "ForgotPassword";
	}

	@PostMapping("/forget")
	public String ForgetPassword(ForgotBean forget) {
		System.out.println(forget.getEmail());
		return "Login";
	}

	@GetMapping("/change")
	public String ChangePassword() {
		return "ChangePassword";
	}

	@PostMapping("/changepassword")
	public String Change(ChangeBean change) {
		System.out.println(change.getEmail());
		System.out.println(change.getPassword());
		System.out.println(change.getOtp());

		return "Login";
	}

	@GetMapping("/signup")
	public String Signup() {
		return "SignUp";
	}

	@PostMapping("/signin")
	public String Sign(SignUpBean signup) {
		System.out.println(signup.getFirstname());
		System.out.println(signup.getLastname());
		System.out.println(signup.getGender());
		System.out.println(signup.getEmail());
		System.out.println(signup.getPassword());
		System.out.println(signup.getDob());
		signup.setRole("USER");
		udao.addUser(signup);
		return "redirect:/login";

	}

	@GetMapping("/users")
	public String getAllUsers(Model model) {

		List<UserBean> users = udao.getAllUsers();

		model.addAttribute("users", users);

		return "ListUser";
	}

	@GetMapping("/deleteuser")
	public String DeleteUser(@RequestParam("userId") Integer userid) {

		udao.DeleteUser(userid);
		return "redirect:/users";
	}

	@GetMapping("/viewuser")
	public String ViewUser(@RequestParam("userId") Integer userid, Model model) {

		UserBean user = udao.ViewUser(userid);
		model.addAttribute("user", user);
		return "ViewUser";
	}

	@GetMapping("/search")
	public String Search() {
		return "Search";
	}

	@PostMapping("/searched")
	public String Searched(SearchBean search, Model model) {
		System.out.println(search.getName());

		List<UserBean> users = udao.getAllSearchUsers(search);

		model.addAttribute("users", users);
		return "PrintSearch";
	}

	@Autowired
	DashboardDao dd;

	@GetMapping("/dashboard")
	public String home1(Model model) {
		model.addAttribute("totalGuest", dd.monthGuestCount());
		model.addAttribute("visitedGuest", dd.visitedGuestCount());
		model.addAttribute("thismonthGuest",dd.thisMonthGuestCount());
		model.addAttribute("chartdata",cdao.getchart());
		return "Dashboard";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();//destroy 
		return "redirect:/login";
	}

}
