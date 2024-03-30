package com.tabling.maincontroller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class Controller {
	
	@RequestMapping("/")
    public String home() {
        return "home"; // 뷰 이름을 반환하여 해당 뷰를 표시합니다.
    }
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/permitAlert")
	public String permitAlert() {
		return "permitAlert";
	}
}
