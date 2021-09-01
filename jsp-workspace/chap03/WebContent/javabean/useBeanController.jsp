<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	# jsp : useBean
	
	 - 빈(Bean) 객체의 인스턴스를 생성하여 Attribute에 등록한다.
	 - 생성한 인스턴스를 어느 Attribute에 등록할지도 설정할 수 있다.
	
	# jsp : setProperty
	
	 - 빈 객체의 필드를 채우는 기능을 하는 jsp태그
	 - property 속성에 *를 설정하면 파라미터의 값을 이용해서 자동으로
	   빈 객체의 필드를 채운다
	 - 해당 빈 객체의 setter를 사용한다
	 
	 *input태그의 name값과 빈 클래스의 필드명을 일치시키면 자동으로 맵핑해준다
 --%>
<%-- <% --%>
<!-- // 	request.setAttribute("stu", new chpa03.bean.Student()); -->

<!-- // 	Student stu = (Student) request.getAttribute("stu'); -->
<!-- // 	stu.setKor(request.getParameter("kor")); -->
<!-- // 	stu.seteng(request.getParameter("eng")); -->
<!-- // 	stu.setmath(request.getParameter("math")); -->
<%-- %> --%>
<jsp:useBean id="stu" class="chap03.bean.Student" scope="request"/>
<jsp:setProperty name="stu" property="*"/>

<p>
	${stu.name}, ${stu.kor }, ${stu.eng }, ${stu.math }
</p>