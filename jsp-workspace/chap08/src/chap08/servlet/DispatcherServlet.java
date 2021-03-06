package chap08.servlet;

import java.io.IOException;
import java.lang.ModuleLayer.Controller;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.controller.MusicController;

public class DispatcherServlet extends HttpServlet{
	
	HashMap<String, aa> url_mapping = new HashMap<>();
	HashMap<String, Controller> controller_mapping = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		controller_mapping.put("/music", new MusicController());
		
		url_mapping.put("/music", new aa("뮤직", "/WEB-INF/music/main.jsp"));
		url_mapping.put("/blog", new aa("블로그","/WEB-INF/blog/newPost.jsp"));
		url_mapping.put("/webtoon", new aa("웹툰","/WEB-INF/webtoon.main.jsp"));
		
	}
	class aa{
	    String value;
	    String url;
	    public aa(String value,String url) {
			this.value = value;
			this.url = url;
		}
	    
	    void musicFunction() {
	    	
	    }
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI().substring(req.getContextPath().length());

		//처리
		controller_mapping.get(uri).control(req,resp);
		
		//무슨 주소를 가지고 들어왔는지 확인해보는 메서드
		System.out.println(req.getRequestURI());
		
		
		String forward_to = req.getRequestURI();
		
//		
//		if(uri.equals("/music")) {
//			System.out.println("여기는음악");
//			req.setAttribute("music", "abc");
//		}else if()
		
		
		if(forward_to == null) {
			System.out.println("No matches found");
		}else {
			req.setAttribute(forward_to.substring(1),url_mapping.get(forward_to.substring(1)).value);
			req.getRequestDispatcher(forward_to).forward(req, resp);
		}
		
//		HashMap<String, String> url_mapping = new HashMap<>();
		
		
		//chap08/aaa 로 들어오면 /WEB-INF/a.jsp
		//chap08/bbb 로 들어오면 b.jsp
//		String urlName = req.getRequestURI();
//		String firstName = urlName.substring(0, urlName.length() - 3);
//		urlName = (urlName.substring(urlName.length() - 3, urlName.length()));
//		
//		if(urlName.length() == 3 && firstName.charAt(firstName.length()) == '/') {
//			if((urlName.charAt(0) >='a' && urlName.charAt(0) <= 'z') && 
//					(urlName.charAt(0) == urlName.charAt(1)) &&
//					urlName.charAt(1) == urlName.charAt(2) &&
//					urlName.charAt(2) == urlName.charAt(0)) {
//				
//				urlName = firstName+(urlName.charAt(0));
//			}else {
//				urlName = firstName + urlName;
//			}
//		}else {
//			urlName = firstName + urlName;
//		}
//		
//		System.out.println(urlName);
//		req.getRequestDispatcher("WEB-INF/page/" + urlName +".jsp").forward(req, resp);
	}
}
