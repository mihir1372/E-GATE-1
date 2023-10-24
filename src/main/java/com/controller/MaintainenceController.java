package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.AmmenitiesBean;
import com.bean.HouseBean;
import com.dao.MaintainenceDao;

@Controller
public class MaintainenceController {
		
	@Autowired
	MaintainenceDao madao;
	
	@GetMapping("/maintain")
	public String maintain() {
		return "AddAmmenities";
	}
	
	@PostMapping("/maintainence")
	public String maintainence(AmmenitiesBean abean) {
		if(abean.getActive() == null) {
			abean.setActive(0);//
		}
		madao.addAmmenities(abean);
		return "redirect:/listmaintain";
	}
	
	@GetMapping("/listmaintain")
	public String getallAmmenity(Model model) {
		
		List<AmmenitiesBean> ammenity = madao.getAllAmmenity();  
		
		model.addAttribute("ammenity",ammenity);
		
		return "ListMaintain";
	}
	@GetMapping("/editmaintain")
	public String editmaintain(@RequestParam("ammenitiesId")Integer ammenitiesId, Model model) {
		
		
		AmmenitiesBean a = madao.getAmmenityById(ammenitiesId);
		model.addAttribute("a",a);
		return "EditAmmenity";
	}
	
	@PostMapping("/updateammenity")
	public String updateAmmenity(AmmenitiesBean abean) {
		madao.updateAmmenity(abean);
		return "redirect:/listmaintain";
	}
	
	
}
