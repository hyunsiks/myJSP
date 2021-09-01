<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("EUC-KR");

	String firstName = request.getParameter("first-name");
	String lastName = request.getParameter("last-name");
	String time = request.getParameter("time");
	String intrests = request.getParameter("intrest");
%> 

<%!
	private String getTimeLabel(String time){
		switch (time){
		case "am":
			return "오전 희망";
		case "pm":
			return "오후 희망";
		case "other":
			return "그 외 시간";
		case "any":
			return "아무때나";
		default:
			return "버그임";
		}
	}
%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	FisrstName : <%=firstName != null ? firstName : "없음" %><br>
	LastName : <%=lastName != null ? lastName : "없음"%><br>

</body>
</html>