package com.sun.hello.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.sun.hello.model.JoinVO;

@Mapper
public interface joinMemberMapper {
	
	
	//ȸ�� ���� 
	public void addMember(JoinVO jvo);

	//���� ���� 
	public void deleteMember(String id);
	
	//ȸ�� ���� ���� 
	public void updateMember(JoinVO jvo);
	
	//ID �ߺ� �˻� 
	public int selectId(String id);
	
	//�α��� ���� ó�� 
	public int selectMemberCnt(JoinVO jvo);
	
	//���� ���� select 
	public JoinVO selectMember(String id);
	
}
