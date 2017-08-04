package com.koty.sms.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.koty.sms.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	public void save(User user) {
		persist(user);
	}
	
	public User findById(int id) {
		return getByKey(id);
	}

	public User findBySSO(String sso) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		return (User) crit.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return getSession().createQuery("from User").list();
	}

	@Override
	public void deleteUser(int id) {
		User user = findById(id);
		if(user!=null)
			delete(user);
	}

	@Override
	public void updateUser(User user) {
		User userToUpdate = findById(user.getId());
		userToUpdate.setEmail(user.getEmail());
		userToUpdate.setFirstName(user.getFirstName());
		userToUpdate.setLastName(user.getLastName());
		userToUpdate.setPassword(user.getPassword());
		userToUpdate.setUserProfiles(user.getUserProfiles());
	}

}
