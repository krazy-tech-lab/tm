package com.krazy.tm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController extends BaseController {

	@GetMapping("/yutaro")
	public String init(Model model) {
        model.addAttribute("message", "jjjijiiiji");
        return "index";
	}
	@GetMapping("/yuki")
	public String inini(Model model) {
        model.addAttribute("message", "yuki");
        return "index2";
	}
}
