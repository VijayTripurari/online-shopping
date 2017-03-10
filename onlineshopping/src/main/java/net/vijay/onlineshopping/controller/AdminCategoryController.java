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

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dto.Category;

@Controller
public class AdminCategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/admin/adminCategoryAccess")
	public ModelAndView listAllCategories() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin Category Page");
		mv.addObject("userClickAdminCategoryPage", true);
		mv.addObject("category" , new Category());
		return mv;
	}


	@RequestMapping(value = "/admin.do", method = RequestMethod.POST)
	public ModelAndView doActions(@RequestParam String action,@Valid @ModelAttribute Category category, BindingResult result,
			 Map<String, Object> map) {
		
		

		if ((result.getErrorCount() > 0) && (category.getId() == 0)) {

			ModelAndView mv = new ModelAndView("page");
			mv.addObject("title", "Admin Cagegory Page");
			mv.addObject("userClickAdminCategoryPage", true);
			mv.addObject("category", category);
			return mv;

		}

		else {
			int choice = 0;
			Category categoryResult = new Category();
			if (action.equals("add"))
				choice = 1;
			if (action.equals("update"))
				choice = 2;
			if (action.equals("delete"))
				choice = 3;
			if (action.equals("search"))
				choice = 4;

			switch (choice) {
			case 1:
				categoryDAO.addCategory(category);
				categoryResult = new Category();
				break;
			case 2:
				categoryDAO.updateCategory(category);
				categoryResult = new Category();
				break;
			case 3:
				categoryDAO.deleteCategory(category.getId());
				
				categoryResult = new Category(); // empty form object
				break;
			case 4:
				categoryResult= categoryDAO.getCategory(category.getId());
				categoryResult = (categoryResult != null) ? categoryResult : new Category() ;
				break;

			}

			ModelAndView mv = new ModelAndView("page");
			map.put("category", categoryResult);
			mv.addObject("userClickAdminCategoryPage", true);
			map.put("categoryList", categoryDAO.list());
			return mv;
		}
	}

}
