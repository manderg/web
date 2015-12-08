package com.hanains.http.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanains.guestbook.dao.guestDao;

public class DeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
	    long id = Long.parseLong(request.getParameter("id"));
		String password = request.getParameter("password");
		System.out.println("id: " + id +", password : " + password );
		guestDao dao = new guestDao();
		dao.delete(id, password);
		response.sendRedirect("/guestbook/gb");
	}
}
