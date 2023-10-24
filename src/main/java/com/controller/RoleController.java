package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.RoleBean;

@Controller
public class RoleController {

	@GetMapping("/newrole")
	public String newRole() {
		 return "NewRole";
	}
	
 	@PostMapping("/saverole")
	public String saverole(RoleBean role) {
		System.out.println(role.getRoleName());
		return "NewRole";
		
	}
}
