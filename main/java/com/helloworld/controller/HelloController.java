package com.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
	
	
	
	
		@GetMapping
		public String getHello () {
			return "Hello World!!!";
		}
		
		@GetMapping("/bsm")
		public String getBsm () {
			return "Foco na atenção aos detalhes";
		}
		
		@GetMapping("/obj")
		public String getObj () {
			return "Revisar todos os códigos e treinar bastante Spring e POO!";
		}
	

}

