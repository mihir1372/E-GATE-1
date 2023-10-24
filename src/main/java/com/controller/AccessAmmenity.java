package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.AmmenitiesAccessBean;
import com.bean.AmmenitiesBean;
import com.bean.HouseBean;
import com.bean.MemberBean;
import com.dao.AccessAmmenityDao;
import com.dao.MaintainenceDao;
import com.dao.MemberDao;

@Controller
public class AccessAmmenity
{

	@Autowired
	AccessAmmenityDao acdao;
	
	@Autowired
	MaintainenceDao madao;
	
	@Autowired
	MemberDao mdao; 
	
	@GetMapping("/addaccess")
	public String AddAccess(Model model) {
	List<AmmenitiesBean> maintain=	madao.getAllAmmenity();
 	model.addAttribute("maintain",maintain);
 	
 	List<MemberBean> member = mdao.getAllMembers();
 	model.addAttribute("member",member);
 	
		return "AccessAmmenities";
	}
	
	@PostMapping("/access")
	public String Access(AmmenitiesAccessBean ambean) {
		
		acdao.accessammenities(ambean);
		return "redirect:/addaccess";
	}
	
	@GetMapping("/accesses")
	public String getallAmmenity(Model model) {
		List<HouseBean> house = acdao.getAllAmmenity();
		
		model.addAttribute("ammenity",ammenity);
		
		return "ListAmmenity";
	}
}