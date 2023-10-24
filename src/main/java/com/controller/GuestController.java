package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.GuestBean;
import com.dao.UserDao;

@Controller
public class GuestController {

	@Autowired
	UserDao udao;

	@GetMapping("/updatevisitstatus")
	public String updatevisitstatus(@RequestParam("guestId") Integer guestId,
			@RequestParam("visitedInd") Boolean visitedInd) {

		System.out.println(guestId);
		System.out.println(visitedInd);
		udao.UpdateVisitStatus(guestId);
		return "redirect:/guestlist";// do not open jsp - open iurl
	}

	@GetMapping("/guestlist")
	public String guestList(Model model) {
		model.addAttribute("guest", udao.getAllGuest());// once added fetch all guest and print on jsp
		return "GuestHome";
	}
	@GetMapping("/addguest")
	public String AddGuest(Model model) {
		List<GuestBean> guest = udao.getAllGuest();
		model.addAttribute("guest", guest);
		return "Addguest";
	}

	@PostMapping("/guestsignin")
	public String Addd(GuestBean guest, Model model) {
		System.out.println(guest.getMemberName());
		System.out.println(guest.getHouseNumber());
		System.out.println(guest.getBlockNumber());
		System.out.println(guest.getTime());
		System.out.println(guest.getPurpose());
		System.out.println(guest.getGuestName());
		System.out.println(guest.getNoofGuests());

		udao.addGuest(guest);// add new guest
		model.addAttribute("guest", udao.getAllGuest());// once added fetch all guest and print on jsp
		return "GuestHome";

	}
	
	
	
	
	
	
	
	
	
	
	
}
