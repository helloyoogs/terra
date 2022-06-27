package com.terra_board.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.terra_board.command.BCommand;
import com.terra_board.command.BContentCommand;
import com.terra_board.command.BDeleteCommand;
import com.terra_board.command.BListCommand;
import com.terra_board.command.BModifyCommand;
import com.terra_board.command.BReplyCommand;
import com.terra_board.command.BReplyViewCommand;
import com.terra_board.command.BWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String viewPage = null;
		BCommand command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("uri="+uri);
		System.out.println("conPath="+conPath);
		System.out.println("com="+com);
		
		if(com.contains("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		} else if(com.contains("/content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			viewPage="content_view.jsp";
		}else if(com.contains("/modify.do")) {
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do"; //수정 완료 후 목록으로 돌아가기 위함
		} else if(com.contains("/write_view.do")) {
			viewPage="write_view.jsp"; //데이터를 따로 넘기진 않고, write_view.jsp로 이동
		} else if(com.contains("/write.do")) {
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage="list.do";
		} else if(com.contains("/delete.do")) {
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		} else if(com.contains("/reply_view.do")) {
			command = new BReplyViewCommand();
			command.execute(request, response);
			viewPage = "reply_view.jsp";
		} else if(com.contains("/reply.do")) {
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage="list.do";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); 
		dispatcher.forward(request, response);
	}
	

}










