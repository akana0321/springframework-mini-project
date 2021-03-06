package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.UserDao;
import com.mycompany.webapp.dto.User;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
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
	
	// Sign Up
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
			return JoinResult.FAIL;
		}
		
	}
	
	// Login
	public LoginResult login(User user) {
		String dbPassword = userDao.selectLoginInfoByUid(user.getUid());
		if(dbPassword == null) {
			return LoginResult.FAIL_UID;
		} else {
			PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			if(passwordEncoder.matches(user.getUpassword(), dbPassword)) {
				return LoginResult.SUCCESS;
			} else {
				return LoginResult.FAIL_UPASSWORD;
			}
		}
	}
}
