package com.terra_login.ex;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.terra_action.ex.Action;
import com.terra_action.ex.ActionForward;
import com.terra_login.ex.MemberDto;

public class MemberCheckIdOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		MemberDto dto = new MemberDto();

		String id = (String) req.getSession().getAttribute("id");

		return null;
	}

}
