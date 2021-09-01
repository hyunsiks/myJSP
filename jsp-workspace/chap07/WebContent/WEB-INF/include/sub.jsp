<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach begin="1" end="${myNumber }" var="i">
	<div id="div${i }" >${i }></div>
</c:forEach>

</body>
</html>