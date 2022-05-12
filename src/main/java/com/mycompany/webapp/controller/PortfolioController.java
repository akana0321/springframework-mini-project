package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/portfolio")
public class PortfolioController {

	@RequestMapping("/portfolio")
	public String getPortfolio() {
		return "portfolio/portfolio";
	}
}
