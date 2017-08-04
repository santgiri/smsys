package com.koty.sms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.koty.sms.model.Course;
import com.koty.sms.service.CourseService;

@Controller
public class CoursesController {
	
	@Autowired
	CourseService courseService;
	
	@RequestMapping(value="/course/add", method = RequestMethod.GET)
    public String addCoursePage(ModelMap model) {
		Course course = new Course();
		model.addAttribute("course", course);
		return "addCourse";
    }
     
    @RequestMapping(value="/course/add", method = RequestMethod.POST)
    public String addingCourse(@Valid Course course,BindingResult result, ModelMap model) {
         
    	if (result.hasErrors()) {
			System.out.println("There are errors");
			return "addCourse";
		}
		courseService.addCourse(course);
		model.addAttribute("success", "Course " + course.getName() + " has been added successfully");
		List<Course> courses = courseService.getCourses();
        model.addAttribute("courses", courses);
		return "listCourses";
    }
     
    @RequestMapping(value="/course/list", method = RequestMethod.GET)
    public String listOfCourses(ModelMap model) {       
        //System.out.println("----->"+SecurityContextHolder.getContext().getAuthentication().getName());
        List<Course> courses = courseService.getCourses();
        model.addAttribute("courses", courses);        
        return "listCourses";
    }
     
    @RequestMapping(value="/course/edit/{id}", method=RequestMethod.GET)
    public String editCoursePage(@PathVariable Integer id, ModelMap model) {        
        Course course = courseService.getCourse(id);
        model.addAttribute("course", course);
        return "addCourse";
    }
     
    @RequestMapping(value="/course/edit/{id}", method=RequestMethod.POST)
    public String edditingCourse(@Valid Course course,BindingResult result, ModelMap model) {

        courseService.updateCourse(course);
        model.addAttribute("success", "Course " + course.getName() + " has been edited successfully");
		List<Course> courses = courseService.getCourses();
        model.addAttribute("courses", courses);
		return "listCourses";
    }
     
    @RequestMapping(value="/course/delete/{id}", method=RequestMethod.GET)
    public String deleteCourse(@PathVariable Integer id, ModelMap model) {
    
		courseService.deleteCourse(id);
		model.addAttribute("success", "Course ID:" + id + " has been deleted successfully");
		List<Course> courses = courseService.getCourses();
        model.addAttribute("courses", courses);
		return "listCourses";
    }

}
