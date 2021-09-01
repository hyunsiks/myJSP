package chap22.river;

import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/river/register")
public final class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("서블릿을 처음 초기화 할 때 한번만 실행됩니다.");
		System.out.println("초기화 중입니다....");
		System.out.println("초기화가 끝났습니다....");
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get 방식 요청인 경우 doGet()이 호출됩니다");
		
		/*
			HttpServletRequest에는 사용자의 요청에 대한 모든 정보가 담겨 있다.
			그 중에서 form을 통해 실려온 데이터는 ㅇ청 객체의 parameter에 담겨있다.		 
		*/
		String firstName = request.getParameter("first-name");
		String lastName = request.getParameter("last-name");
		
		//잘못된 파라미터를 가져오는 경우 null이 리턴됨
		String nickName = request.getParameter("nick-name");
		
		System.out.printf("사용자가 보낸 이름 : %s %s", firstName, lastName);
		
		response.getWriter()
			.append("UserName : " + firstName)
			.append(" " + lastName)
			.append("<br> Nickname : "+ nickName);
		
		System.out.println("request로 알 수 있는 정보들");
		System.out.println("url: " + request.getRequestURL());
		System.out.println("uri: " + request.getRequestURI());
		System.out.println("method: " + request.getMethod());
		
		//contextPat: 현재 프로젝트를 웹 서버에 등록할 때 사용하고 있는 경로 이름
		System.out.println("contextPath: " + request.getContextPath());
		System.out.println("요청자 IP주소 : " + request.getRemoteAddr());
		System.out.println("포트번호 : " + request.getServerPort());
		
		//체크박스 받을때 사용
		String[] interest = request.getParameterValues("intrest");
		System.out.println(Arrays.toString(interest));
		
		//키값을 몰라도 받은 모든 것을 꺼낼 수 있다
		Enumeration<String> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()) {
			String name = paramNames.nextElement();
			
			System.out.println("키값몰라도 꺼내기 : " + request.getParameter(name));
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post 방식 요청인 경우 doPost()가 호출됩니다");
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("요청 방식과 상관없이 service()가 호출됩니다");
	
		//원래 service를 처리한 후 알맞은 doMethod()를 호출함(get으로 들어올지 post가 들어올지에 따라 다름)
		//service가 없었으면 doget()만 호출되었을것이다
		super.service(request, response);
	}
}
