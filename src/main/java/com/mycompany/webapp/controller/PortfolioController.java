package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/portfolio")
@Log4j2
public class PortfolioController {

	@RequestMapping("/portfolio")
	public String getPortfolio() {
		return "portfolio/portfolio";
	}
}
