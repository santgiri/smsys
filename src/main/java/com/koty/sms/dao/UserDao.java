package com.koty.sms.dao;

import java.util.List;

import com.koty.sms.model.User;

public interface UserDao {

	void save(User user);	
	User findById(int id);
	User findBySSO(String sso);
	List<User> getUsers();
	void deleteUser(int id);
	void updateUser(User user);
	
}

