package com.hanains.http.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanains.guestbook.dao.guestDao;
import com.hanains.guestbook.vo.guestVo;
 class AddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		
		guestVo vo = new guestVo();	
		vo.setName(request.getParameter("name"));
		vo.setPassword(request.getParameter("pass"));
		vo.setMessage(request.getParameter("content"));
		
		guestDao dao = new guestDao();
		dao.insert(vo);
		response.sendRedirect("/guestbook/gb");
	}

}
