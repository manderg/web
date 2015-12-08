package com.hanains.http.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanains.guestbook.dao.guestDao;
import com.hanains.guestbook.vo.guestVo;
import com.hanains.http.HttpUtil;

public class IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		guestDao dao =new guestDao();
		List<guestVo> list = dao.getlist();

		request.setAttribute("list", list);
		
		HttpUtil.forwarding(request, response, "/index.jsp");
	}

}
