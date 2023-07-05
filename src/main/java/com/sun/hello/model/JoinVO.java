package com.sun.hello.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
@AllArgsConstructor
public class JoinVO{


	private String id;
	
	private String userName;
	
	private String pw;
	
	private String tel;
	
	private String birthDate;

	private String email;
	
	private String addr1;
	
	private String addr2;
	
	private String agreeYn;
	
	private String usedYn;
	


	
}
