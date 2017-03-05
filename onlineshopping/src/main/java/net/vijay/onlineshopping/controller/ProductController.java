package net.vijay.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.*;
import java.util.*;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO  productDAO;

	
	@RequestMapping("/all/data")
	public @ResponseBody List<Product> StaticProductDetails() {

		return productDAO.list();
	}

	
	@RequestMapping("/allProducts")
	public ModelAndView listAllProducts()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title","List Products");
		   mv.addObject("userClickAllProducts", true);
		   mv.addObject("products", productDAO.list());
		return mv;
	}
	
}