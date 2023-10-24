package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.HouseBean;
import com.bean.UserBean;
import com.dao.HouseDao;

@Controller
public class HouseController {

	@Autowired 
	HouseDao hdao;
	
	@GetMapping("/newhouse")
	public String NewHouse() {
		return "NewHouse";
	}
	@PostMapping("/savehouse")
	public String SaveHouse(HouseBean house,HttpSession session) {
		System.out.println(house.getHouseNumber());
		System.out.println(house.getBlockNumber());
		System.out.println(house.getFloor());
		System.out.println(house.getContactNumber());
		if(house.getTenantInd() == null) {
			house.setTenantInd(0);
		}
		UserBean user=(UserBean) session.getAttribute("user");
		house.setUserId(user.getUserId());
		hdao.addhouse(house);
		return "redirect:/house";
		
	}
	@GetMapping("/house")
	public String getallHouse(Model model) {
		List<HouseBean> house = hdao.getAllHouse();
		
		model.addAttribute("house",house);
		
		return "ListHouse";
	}
}
