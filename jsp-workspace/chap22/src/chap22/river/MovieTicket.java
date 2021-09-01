package chap22.river;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MovieTicket
 */
@WebServlet("/movie/ticket")
public class MovieTicket extends HttpServlet {
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
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("요청 방식과 상관없이 service()가 호출됩니다");
		super.service(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get 방식 요청인 경우 doGet()이 호출됩니다");
		//request의 들어있는 데이터를 해석할 인코딩 타입을 설정
		request.setCharacterEncoding("EUC-KR");
		
		//응답 객체에 실어놓을 데이터의 인코딩 타입을 설정
		response.setCharacterEncoding("UTF-8");
		
		String a1 = request.getParameter("a1");
		String a2 = request.getParameter("a2");
		String a3 = request.getParameter("a3");
		String a4 = request.getParameter("a4");
		System.out.println(a1);
		if(a1.equals("")) {
			a1 = "0";
		}
		if(a2.equals("")) {
			a2 = "0";
		}
		if(a3.equals("")) {
			a3 = "0";
		}
		if(a4.equals("")) {
			a4 = "0";
		}
		int a = Integer.parseInt(a1)*6000 +  Integer.parseInt(a2)*6000 + Integer.parseInt(a3)*5000 + Integer.parseInt(a4)*5000;
		
		String b1 = request.getParameter("b1");
		String b2 = request.getParameter("b2");
		String b3 = request.getParameter("b3");
		String b4 = request.getParameter("b4");
		if(b1.equals("")) {
			b1 = "0";
		}
		if(b2.equals("")) {
			b2 = "0";
		}
		if(b3.equals("")) {
			b3 = "0";
		}
		if(b4.equals("")) {
			b4 = "0";
		}
		int b = Integer.parseInt(b1)*7000 +  Integer.parseInt(b2)*7000 + Integer.parseInt(b3)*5000 + Integer.parseInt(b4)*5000;
		
		String c1 = request.getParameter("c1");
		String c2 = request.getParameter("c2");
		String c3 = request.getParameter("c3");
		String c4 = request.getParameter("c4");
		if(c1.equals("")) {
			c1 = "0";
		}
		if(c2.equals("")) {
			c2 = "0";
		}
		if(c3.equals("")) {
			c3 = "0";
		}
		if(c4.equals("")) {
			c4 = "0";
		}
		int c = Integer.parseInt(c1)*9000 +  Integer.parseInt(c2)*8000 + Integer.parseInt(c3)*5000 + Integer.parseInt(c4)*5000;
		
		String d1 = request.getParameter("d1");
		String d2 = request.getParameter("d2");
		String d3 = request.getParameter("d3");
		String d4 = request.getParameter("d4");
		if(d1.equals("")) {
			d1 = "0";
		}
		if(d2.equals("")) {
			d2 = "0";
		}
		if(d3.equals("")) {
			d3 = "0";
		}
		if(d4.equals("")) {
			d4 = "0";
		}
		int d = Integer.parseInt(d1)*7000 +  Integer.parseInt(d2)*7000 + Integer.parseInt(d3)*5000 + Integer.parseInt(d4)*5000;
		//잘못된 파라미터를 가져오는 경우 null이 리턴됨
		
		PrintWriter out = response.getWriter();
		
		out.println("<html lang = \"ko\"><head> <meta charset=\"UTF-8\"><title>movie ticket</title>");
		out.println("<style>"
				+ "td{border: solid 3px black; width: 150px; text-align: center;}"
				+ " .column{background-color: yellow}"
				+ "</style>");
		out.println("</head><body>");
		
		out.println("<h1>Movie Ticket</h1>");
		out.println("a1의 값은 : "+ a1);
		out.println("<table>");

		out.println("<tr>");
		out.println("<td><b> </b></td>");
		out.println("<td class=\"column\"><b>가격</b></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td class=\"column\"><b>성인</b></td>");
		out.println("<td><b>"+ a +"원" +"</b></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td class=\"column\"><b>일반</b></td>");
		out.println("<td><b>"+ b +"원" +"</b></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td class=\"column\"><b>프라임</b></td>");
		out.println("<td><b>"+ c +"원" +"</b></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td class=\"column\"><b>심야</b></td>");
		out.println("<td><b>"+ d +"원" +"</b></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td class=\"column\"><b>총 가격</b></td>");
		out.println("<td><b>"+ (a+b+c+d)+"원" +"</b></td>");
		out.println("</tr>");
		
		out.println("</table>");
		
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post 방식 요청인 경우 doPost()가 호출됩니다");
	}

}
