package chap22.quiz;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/request")
public class loginquizservlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = req.getSession();
		//ServletContext : 서버 정보가 저장되어 있는 객체
		ServletContext application = req.getServletContext();
		
		String id = req.getParameter("ID");
		String pw = req.getParameter("Password");
		String email = req.getParameter("EMAIL");
		
		String db_id = "";
		String db_pw = "";
		String db_email = "";
		
		System.out.println(id +"/" + pw + "/" + email);
		
		System.out.println("next==================db");
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("OracleDriver가 존재함");
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		try { 
			Connection conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521/XEPDB1", "java1", "1234");
		
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM LOGINQUIZ");
			ResultSet rs = pstmt.executeQuery();
			
//			System.out.println(rs.next());
			while(rs.next()) {
				db_id = rs.getString("ID");
				db_pw = rs.getString("PASSWORD");
				db_email = rs.getString("EMAIL");
		
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String mdpw = md5.testMD5(pw);
		System.out.println("쓴아이디 : "+ id);
		System.out.println("db아이디 : "+ db_id);
		System.out.println("pw암호화 : " + mdpw);
		System.out.println("db암호화 : " + db_pw);
		
			
		if(db_id.equals(id) && db_pw.equals(mdpw)) {
			System.out.println("로그인 성공");
			
			session.setAttribute("customer", id);
			System.out.println(session.getAttribute("customer"));
			    
//			RequestDispatcher dispatcher = 
//					req.getRequestDispatcher("../Documents/ms김현식/JAVA/jsp-workspace/chap22/quiz/check.jsp");
//			dispatcher.forward(req, resp);
			resp.sendRedirect("/chap22/quiz/login.jsp");
		}else {
			System.out.println("로그인실패");
			resp.sendRedirect("/chap22/quiz/login.jsp");	
		}
		
//		session.setAttribute("ID", application);
//		session.setAttribute("Password", pw);
//		session.setAttribute("EMAIL", email);
		
	}
	

}
 class md5 {
	public static String testMD5(String pwd) {
	    String MD5 = "";
	    try {
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        md.update(pwd.getBytes());
	        byte byteData[] = md.digest();
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < byteData.length; i++) {
	            sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	        }
	        MD5 = sb.toString();
	 
	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	        MD5 = null;
	    }
	    return MD5;
	}
}