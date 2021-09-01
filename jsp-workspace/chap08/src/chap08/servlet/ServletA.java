package chap08.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletA extends HttpServlet{

	String name;
	String tel;
	String user;
	String charset;
	
	@Override
	public void init() throws ServletException {
		
		// 맨처음 서버가 초기화 될때 실행되는 메서드(톰캣에 실릴때 딱한번 실행되는 메서드)

		ServletConfig config = this.getServletConfig();
		ServletContext application = getServletContext();
		
		//context에서 param쓴 것을 꺼낼 때는 SevletContext에서 뺀다(보통 encoding UTF-8 이런것을 적어둔다)
		//servlet에서 param쓴 것을 꺼낼 때는 ServletConfig에서 뺸다
		this.name = config.getInitParameter("name");
		this.tel = config.getInitParameter("tel");
		this.user = application.getInitParameter("user");
		this.charset = application.getInitParameter("encoding");
		
		System.out.println("name : " + name);
		System.out.println("tel : " + tel);
		System.out.println("user : " + user);

	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding(charset);
		resp.setCharacterEncoding(charset);
		
		resp.getWriter().append("잘 되고 있나? ServletA<br>")
						.append("name : " + name + "<br>")
						.append("tel : " + tel + "<br>")
						.append("user : " + user + "<br>");
	}
}
