package chap06.main.controller;

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

@WebServlet("/worldcup/vote")
public class VoteItem extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int win_id = Integer.parseInt(req.getParameter("win_id"));
		int lose_id = Integer.parseInt(req.getParameter("lose_id"));
		
		System.out.println("win_id : " + win_id);
		System.out.println("lose_id : " + lose_id);
		
		lose_id = 1;
		//String sql = "UPDATE worldcup_item SET win=win+1 where id=?";
		
		try(
			Connection conn = DBConnector.getConnection();
				
		){
			WorldcupDAO dao = new WorldcupDAO(conn);
			
			dao.winItem(win_id);
			dao.loseItem(lose_id);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect(req.getContextPath() + "/home");
		
	}
}
