<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ȭ Ƽ�� ����ǥ</title>
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
                <h1 style="font-weight: normal;">��ȭ Ƽ�� ����ǥ</h1>
                <hr>
            </th>
        </tr>
        <tr>
            <td><b>����</b></td>
            <td><b>�󿵽ð�</b></td>
            <td><b>����</b></td>
            <td><b>û�ҳ�</b></td>
            <td><b>�ôϾ�</b></td>
            <td><b>�����</b></td>
        </tr>
        <tr>
            <td rowspan="4"><b>����<br>(��~��)</b></td>
            <td><b>����</b></td>
            <td>
                6000��<br><input name="a1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                6000��<br><input name="a2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="a3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="a4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>�Ϲ�</b></td>
            <td>
                7000��<br><input name="b1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                7000��<br><input name="b2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="b3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="b4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>������</b></td>
            <td>
                9000��<br><input name="c1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                8000��<br><input name="c2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="c3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="c4" form="mvTicektForm" type="text" size="15">
            </td>
        </tr>
        <tr>
            <td><b>�ɾ�</b></td>
            <td>
                7000��<br><input name="d1" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                7000��<br><input name="d2" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="d3" form="mvTicektForm" type="text" size="15">
            </td>
            <td>
                5000��<br><input name="d4" form="mvTicektForm" type="text" size="15">
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