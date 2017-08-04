package com.koty.sms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koty.sms.model.Course;
import com.koty.sms.model.User;

@Repository("CourseDao")
public class CourseDaoImpl extends AbstractDao<Integer, Course> implements CourseDao{
	
	public void addCourse(Course course){
		persist(course);
	}
	
    public void updateCourse(Course course){
    	Course courseToUpdate = getCourse(course.getId()); 
    	courseToUpdate.setName(course.getName());
    	courseToUpdate.setComments(course.getComments());
    	courseToUpdate.setCourseFee(course.getCourseFee());
    	courseToUpdate.setStartDate(course.getStartDate());
    	courseToUpdate.setTotalClasses(course.getTotalClasses());
    }
    
    public Course getCourse(int id){
    	return getByKey(id);
    }
    
    public void deleteCourse(int id){
    	Course course = getCourse(id);
    	if(course != null)
    		delete(course);
    }
    
    @SuppressWarnings("unchecked")
    public List<Course> getCourses(){
    	return getSession().createQuery("from Course").list();
    }

}
