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
public class CustomerController {
	@Autowired
	private ProductDAO  productDAO;
	
	@RequestMapping("/all/data1")
	public @ResponseBody List<Product> StaticCustomerProductDetails() {

		return productDAO.list();
	}
	
	@RequestMapping("/customer/customerAccess")
	public ModelAndView list1AllCustomerProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Customer Page");
		mv.addObject("customerClickCustomerPage", true);
		mv.addObject("product", new Product());
		mv.addObject("productList", productDAO.list());
		return mv;
	}
/*	@RequestMapping("customer/allProducts")
	public ModelAndView listAllCustomerProducts()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title","List Products");
		   mv.addObject("customerClickAllProducts", true);
		   mv.addObject("products", productDAO.list());
		return mv;
	}
*/
}



