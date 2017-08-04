package com.koty.sms.service;

import java.util.List;

import com.koty.sms.model.User;

public interface UserService {

	void save(User user);	
	User findById(int id);
	User findBySso(String sso);
	List<User> getUsers();
	void deleteUser(int id);
	void updateUser(User user);
}