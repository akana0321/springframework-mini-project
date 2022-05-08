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
	
	// Get Attach Total Count
	public int getTotalCount() {
		return attachDao.count();
	}
	
	// Get Attach Last No
	public int getLastAno() {
		Integer lastAno = attachDao.selectLastAno();
		if(lastAno == null) {
			return 0;
		} else {
			return lastAno;
		}
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
	public int deleteAttachOne(int ano) {
		return attachDao.deleteByTargetOne(ano);
	}
	
	// Update Attach
	public int updateAttach(Attach attach) {
		return attachDao.update(attach);
	}
}
