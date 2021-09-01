package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
	# 웹 사이트가 사용자에게 보여지는 과정
	
	호스트 : 웹 페이지를 가지고 있는 웹 페이지의 주인
	클라이언트 : 웹 서버에 접속하는 사용자
	
	(1) 클라이언트가 호스트에게 원하는 웹 페이지를 보여달라고 요청한다.
		요청할 때 원한는 페이지가 무엇인지 웹 주소(URL)에 적어서 보낸다.
		http://naver.com/news
			- http:// : 통신 방식 (http, https, ftp ...)
			- naver.com : IP주소 (또는 도메인)
			- /news : 사용자가 해당 웹 서버에서 특별히 원하는 자원(웹페이지 또는 그림 등)
			
	(2) 사용자의 요청이 Apache-Tomcat에 도착한다
		Apache-Tomcat에 등록되어있는 URL매핑들 중 일치하는 자원을 찾는다.
		
		등록할 수 있는 자원들 - .jsp, .java(Servlet), .html, 기타자원들(.js, .css, .jpg 등)
		등록 방법들 - @WebServlet 어노테이션, webapp(WebContent) 밑에 직접 넣기 .. 등
		
	(3) 등록된 자원들 중 사용자의 요청에 따라 페이지가 다른 결과물이 나오는 페이지를 동적 웹 페이지라고 한다.
		
	(4) 클라이언트의 요청이 올바른 요청이었다면(톰캣에 등록된 자원이 맞다면)
		해당 자원을 조합하여(Servlet 프로그램 실행하여) 응답한다.
		(또는 자원 그대로 응답한다. 동적 웹페이지가 아닌 자원들)
	
	(5) 웹 서버에서 응답한 자원이 요청 보냈던 클라이언트의 웹 브라우저에 도착한다.
		웹 브라우저는 응답 받은 내용을 해석하여 사용자에게 보여준다.
 */

//이 서블릿으로 접속하려면 어떤 URL로 접속해야하는지 설정하는 어노테이션(/chap01/hello)
@WebServlet("/hello")
public class HelloServlet extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		//HttpServletRequest : 사용자가 보낸 모든 요청정보를 담을 수 있는 객체(클래스)
		//HttpServletResponse : 받은 요청을 통해 알맞은 응답을 담아놓을 수 있는 객체(클래스)
		
		PrintWriter out = response.getWriter(); //response에다가 쓸수 있는 writer를 꺼내온것
		
		out.println("<html><head><title>안녕하세요</title></head><body>");
		out.println("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css\">\r\n"
				+ "    <!-- 부가적인 테마 -->\r\n"
				+ "    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css\">");
		out.println("<h1>Hello!</h1>");
		out.println("    <div class=\"progress\">\r\n"
				+ "        <div class=\"progress-bar progress-bar-success progress-bar-striped\" role=\"progressbar\" aria-valuenow=\"40\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 40%\">\r\n"
				+ "          <span class=\"sr-only\">40% Complete (success)</span>\r\n"
				+ "        </div>\r\n"
				+ "    </div>\r\n"
				+ "    <div class=\"progress\">\r\n"
				+ "    <div class=\"progress-bar progress-bar-info progress-bar-striped\" role=\"progressbar\" aria-valuenow=\"20\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 20%\">\r\n"
				+ "        <span class=\"sr-only\">20% Complete</span>\r\n"
				+ "    </div>\r\n"
				+ "    </div>\r\n"
				+ "    <div class=\"progress\">\r\n"
				+ "    <div class=\"progress-bar progress-bar-warning progress-bar-striped\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 60%\">\r\n"
				+ "        <span class=\"sr-only\">60% Complete (warning)</span>\r\n"
				+ "    </div>\r\n"
				+ "    </div>\r\n"
				+ "    <div class=\"progress\">\r\n"
				+ "    <div class=\"progress-bar progress-bar-danger progress-bar-striped\" role=\"progressbar\" aria-valuenow=\"80\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 80%\">\r\n"
				+ "        <span class=\"sr-only\">80% Complete (danger)</span>\r\n"
				+ "    </div>\r\n"
				+ "    </div>");
		out.println("    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->\r\n"
				+ "    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\"></script>\r\n"
				+ "    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->\r\n"
				+ "    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js\"></script>");
		out.println("</body></html>");
	}
}
