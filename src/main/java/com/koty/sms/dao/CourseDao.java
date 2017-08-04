package com.koty.sms.dao;

import java.util.List;

import com.koty.sms.model.Course;

public interface CourseDao {
	
	public void addCourse(Course course);
    public void updateCourse(Course course);
    public Course getCourse(int id);
    public void deleteCourse(int id);
    public List<Course> getCourses();

}
