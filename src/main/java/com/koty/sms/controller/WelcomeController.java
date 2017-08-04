package com.koty.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koty.sms.model.Course;
import com.koty.sms.model.User;
import com.koty.sms.model.UserProfile;
import com.koty.sms.service.UserProfileService;
import com.koty.sms.service.UserService;

@Controller
public class WelcomeController {
	
	@Autowired
	UserProfileService userProfileService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		model.addAttribute("greeting", "Hi, Welcome to mysite");
		return "welcome";
	}
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "admin";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	
	
	@RequestMapping(value = "/db", method = RequestMethod.GET)
	public String dbaPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "dba";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	
	@RequestMapping(value = "/newuser", method = RequestMethod.GET)
	public String newRegistration(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "newuser";
	}

	/*
	 * This method will be called on form submission, handling POST request It
	 * also validates the user input
	 */
	@RequestMapping(value = "/newuser", method = RequestMethod.POST)
	public String saveRegistration(@Valid User user,BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			System.out.println("There are errors");
			return "newuser";
		}
		userService.save(user);
		
		List<User> users = userService.getUsers();
        model.addAttribute("users", users);
		return "listUsers";
	}

	@RequestMapping(value="/user/list", method = RequestMethod.GET)
    public String listOfUsers(ModelMap model) {                
        List<User> users = userService.getUsers();
        model.addAttribute("users", users);        
        return "listUsers";
    }
	
	@RequestMapping(value="/user/edit/{id}", method=RequestMethod.GET)
    public String editUserPage(@PathVariable Integer id, ModelMap model) {        
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "newuser";
    }
     
    @RequestMapping(value="/user/edit/{id}", method=RequestMethod.POST)
    public String edditingCourse(@Valid User user,BindingResult result, ModelMap model) {

        userService.updateUser(user);
        model.addAttribute("success", "User " + user.getId() + " has been edited successfully");
		List<User> users = userService.getUsers();
        model.addAttribute("users", users);
		return "listUsers";
    }
	
	@RequestMapping(value="/user/delete/{id}", method=RequestMethod.GET)
    public String deleteUser(@PathVariable Integer id, ModelMap model) {
    
		userService.deleteUser(id);
		model.addAttribute("success", "User ID:" + id + " has been deleted successfully");
		List<User> users = userService.getUsers();
        model.addAttribute("users", users);
		return "listUsers";
    }
	
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	
	
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}

}
