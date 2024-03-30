package com.tabling.maincontroller;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class test {

	@GetMapping("/member/test")
	public void test() {
		log.info("Test");
	}

	@GetMapping("/admin/testa")
	public void testa() {
		log.info("Test");
	}
	
	
	
}
