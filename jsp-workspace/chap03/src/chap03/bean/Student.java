package chap03.bean;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/grade/request")
public class Student extends HttpServlet{

	//필드의 접근제어자를 private으로 설정
	private String id;
	private String name;
	private int kor;
	private int eng;
	private int math;
	private double avg;
	private int rank;
	
	//기본 생성자가 반드시 존재해야 함
	
	//필드에 접근할 때는 getter/setter를 이용해야함(get.set 뒤에 첫글자는 무조건 대문자)
	/*
	  # Getter and Setter
		- 우클릭 -> source -> Generate Getters and Setters
		- Getter : 해당 클래스의 필드값을 반환해주는 메서드
		- Setter : 해당 클래스의 필드에 값을 대입하는 메서드
	 */
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		//ServletContext : 서버 정보가 저장되어 있는 객체
		ServletContext application = req.getServletContext();
		
		String name = req.getParameter("name");
		String korScore = req.getParameter("korScore");
		String engScore = req.getParameter("engScore");
		String mathScore = req.getParameter("mathScore");
		String ranks = "";
		
		Enumeration attrs = session.getAttributeNames();

		ArrayList<Integer> arr = new ArrayList<>();
		
		while(attrs.hasMoreElements()){

		String attr = (String)attrs.nextElement();
		myGrade mgf = (myGrade) session.getAttribute(attr);
		System.out.println(mgf.avg);
		
		if(mgf.avg != null) {
			System.out.println("들어감");
			arr.add(Integer.parseInt(mgf.avg));
		}
		
		}
		Collections.sort(arr);
		
		
		System.out.println("arr크기 : " + arr.size());
		
		int index = 1;
		
		
		System.out.println(((Integer.parseInt(korScore) + Integer.parseInt(engScore) + Integer.parseInt(mathScore)) /3) +"");
		
		for(int i=0; i < arr.size(); i++) {
			System.out.println(i + "번쨰 : " + arr.get(i));
			if(arr.get(i) > ((Integer.parseInt(korScore) + Integer.parseInt(engScore) + Integer.parseInt(mathScore)) /3)) {
				
				index = i+1;
			}else {
				index = arr.size();
			}
			
		}
		ranks = (index - arr.size() + 1)+"";
		session.setAttribute(name, new myGrade(name, korScore, engScore, mathScore, ranks));
//		session.setAttribute(name+"rank", new myGrade(name, korScore, engScore, mathScore, ranks));
//		session.setAttribute(name+ranks, attrs);
	
		
		req.getRequestDispatcher("/javabean/gradeview.jsp")
		.forward(req, resp);
		

	}
	
}

class myGrade{
	
	String name;
	String kor;
	String eng;
	String math;
	String avg;
	String rank;
	
	public myGrade(String name, String korScore, String engScore, String mathScore, String rank) {
		this.name = name;
		this.kor = korScore;
		this.eng = engScore;
		this.math = mathScore;
		this.rank = rank;
		avg = ((Integer.parseInt(korScore) + Integer.parseInt(engScore) + Integer.parseInt(mathScore)) /3)+"";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKor() {
		return kor;
	}

	public void setKor(String kor) {
		this.kor = kor;
	}

	public String getEng() {
		return eng;
	}

	public void setEng(String eng) {
		this.eng = eng;
	}

	public String getMath() {
		return math;
	}

	public void setMath(String math) {
		this.math = math;
	}

	public String getAvg() {
		return avg;
	}

	public void setAvg(String avg) {
		this.avg = avg;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("이름 : %s /국어 : %s /영어 : %s /수학 : %s /평균 : %s/ 등수 : %s", 
				name, kor,eng,math, avg, rank);
	}
	
}
