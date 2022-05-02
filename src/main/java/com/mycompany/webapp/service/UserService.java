package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.UserDao;
import com.mycompany.webapp.dto.User;

@Service
public class UserService {
	public enum JoinResult {
		SUCCESS, FAIL, DUPLICATED
	}
	
	public enum LoginResult {
		SUCCESS, FAIL_UID, FAIL_UPASSWORD, FAIL
	}
	
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
		User dbUser = userDao.selectByUid(user.getUid());
		if(dbUser == null) {
			// 비밀번호 Security 적용하기
			userDao.insert(user);
			return JoinResult.SUCCESS;
		} else {
			return JoinResult.DUPLICATED;
		}
	}
	
	// Login
	public LoginResult login(User user) {
		User dbUser = userDao.selectByUid(user.getUid());
		if(dbUser == null) {
			// 비밀번호 Security 적용하기
			if(dbUser.getUpassword().equals(user.getUpassword())) {
				return LoginResult.SUCCESS;
			} else {
				return LoginResult.FAIL_UPASSWORD;
			}
		} else {
			return LoginResult.FAIL_UID;
		}
	}
}
