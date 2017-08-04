package com.koty.sms.dao;

import java.util.List;

import com.koty.sms.model.UserProfile;

public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
