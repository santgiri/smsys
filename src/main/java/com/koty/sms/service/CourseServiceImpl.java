package com.koty.sms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.koty.sms.dao.CourseDao;
import com.koty.sms.model.Course;

@Service("CourseService")
@Transactional
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	CourseDao courseDao;

	@Override
	public void addCourse(Course course) {
		courseDao.addCourse(course);
	}

	@Override
	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}

	@Override
	public Course getCourse(int id) {
		return courseDao.getCourse(id);
	}

	@Override
	public void deleteCourse(int id) {
		courseDao.deleteCourse(id);
	}

	@Override
	public List<Course> getCourses() {
		return courseDao.getCourses();
	}

}
