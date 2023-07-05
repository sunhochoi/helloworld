package com.sun.hello.service;

import com.sun.hello.model.JoinVO;

public interface JoinMemberService {
	
	void save(JoinVO jvo);

	void delete(String id);
	
	void update(JoinVO jvo);
	
	int selectDupId(String id);
	
	int login(JoinVO jvo);
}
