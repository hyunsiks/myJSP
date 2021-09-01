package chap22.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap22.model.Apple;


@WebServlet("/fruit/controller")
public class FruitController extends HttpServlet {
	
	private static final long serialVersionUID = -4940298878086163854L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fruit = req.getParameter("fruit");
		
		System.out.println("클라이언트가 클릭한 과일: " + fruit);
		String path = System.getProperty("user.dir");
	    System.out.println("Working Directory = " + path);
		
	    File file = new File(".");
	    System.out.println("현재 프로젝트의 경로 : "+file.getAbsoluteFile());
	    
//	    String url = String.format("C:/Users/ASUS/Documents/ms김현식/JAVA/jsp-workspace/chap22/files/%s.txt", fruit);
		String url = String.format("../Documents/ms김현식/JAVA/jsp-workspace/chap22/files/%s.txt", fruit);
		System.out.println(url);
		StringBuilder detail = new StringBuilder();
		try {
			File fi = new File(url);
			FileReader fr = new FileReader(fi);
			BufferedReader br = new BufferedReader(fr);
			
			String text;
			while ((text = br.readLine()) != null) {
				System.out.println(text);
				detail.append(text);
			}
			br.close();
			fr.close();
		}catch(IOException e) {
			System.out.println("못찾음");
		}
		
		//Request객체에 원하는 데이터를 실어놓으면 포워드하는 페이지로 해당 데이터를 그대로 가져간다
		req.setAttribute("fruitName", fruit);
		req.setAttribute("fruitDetail", detail);
		
		//Attribute는 자바의 모든 타입들을 실어 보낼 수 있다.
//		class Apple{
//			int price;
//			int size;
//			
//			public Apple() {
//				// TODO Auto-generated constructor stub
//				this.price = (int)(Math.random()*10) + 10;
//				this.size = (int)(Math.random()*10) + 10;
//			}
//		}
		req.setAttribute("apple1", new Apple());
		req.setAttribute("apple2", new Apple());
		req.setAttribute("apple3", new Apple());
		req.setAttribute("appleArray", 
				new Apple[] {new Apple(), new Apple(), new Apple()});
		
		//포워드된 jsp페이지에서는 주로 화면을 구성한다.
		req.getRequestDispatcher("/javabean/gradeview.jsp")
			.forward(req, resp);
		
//		resp.sendRedirect("/chap22/attribute/view/fruitDetail.jsp");
	}
}
