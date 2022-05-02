package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.AttachDao;
import com.mycompany.webapp.dto.Attach;

@Service
public class AttachService {
	@Resource
	private AttachDao attachDao;
	
	// Get Attach List(Table: Hospital, Question, Comment)
	public List<Attach> getAttachList(Attach target) {
		return attachDao.selectByTargetList(target);
	}
	
	// Get Attach One(Table: User)
	public Attach getAttachOne(Attach target) {
		return attachDao.selectByTargetOne(target);
	}
	
	// Insert Attach by Target
	public int insertAttach(Attach attach) {
		return attachDao.insert(attach);
	}
	
	// Delete Attach List
	public int deleteAttachList(Attach target) {
		return attachDao.deleteByTargetList(target);
	}
	
	// Delete Attach One
	public int deleteAttachOne(Attach target) {
		return attachDao.deleteByTargetOne(target.getAno());
	}
	
	// Update Attach
	public int updateAttach(Attach attach) {
		return attachDao.update(attach);
	}
}
