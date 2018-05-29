package kr.hkit.minimall.admin.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.hkit.minimall.admin.mapper.AdminMapper;
import kr.hkit.minimall.admin.mapper.ProductVO;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminMapper adminMapper;

	@RequestMapping("/main.do")
	public String main(Model model) throws Exception {
		
		return "admin/main";
	}
	
	@RequestMapping("/header.do")
	public String header(Model model) throws Exception {		
		return "admin/header";
	}
	
	@RequestMapping("/nav.do")
	public String nav(@ModelAttribute NavDTO navDTO, Model model) throws Exception {	
		model.addAttribute("menu", navDTO.getMenu());
		return "admin/nav";
	}
	
	@RequestMapping("/footer.do")
	public String footer(Model model) throws Exception {		
		return "admin/footer";
	}
	
	@RequestMapping("/userList.do")
	public String userList(Model model) throws Exception {		
		return "admin/userList";
	}
	
	@RequestMapping("/productList.do")
	public String productList(Model model) throws Exception {	
		List<ProductVO> productVOs = adminMapper.selectProductVOs();
		model.addAttribute("productVOs", productVOs);
		return "admin/productList";
	}
	
	@RequestMapping("/productAdd.do")
	public String productAdd(Model model) throws Exception {		
		return "admin/productAdd";
	}
	
	@RequestMapping("/actionProductAdd.do")
	public String actionProductAdd(
			@ModelAttribute ActionProductAddDTO actionProductAddDTO, Model model) throws Exception {
		
		String name = actionProductAddDTO.getName();
		long price = actionProductAddDTO.getPrice();
		String description = actionProductAddDTO.getDescription();
		
		MultipartFile imageFile = actionProductAddDTO.getImageFile();
		
		String imageName = imageFile.getOriginalFilename();
		
        if(imageFile.isEmpty() == false) {
            byte[] bytes = imageFile.getBytes();
            Path path = 
            		
            		Paths.get("C://APM_Setup//htdocs//was//image" +  
            				imageFile.getOriginalFilename());
            Files.write(path, bytes);
        }
		
		adminMapper.insertProduct(name, price, description, imageName);
		
//		return "redirect:/admin/productList.do";
		return "admin/productList";
	}
}
