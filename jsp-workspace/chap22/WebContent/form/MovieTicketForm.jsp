<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영화 티켓 가격표</title>
<style>
	
	td{
		border: solid 3px black;
	}
</style>
</head>
<body>

    <form id="mvTicektForm" 
    	action="http://localhost:8080/chap22/movie/ticket" 
    	method="GET"></form>
    	
    <table style="margin: auto;">
        <tr>
            <th colspan="3">
                <h1 style="font-weight: normal;">영화 티켓 가격표</h1>
                <hr>
            </th>
        </tr>
        <tr>
            <td><b>구분</b></td>
            <td><b>상영시간</b></td>
            <td><b>성인</b></td>
            <td><b>청소년</b></td>
            <td><b>시니어</b></td>
            <td><b>장애인</b></td>
        </tr>
        <tr>
            <td rowspan="4"><b>평일<br>(월~목)</b></td>
            <td><b>조조</b></td>
            <td>
                6000원<br><input name="a1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                6000원<br><input name="a2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="a3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="a4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>일반</b></td>
            <td>
                7000원<br><input name="b1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                7000원<br><input name="b2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="b3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="b4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>프라임</b></td>
            <td>
                9000원<br><input name="c1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                8000원<br><input name="c2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="c3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="c4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>심야</b></td>
            <td>
                7000원<br><input name="d1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                7000원<br><input name="d2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="d3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000원<br><input name="d4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        
        
        <tr>
            <th colspan="3">
                <input style="padding: 15px;" type="submit" 
                	form="mvTicektForm" value="Submit Form">
            </th>
        </tr>
    </table>

</body>
</html>