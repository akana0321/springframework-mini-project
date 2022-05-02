package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.HospitalDao;
import com.mycompany.webapp.dto.Hospital;

@Service
public class HospitalService {
	@Resource
	private HospitalDao hospitalDao;
	
	// Get Hospital Info by Hospital's number
	public Hospital getHospitalByHnumber(String hnumber) {
		return hospitalDao.selectByHnumber(hnumber);
	}
	
	// Get Hospitals Info by User's ID
	public List<Hospital> getHospitalsByUid(String uid) {
		return hospitalDao.selectByUid(uid);
	}
	
	// Insert Hospital
	public int insertHospital(Hospital hospital) {
		return hospitalDao.insert(hospital);
	}
	
	// Delete Hospital By Hospital's number
	public int deleteHospitalByHnumber(String hnumber) {
		return hospitalDao.deleteByHnumber(hnumber);
	}
	
	// Update Hospital
	public int updateHospital(Hospital hospital) {
		return hospitalDao.update(hospital);
	}
}
