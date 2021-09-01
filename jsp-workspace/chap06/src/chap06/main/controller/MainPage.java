package chap06.main.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.dao.DBConnector;
import chap06.dao.WorldcupDAO;

public class MainPage extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try(Connection conn = DBConnector.getConnection();){
			
			WorldcupDAO dao = new WorldcupDAO(conn);
			
			req.setAttribute("q_count", dao.getCount());
			req.setAttribute("q_count2", dao.getNotYetCount());
			req.setAttribute("items", dao.getAllItemList());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		req.getRequestDispatcher("WEB-INF/index/index.jsp").forward(req, resp);
	}
}
