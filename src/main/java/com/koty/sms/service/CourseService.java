package com.koty.sms.service;

import java.util.List;

import com.koty.sms.model.Course;

public interface CourseService {
	
	public void addCourse(Course course);
    public void updateCourse(Course course);
    public Course getCourse(int id);
    public void deleteCourse(int id);
    public List<Course> getCourses();

}
