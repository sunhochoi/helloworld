package com.sun.hello.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.hello.mapper.joinMemberMapper;
import com.sun.hello.model.JoinVO;

@Service("JoinMemberService")
public class JoinMemberServiceImpl implements JoinMemberService {
	
	@Autowired
	private  joinMemberMapper joinMapper ;
	
	
//	public JoinMemberServiceImpl(joinMemberMapper joinMapper) {
//		this.joinMapper = joinMapper;
//	}
	
	
	public void save(JoinVO jvo) {
		joinMapper.addMember(jvo);
	}
	
	
	public void update(JoinVO jvo) {
		joinMapper.updateMember(jvo);
	}
	
	
	public void delete(String id) {
		joinMapper.deleteMember(id);
	}
	
	public int selectDupId(String id) {
		
		int cnt = joinMapper.selectId(id);
		
		return cnt;
	}
	
	public int login(JoinVO jvo) {
		int success = joinMapper.selectMemberCnt(jvo);
		
		return success;
	}

}
