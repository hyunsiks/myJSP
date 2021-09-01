<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>RiverCleanupDayForm</title>
<style>
	td{
		padding-bottom: 20px;
	}
</style>
</head>
<body>
    
    <h3># form태그 복습</h3>
    <ul>
    	<li>id를 설정해두면 input태그의 form속성으로 해당 폼을 서낵할 수 있다</li>
    	<li>action속성 : submit이 발생했을 때 어느 URL로 요청보낼지를 정의한다</li>
    	<li>method속성 : submit이 발생했을 떄 어느 방식으로 요청 보낼지를 설정한다</li>
    	<li>Get방식으로 보내면 URL뒤에 데이터가 보이는 형태로 요청보낸다 ex) ?name=value (즐겨찾기됨)</li>
    	<li>POST방식으로 보내면 URL뒤에 데이터가 보이지 않으며 길이 제한이 없다 (즐겨찾기안됨)</li>
    </ul>
    
    <form id="registForm" 
    	action="http://localhost:8080/chap02/river/register" 
    	method="GET"></form>
    
    <hr>
    
    <table style="margin: auto;">
        <tr>
            <th colspan="3">
                <h1 style="font-weight: normal;">River Cleanup Day</h1>
                <h1>Volunteer Registration</h1>
                <hr>
            </th>
        </tr>
        <tr>
            <td><b>Full Name</b></td>
            <td>
                <input name="first-name" form="registForm" type="text" size="15"> <br>
                First Name
            </td>
            <td>
                <input name="last-name" form="registForm" type="text" size="15"> <br>
                Last Name
            </td>
        </tr>
        <tr>
            <td><b>Contact No.</b></td>
            <td>
                <input type="text" size="15"> - <br>
                Area Code
            </td>
            <td>
                <input type="text" size="15"> <br>
                Phone Number
            </td>
        </tr>
        <tr>
            <td><b>E-mail</b></td>
            <td colspan="2">
                <input type="email" size="30" placeholder="ex:myname@example.com"> <br>
                example@example.com
            </td>
        </tr>
        <tr>
            <td>
                <b>What time can <br>
                you work?</b>
            </td>
            <td colspan="2">
                <input type="radio" name="time" id="" checked> <label>Any time</label> <br>
                <input type="radio" name="time" id=""> <label>8am - Noon</label> <br>
                <input type="radio" name="time" id=""> <label>1 - 5pm</label> <br>
                <input type="radio" name="time" id=""> <label>Other</label> <br>
            </td>
        </tr>
        <tr>
            <td><b>Interested in:</b></td>
            <td colspan="2">
                <input type="checkbox" name="intrest" id=""> Cleaning <br>
                <input type="checkbox" name="intrest" id=""> Transportation <br>
                <input type="checkbox" name="intrest" id=""> Wherever Needed <br>
                <input type="checkbox" name="intrest" id=""> Food Service <br>
                <input type="checkbox" name="intrest" id=""> First Aid <br>
                <input type="checkbox" name="intrest" id=""> Other
            </td>
        </tr>
        <tr>
            <td><b>Comments></b></td>
            <td colspan="2">
                <textarea cols="40" rows="7"></textarea>
            </td>
        </tr>
        <tr>
            <th colspan="3">
                <input style="padding: 15px;" type="submit" 
                	form="registForm" value="Submit Form">
            </th>
        </tr>
    </table>

</body>
</html>