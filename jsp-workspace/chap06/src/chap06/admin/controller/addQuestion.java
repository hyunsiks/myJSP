package chap06.admin.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.dao.DBConnector;
import chap06.dao.WorldcupDAO;

@WebServlet(urlPatterns = {"/admin/addQuestion"})
public class addQuestion extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/WEB-INF/admin/addQuestion.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String question = req.getParameter("question");
		
		//question을 DB에 등록(여기다가 직접 DB로드하고 코딩하는것은 아마추어 -> DB불러오는 클래스를 따로 로드하는게 맞다)
		System.out.println("질문 : " + question);
		
		try(
			Connection conn = DBConnector.getConnection();
		){
			WorldcupDAO dao = new WorldcupDAO(conn);
			dao.addQuestion(question);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect(req.getContextPath() + "/home");		
	}
}
