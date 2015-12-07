package com.hanains.guestbook.dao.test;

import java.util.ArrayList;
import java.util.List;

import com.hanains.guestbook.dao.guestDao;
import com.hanains.guestbook.vo.guestVo;

public class daotest {
	static List<guestVo> list = new ArrayList<guestVo>();
	public static void main(String args[]){
		guestDao dao = new guestDao();
		dao.getlist();
		String a = "1";
		long b = Long.parseLong(a);
		System.out.println(b);
		
	}
	
	public static void getList(List<guestVo> list){
		for(guestVo guest:list){
			System.out.println(guest.toString());
		}
	}
	
}
