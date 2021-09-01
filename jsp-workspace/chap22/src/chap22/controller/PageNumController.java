package chap22.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/page/controller")
public class PageNumController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		
		System.out.printf("전달 받은 페이지는 %s페이지 입니다.\n", page);
	
		// 전달 받은 값에 따라서 다른 내용을 응답해줘야 하는 경우
		// 서블릿만 사용하면 코드가 매우 지저분해진다
		/*
		  switch(page){
		  	case
		  } 이짓을 해야 되기떄문
		 */
		//따라서 사용자의 요청을 다른 페이지로 분배하여 응답을 생성하는 것이 바람직하다
		
		//이 때, 다른 .jsp 페이지로 요청을 그대로 전달하여 전달한 .jsp에서 응답을 생성하는 것을
		//forward라고 한다.
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(String.format("/forward/view/page%s.jsp", page));
		
		//dispatcher.forward(request, response);
		
		//include는 다른 .js 페이지로 request를 보낸 후 생성된 결과를 이 서블릿으로 다시 가져온다(따라서 이곳에서 응답을 이어나갈수있다)
		response.setCharacterEncoding("UTF-8");
		dispatcher.include(request, response);
		response.getWriter().append("<h3>서블릿에서 추가됨.</h3>");
		
		//즉, forward는 페이지 교체하고 끝!
		//   include는 페이지 교체하고 다시 돌아옴!
	}
}











