package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// <%
		PrintWriter out = resp.getWriter();
		out.println("<html lang = \"ko\"><head> <meta charset=\"UTF-8\"><title>구구단</title>");
		
		out.println("</head><body>");
		
		out.println("<h1>구구단</h1>");
		String dan ="";
		for(int i=1; i<10; i++) {
			for(int j=1; j<10; j++) {
				dan += String.format("%d X %d = %d<br>", i,j,(i*j));
			}
		}
		out.println("<div>" + dan + "</div>");
		out.println("</body></html>");
		// %>
	}
}
