package com.muzikmagaza.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.muzikmagaza.model.Product;
import com.muzikmagaza.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/productList")
	public String getProducts(Model model)
	{
		List<Product> products = productService.getProductList();
		model.addAttribute("products",products);
		
		return "productList";
	}
	
	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable("productId") String productId,Model model)throws IOException{
		
		int id = Integer.parseInt(productId.toString());
		Product product = productService.getProductById(id);
		model.addAttribute("product",product);
		
		return "viewProduct";
	}
}
