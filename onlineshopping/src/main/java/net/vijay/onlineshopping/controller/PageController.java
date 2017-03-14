package net.vijay.onlineshopping.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.User;

@Controller
public class PageController
 {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	HttpSession session;

	@RequestMapping(value = {"/","/home","/index"})
	public String index(Principal principal, ModelMap mv)
	{
	/*	ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title", "home");
		   mv.addObject("userClickHome", true);
	   mv.addObject("categories", categoryDAO.list());
		return mv;
		*/
		
		// principal will be filled only when the user authenticates the himself
		// in spring security
		 System.out.println("entering");
		 if(principal != null)
		 {
			 
			 System.out.println("entering if");
			 System.out.println(principal.getName());
			User user =  userDAO.getUserByUsername(principal.getName());
			session.setAttribute("cart", user.getCart());
			session.setAttribute("user", user);
			
			System.out.println("user object::::::"+user);
			System.out.println(user.getRole());
			  if(user.getRole().equals("ADMIN")) {
				  return "redirect:/admin/adminAccess";
			  }
		  }
		  mv.addAttribute("title", "home");
		  mv.addAttribute("userClickHome", true);
		  mv.addAttribute("categories", categoryDAO.list());
		  return "page";
		 
		
		
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false)String error, ModelMap model) {
	 
	if(error!=null) {
	model.addAttribute("error","Authentication Failed - Invalid credentials!");
	}
	 
	model.addAttribute("title", "Login");
	return "login";
	}
	
	
	@RequestMapping("/about")
	public ModelAndView about()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title", "About Us");
		   mv.addObject("userClickAbout", true);
		return mv;
	}
	@RequestMapping("/contact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title", "Contact Us");
		   mv.addObject("userClickContact", true);
		return mv;
	}

}