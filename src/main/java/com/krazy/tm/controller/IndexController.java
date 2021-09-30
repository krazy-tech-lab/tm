package com.krazy.tm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController extends BaseController {

	@GetMapping("/")
	public String init(Model model) {
        model.addAttribute("message", "Hello Thymeleaf!!");
        return "index";
	}
}
