package com.niit.ShoppingCartFrontEnd2.controller;



import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;


@Controller
public class HomeController
{
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	Product product;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLoad(Model model, Principal principal){
		System.out.println("on load");
		session.setAttribute("category", category);
		session.setAttribute("categoryList",this.categoryDAO.list());
		session.setAttribute("product", product);
		
		int n=0;
		try
		{
			String name = principal.getName();
			n = cartDAO.userCartList(name).size();
		}
		catch (Exception e)
		{
			
		}
		session.setAttribute("cartSize", n);
		
		return "home";
	
}
	@RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model){
		System.out.println("on load");
		model.addAttribute("category", category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("product", product);
		return "home";
	
}

	@RequestMapping(value="/user")
	public String getUser()
	{
		return "login";
	}
	
	@RequestMapping(value="/login")
	public String  login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false) String logout,Model model)
	{
		if(error!=null)
		{
			System.out.println("Error..");
			model.addAttribute("loginerror","...Invalid username and password");
		}
		
		if(logout!=null)
		{
			System.out.println("logout called..");
			model.addAttribute("loginmsg","...you have been logged out");
		}
		
		return "login";
	}
	
    @RequestMapping(value="/admin")
    public String getAdmin()
    {
    	return "admin";
    }
	
    @RequestMapping("/home")
    public String getHome()
    {
    	return "redirect:/";
    }
    
    @RequestMapping("/contactus")
    public String getcontactus()
    {
    	return "contactus";
    }
	
 
    
}

