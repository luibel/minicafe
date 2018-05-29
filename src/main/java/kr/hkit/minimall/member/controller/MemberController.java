package kr.hkit.minimall.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/member")
@Controller
public class MemberController {

	@RequestMapping("/main.do")
	public String main(Model model) throws Exception {		
		return "member/main";
	}
	
	@RequestMapping("/header.do")
	public String header(Model model) throws Exception {		
		return "member/header";
	}
	
	@RequestMapping("/nav.do")
	public String nav(@ModelAttribute NavDTO navDTO, Model model) throws Exception {
		model.addAttribute("menu", navDTO.getMenu());
		return "member/nav";
	}
	
	@RequestMapping("/footer.do")
	public String footer(Model model) throws Exception {		
		return "member/footer";
	}
	
	@RequestMapping("/cart.do")
	public String cart(Model model) throws Exception {		
		return "member/cart";
	}
}
