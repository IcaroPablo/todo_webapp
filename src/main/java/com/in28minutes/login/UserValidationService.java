package com.in28minutes.login;

import org.springframework.stereotype.Service;

public class UserValidationService {
	
//	@Service
	public boolean isUserValid(String user, String password) {
		if(user.equals("icaro") && password.equals("icaro123")){
			return true;
		}
		return false;
	}

}
