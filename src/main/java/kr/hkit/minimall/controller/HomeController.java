package kr.hkit.minimall.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.apache.commons.dbcp.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.hkit.minimall.mapper.HomeMapper;
import kr.hkit.minimall.mapper.UserVO;

@Controller
public class HomeController {

	private static String UPLOADED_FOLDER = "C://temp//";
	
	@Autowired
	private HomeMapper homeMapper;
		
	@RequestMapping("/actionFileUpload.do")
	public String actionFileUpload(@ModelAttribute ActionFileUploadDTO actionFileUploadDTO, Model model) throws Exception {
		
		String username = actionFileUploadDTO.getUsername();
		String email = actionFileUploadDTO.getEmail();
		MultipartFile file = actionFileUploadDTO.getFile();
		
		String fileName = file.getOriginalFilename(); 
		
//		homeMapper.insertUser(username, password, name, email, phone, address)
		System.out.println("username : " + username);
		System.out.println("email : " + email);
		System.out.println("fileName : " + fileName);
		
        if(file.isEmpty() == false) {
            byte[] bytes = file.getBytes();
            Path path = 
            		Paths.get("C://temp//" +  file.getOriginalFilename());
            Files.write(path, bytes);
        }
				
		return "redirect:/main.do";
	}
	
	@RequestMapping("/fileUpload.do")
	public String fileUpload(Model model) throws Exception {
		return "fileUpload";
	}
	
	@RequestMapping("/home.do")
	public String home(Model model) throws Exception {
		
//		BasicDataSource dataSource = new BasicDataSource();
//		dataSource.setUrl("jdbc:mysql://127.0.0.1:3308/minimall?autoReconnect=true&amp;useEncoding=true&amp;characterEncoding=UTF-8");
//		dataSource.setPassword("hkit1234");
//		dataSource.setUsername("root");
//		
//		SqlSessionFactoryBean SqlSessionFactoryBean = new SqlSessionFactoryBean();
//		SqlSessionFactoryBean.setDataSource(dataSource);
		
		
		return "home";
	}
	
	@RequestMapping("/removeUser.do")
	public String removeUser(@ModelAttribute RemoveUserDTO removeUserDTO, Model model) throws Exception {
		
		List<Integer> idxes = removeUserDTO.getIdxes();
		
		for(int idx : idxes) {
			homeMapper.deleteUser(idx);
		}
		
		return "redirect:/userList.do";
	}
	
	@RequestMapping("/header.do")
	public String header(Model model) throws Exception {		
		return "header";
	}
	
	@RequestMapping("/nav.do")
	public String nav(@ModelAttribute NavDTO navDTO, Model model) throws Exception {
		model.addAttribute("menu", navDTO.getMenu());
		return "nav";
	}
	
	@RequestMapping("/footer.do")
	public String footer(Model model) throws Exception {		
		return "footer";
	}
	
	@RequestMapping("/main.do")
	public String main(Model model) throws Exception {		
		return "main";
	}
	
	@RequestMapping("/best.do")
	public String best(Model model) throws Exception {		
		return "best";
	}
	
	@RequestMapping("/signIn.do")
	public String signIn(Model model) throws Exception {		
		return "signIn";
	}
	
	
	@RequestMapping("/userList.do")
	public String userList(@ModelAttribute("userListDTO") UserListDTO userListDTO, Model model) throws Exception {
		
//		UserVO userVO = new UserVO();
//		userVO.setId(userListDTO.getId());
//		userVO.setPassword(userListDTO.getPassword());
//		userVO.setName(userListDTO.getName());
//		userVO.setEmail(userListDTO.getEmail());
//		userVO.setPhone(userListDTO.getPhone());
//		userVO.setAddress(userListDTO.getAddress());
//		
//		homeMapper.insertUserVO(userVO);
		
		
		List<UserVO> userVOs = homeMapper.selectUserVOs();
				
		model.addAttribute("userVOs", userVOs);
		
		return "userList";
	}
	
	@RequestMapping("/signUp.do")
	public String signUp(Model model) throws Exception {
		return "signUp";
	}
	
	@RequestMapping("/actionSignUp.do")
	public String actionSignUp(@ModelAttribute @Valid ActionSignUpDTO actionSignUpDTO, 
			BindingResult bindingResult, Model model) throws Exception {
		
        if(bindingResult.hasErrors()) {
            return "signUp";
        }
                
        
        int count = 
        		homeMapper.selectUsersCount(actionSignUpDTO.getUsername());
        
        if(count == 0) {
        	String username = actionSignUpDTO.getUsername();
    		String password = actionSignUpDTO.getPassword();
    		String name = actionSignUpDTO.getName();
    		String email = actionSignUpDTO.getEmail();
    		String phone = actionSignUpDTO.getPhone();
    		String address = actionSignUpDTO.getAddress();
    		
    		homeMapper.insertUser(username, password, name, email, phone, address);	
        } else {    	
        	return "signUp";
        }
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/userInfo.do")
	public String userInfo(@ModelAttribute("userInfoDTO")UserInfoDTO userInfoDTO, Model model) throws Exception {

		model.addAttribute("userInfoDTO", userInfoDTO);
		
		return "userInfo";
	}
}
