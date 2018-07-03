package com.muzikmagaza.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.muzikmagaza.dao.CartDao;
import com.muzikmagaza.dao.ProductDao;
import com.muzikmagaza.model.Cart;
import com.muzikmagaza.model.Customer;
import com.muzikmagaza.model.Product;
import com.muzikmagaza.service.CustomerService;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/customer/cart")
public class CartController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping
	public String getCart(@AuthenticationPrincipal User activeUser) {
		
		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		int cartId = customer.getCart().getCartId();
		
		return "redirect:/customer/cart/"+cartId;
	}	
	
	@RequestMapping("/{cartId}")
	public String getCartRedirect(@PathVariable(value="cartId") int cartId,Model model) {
		model.addAttribute("cartId",cartId);
		
		return "cart";
	}
	
	
	


}
