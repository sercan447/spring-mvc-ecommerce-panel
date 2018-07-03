package com.muzikmagaza.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.muzikmagaza.dao.ProductDao;
import com.muzikmagaza.model.Product;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false)String error,
						@RequestParam(value="logout", required=false)String logout,Model model) {
		
		if(error != null) {
			model.addAttribute("error","Invalid username and password");
		}
		if(logout != null) {
			model.addAttribute("msg","You have been logged out succesfully");
		}
		
		return "loginn";
	}
	
}
