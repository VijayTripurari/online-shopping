package net.vijay.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.vijay.shoppingbackend.dao.CategoryDAO;

@Controller
public class PageController {
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = {"/","/home","/index"})
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView("page");
		   mv.addObject("title", "home");
		   mv.addObject("userClickHome", true);
		   mv.addObject("categories", categoryDAO.list());
		return mv;
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