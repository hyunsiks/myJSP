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

public class AddItemIndex extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try(		
			Connection conn = DBConnector.getConnection();
		){
			WorldcupDAO dao = new WorldcupDAO(conn);
			
			req.setAttribute("questions",dao.getWorldcupList());
			
			req.getRequestDispatcher("/WEB-INF/admin/addItemIndex.jsp").forward(req, resp);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
}
