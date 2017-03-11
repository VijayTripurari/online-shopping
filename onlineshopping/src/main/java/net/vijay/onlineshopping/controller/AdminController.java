package net.vijay.onlineshopping.controller;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.Product;

@Controller
public class AdminController {

	@Autowired
	private ProductDAO productDAO;
	private @Autowired HttpServletRequest request;

	@RequestMapping("/admin/adminAccess")
	public ModelAndView listAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin Page");
		mv.addObject("userClickAdminPage", true);
		mv.addObject("product", new Product());
		mv.addObject("productList", productDAO.list());
		return mv;
	}
	
	

	@RequestMapping("admin/{id}/editproduct")
	public String editMethod(@PathVariable Integer id , ModelMap model)
	{
		model.addAttribute("admin", true);
		model.addAttribute("editproduct", true);
		model.addAttribute("product", productDAO.getProduct(id));
		return "page";
		
	}
	
	@RequestMapping("admin/{id}/updateproduct")
	public String updateMethod(@PathVariable Integer id , ModelMap model)
	{
		model.addAttribute("admin", true);
		model.addAttribute("deleteproduct", true);
		model.addAttribute("product", productDAO.getProduct(id));
		return "page";
		
	}
	
	@RequestMapping(value = "/product.do", method = RequestMethod.POST)
	public ModelAndView doActions(@Valid @ModelAttribute Product product, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		
		
		
		
		uploadImage(product.getFile());

		if ((result.getErrorCount() > 0) && (product.getId() == 0)) {

			ModelAndView mv = new ModelAndView("page");
			mv.addObject("title", "Admin Page");
			mv.addObject("userClickAdminPage", true);
			mv.addObject("product", product);
			return mv;

		}

		else {
			int choice = 0;
			Product productResult = new Product();
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
				productDAO.addProduct(product);
				productResult = new Product();
				break;
			case 2:
				productDAO.updateProduct(product);
				
				productResult = new Product();
				break;
			case 3:
				productDAO.deleteProduct(product.getId());
				
				productResult = new Product(); // empty form object
				break;
			case 4:
				productResult = productDAO.getProduct(product.getId());
				productResult = (productResult != null) ? productResult : new Product();
				break;

			}

			ModelAndView mv = new ModelAndView("page");
			map.put("product", productResult);
			mv.addObject("userClickAdminPage", true);
			map.put("productList", productDAO.list());
			return mv;
		}
	}
	
	
	/*
	 * File upload code
	 *
	 */

	// helper to upload the file
	
	protected void uploadImage(MultipartFile multipartFile) {
		String folderToUpload = "/assets/images/";
		// 1. get the filename
		String filename = multipartFile.getOriginalFilename();
		// 2. get the real path and create the directory
		// if it does not exists
		String realPath = request.getServletContext().getRealPath(folderToUpload);
		if (!new File(realPath).exists()) {
			new File(realPath).mkdirs();
		}

		// 3. transfer the file
		String filePath = realPath + filename;
		File destination = new File(filePath);

		try {

			multipartFile.transferTo(destination);
		} catch (Exception ex) {
		}
		// 4. Return the filename
		

	}

	

}
