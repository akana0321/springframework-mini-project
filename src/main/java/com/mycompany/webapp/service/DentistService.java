package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.DentistDao;
import com.mycompany.webapp.dto.Dentist;

@Service
public class DentistService {
	@Resource
	private DentistDao dentistDao;
	
	// Get Dentist Info by Dentist's number
	public Dentist getDentistByDnumber(String dnumber) {
		return dentistDao.selectByDnumber(dnumber);
	}
	
	// Get Dentists Info by User's ID
	public List<Dentist> getDentistsByUid(String uid) {
		return dentistDao.selectByUid(uid);
	}
	
	// Insert Dentist
	public int insertDentist(Dentist dentist) {
		return dentistDao.insert(dentist);
	}
	
	// Delete Dentist By Dentist's number
	public int deleteDentistByDnumber(String dnumber) {
		return dentistDao.deleteByDnumber(dnumber);
	}
	
	// Update Dentist
	public int updateDentist(Dentist dentist) {
		return dentistDao.update(dentist);
	}
}
