package com.terra_board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.terra_board.dao.BDao;
import com.terra_board.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		BDao dao = new BDao(); //db연결 객체 만듦
		ArrayList<BDto> dtos = dao.list();
		request.setAttribute("list", dtos);
		

	}

}
