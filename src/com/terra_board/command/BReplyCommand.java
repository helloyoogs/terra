package com.terra_board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.terra_board.dao.BDao;

public class BReplyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bid");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		String bGroup = request.getParameter("bGroup"); //bId와 같은 값. 어떤 글에 대해서 답글을 다는 것인가? 원글의 번호
		String bStep = request.getParameter("bStep"); //Step은 원본글보다 몇 줄 떨어져 있는가
		String bIndent = request.getParameter("bIndent"); //원글보다 몇 번 들여쓰기 하였는가
		
		BDao dao = new BDao();
		dao.reply(bId, bName, bTitle, bContent, bGroup, bStep, bIndent);

	}

}
