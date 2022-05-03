package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.UserDao;
import com.mycompany.webapp.dto.User;

@Service
public class UserService {
	public enum JoinResult { SUCCESS, FAIL, DUPLICATED }
	public enum LoginResult { SUCCESS, FAIL_UID, FAIL_UPASSWORD, FAIL }
	
	@Resource
	private UserDao userDao;
	
	// Get User's Info by User's ID
	public User getUserByUid(String uid) {
		return userDao.selectByUid(uid);
	}
	
	// Delete User by User's ID
	public int deleteUserByUid(String uid) {
		return userDao.deleteByUid(uid);
	}
	
	// Update User
	public int updateUser(User user) {
		return userDao.update(user);
	}
	
	// Sing Up
	public JoinResult signUp(User user) {
		try {
			User dbUser = userDao.selectByUid(user.getUid());
			if(dbUser == null) {
				PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
				user.setUpassword(passwordEncoder.encode(user.getUpassword()));
				userDao.insert(user);
				return JoinResult.SUCCESS;
			} else {
				return JoinResult.DUPLICATED;
			}
		} catch(Exception e) {
			e.printStackTrace();
			return JoinResult.FAIL;
		}
		
	}
	
	// Login
	public LoginResult login(User user) {
		try {
			User dbUser = userDao.selectByUid(user.getUid());
			if(dbUser == null) {
				return LoginResult.FAIL_UID;
			} else {
				PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
				if(passwordEncoder.matches(user.getUpassword(), dbUser.getUpassword())) {
					return LoginResult.SUCCESS;
				} else {
					return LoginResult.FAIL_UPASSWORD;
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
			return LoginResult.FAIL;
		}
	}
}
