package chap01.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet2")
public class Myservlet2 extends HttpServlet{

	//doGet() : Get방식 요청이 서블릿으로 도착했을때 실행되는 콜백 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setCharacterEncoding("EUC-KR");
		resp.getWriter().print("<h1>Servlet2에 오신것을 환여합니다.</h1>");
	}
}
