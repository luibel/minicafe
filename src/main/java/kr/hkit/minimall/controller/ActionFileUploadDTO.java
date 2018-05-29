package kr.hkit.minimall.controller;

import org.springframework.web.multipart.MultipartFile;

public class ActionFileUploadDTO {
	
	private String username;
	private String email;
	private MultipartFile file;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	

}
