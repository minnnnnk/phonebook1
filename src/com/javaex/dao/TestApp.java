package com.javaex.dao;

import com.javaex.vo.PersonVo;

public class TestApp {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();

		PersonVo personVo = phoneDao.getPerson(1);
		
		System.out.println(personVo);
		
		
		
	}

}
