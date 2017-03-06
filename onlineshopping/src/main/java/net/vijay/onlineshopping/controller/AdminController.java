package net.vijay.onlineshopping.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.Product;

@Controller
public class AdminController
{

	@Autowired
	private ProductDAO productDAO;

/*	@RequestMapping("/*")
	public String setForm(Map<String , Object> map)
	{
		Product product = new Product(); // send the empty form object
		map.put("product", product);
		map.put("productList", productDAO.list());		
		return "product";
		
	}
	*/
	
	@RequestMapping("/adminAccess")
	public ModelAndView listAllProducts()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title","Admin Page");
		   mv.addObject("userClickAdminPage", true);
	  mv.addObject("product", new Product());
		return mv;
	}

	@RequestMapping(value="/product.do", method= RequestMethod.POST)
	public ModelAndView doActions( @Valid @ModelAttribute  Product  product , BindingResult result , @RequestParam  String action , Map<String , Object> map)
	{
		 
		
		
		
		if (  (result.getErrorCount() > 0 )  && (product.getId() == 0) )
				{
			 
			ModelAndView mv = new ModelAndView("page");
			   mv.addObject("title","Admin Page");
			   mv.addObject("userClickAdminPage", true);
	 mv.addObject("product", product);
			return mv;
		 
		   }
	
		else 
		{		
		int choice=0;
		Product productResult  = new Product();
		if(action.equals("add"))
			 choice = 1;
		if(action.equals("update"))
			 choice = 2;
		if(action.equals("delete"))
				 choice = 3;
		if(action.equals("search"))
					 choice = 4;
		
		switch(choice)
		{
		case 1 :   
			      productDAO.addProduct(product);
			      productResult = new Product();
		          break; 
		case 2 :   
		      productDAO.updateProduct(product);;
		      productResult = new Product();
	          break; 
		case 3 :   
		      productDAO.deleteProduct(product.getId());;
		      productResult = new Product();  // empty form object
	          break; 
		case 4 :   
		     productResult =   productDAO.getProduct(product.getId());
		     productResult = (productResult!=null)? productResult:new Product();
	          break; 
		
		}
		

		ModelAndView mv = new ModelAndView("page");
		map.put("product", productResult);
		 mv.addObject("userClickAdminPage", true);
		map.put("productList", productDAO.list());
		 return mv;
		}
	}
	
}

