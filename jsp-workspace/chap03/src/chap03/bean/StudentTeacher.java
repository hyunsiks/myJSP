package chap03.bean;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/student/add")
public class StudentTeacher extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		myGrade2 stu = new myGrade2();
		stu.setName(req.getParameter("name"));
		stu.setKorScore(req.getParameter("kor"));
		stu.setEngScore(req.getParameter("eng"));
		stu.setMathScore(req.getParameter("math"));
		
		System.out.printf("방금 추가한 학생으 평균 %d점으로 %d등 입니다",
					stu.getAvg(), stu.getRank());
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/javabean/formTeacher.jsp").forward(req, resp);
	}
}
class myGrade2{
	
	private final static ArrayList<myGrade2> ALL_STUDENTS = new ArrayList<>();
	
	String name;
	String korScore;
	String engScore;
	String mathScore;
	int avg;
	int rank;
	
	public myGrade2() {
		// TODO Auto-generated constructor stub
		ALL_STUDENTS.add(this);
	}
	
	public myGrade2(String name, String kor, String eng, String math) {
		ALL_STUDENTS.add(this);
		
		this.name = name;
		this.korScore = kor;
		this.engScore = eng;
		this.mathScore = math;
	}
	
	void update() {
		avg = ((Integer.parseInt(korScore) + Integer.parseInt(engScore) + Integer.parseInt(mathScore)) /3);
		
		ALL_STUDENTS.sort(new Comparator<myGrade2>() {

			@Override
			public int compare(myGrade2 o1, myGrade2 o2) {
				// TODO Auto-generated method stub
				int compare1 = Double.compare(o2.avg, o1.avg);
				return compare1 != 0? compare1 : o1.name.compareTo(o2.name);
			}
			
		});
		rank = ALL_STUDENTS.indexOf(this) + 1;
	}
	
//	public myGrade2() {
//	
//		avg = ((Integer.parseInt(korScore) + Integer.parseInt(engScore) + Integer.parseInt(mathScore)) /3)+"";
//	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKorScore() {
		return korScore;
	}

	public void setKorScore(String korScore) {
		this.korScore = korScore;
	}

	public String getEngScore() {
		return engScore;
	}

	public void setEngScore(String engScore) {
		this.engScore = engScore;
	}

	public String getMathScore() {
		return mathScore;
	}

	public void setMathScore(String mathScore) {
		this.mathScore = mathScore;
	}
	
	public int getAvg() {
		return avg;
	}

	public void setAvg(int avg) {
		this.avg = avg;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

}
