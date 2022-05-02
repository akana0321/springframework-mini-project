package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.EstimateDao;
import com.mycompany.webapp.dto.Estimate;

@Service
public class EstimateService {
	@Resource
	private EstimateDao estimateDao;
	
	// Get Estimate by Estimate no
	public Estimate getEstimateByEno(int eno) {
		return estimateDao.selectByEno(eno);
	}
	
	// Get Estiamte By Question no
	public Estimate getEstimateByQno(int qno) {
		return estimateDao.selectByQno(qno);
	}
	
	// Insert Estimate
	public int insertEstimate(Estimate estimate) {
		return estimateDao.insert(estimate);
	}
	
	// Delete Estimate by Estimate no
	public int deleteEstimateByEno(int eno) {
		return estimateDao.deleteByEno(eno);
	}
	
	// Update Estimate
	public int updateEstimate(Estimate estimate) {
		return estimateDao.update(estimate);
	}
}
