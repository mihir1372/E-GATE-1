package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.HouseBean;
import com.bean.MemberBean;
import com.dao.MemberDao;

@Controller
public class MemberController {

	@Autowired
	MemberDao mdao;

	@GetMapping("/newmember")
	public String AddMember() {
		return "NewMember";
	}

	@PostMapping("/savemember")
	public String SaveMember(MemberBean mbean, HttpSession session) {
		System.out.println(mbean.getFirstname());

		if (session.getAttribute("house") != null) {
			HouseBean house = (HouseBean) session.getAttribute("house");
			mbean.setHouseId(house.getHouseId());
		}else {
			
		}

		String masterPath = "D:\\spring\\E-GATE-1\\src\\main\\resources\\static\\profile\\";
		File file = new File(masterPath, mbean.getProfile().getOriginalFilename());

		try {
			byte b[] = mbean.getProfile().getBytes();

			FileOutputStream fw = new FileOutputStream(file);
			fw.write(b);
			fw.close();

			mbean.setProfilepath("profile/" + mbean.getProfile().getOriginalFilename());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mdao.addMember(mbean);
		return "redirect:/listmember";
	}

	@GetMapping("/listmember")
	public String getAllMembers(Model model) {

		List<MemberBean> member = mdao.getAllMembers();

		model.addAttribute("member", member);

		return "ListMember";
	}

}
