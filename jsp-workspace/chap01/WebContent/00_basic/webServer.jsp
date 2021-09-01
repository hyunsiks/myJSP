<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���� ����</title>
</head>
<body>

	<h3># ������(loopback) �ּ�</h3>
	
	<ul>
		<li>127.0.0.1 : �ڱ� �ڽ��� ����Ű�� IP�ּ�</li>
		<li>localhost : ��������� ������ �ʰ� �׳� �ڱ� �ڽ��� ��ǻ�ͷ� ����</li>
	</ul>
	
	<h3># HTTP URL�� ����</h3>
	
	<p>��������://IP�ּ�:��Ʈ��ȣ/���ϴ� �ڿ��� ���</p>
	<ul>
		<li><a href="http://localhost:8080/chap01/00_basic/index.jsp">�����ϱ�</a></ul>
		<li>8080�� ��Ĺ�� �⺻������ ����ϴ� ��Ʈ��ȣ�̴�.</li>
		<li>
			https://www.naver.com<br>
			��������: https<br>
			IP�ּ� : www.naver.com (���������� ��ü)<br>
			��Ʈ��ȣ : http�� �⺻ ��Ʈ�� 80, https�� 443<br>
			���ϴ� �ڿ��� ���: / (�⺻ �ڿ�)<br>
		</li>
	</ul>
	
	<h3># Domain Name Service (DNS)</h3>
	<ul>
		<li>URL���� IP�ּҰ� �ԷµǾ�� �ϴ� �ڸ��� IP�ּ� ��� ���������� �Ǿ��ִٸ�
		    �ٷ� �ش� ������ ã�ư��� ���� �ƴ϶� DNS������ �鷯 IP�ּҷ� ��ȯ�� �ڿ�
		    ã�ư��� �ȴ�</li>
		<li>�츮 IP�ּҴ� DNS������ ��ϵǾ����� �ʱ� ������ ������ ������ �̸��� ����� �� ����</li>
		<li>��¥�� ������ �̸��� ����� �� �ִ� ���񽺵鵵 ���� �ִ�</li>
	</ul>

	<h3># �� ����</h3>
	<ul>
		<li>24�ð� ����ϰ� �ִٰ� ����ڰ� �����ϸ� 
		    ����ڰ� ���ϴ� �� �������� �������ִ� ���α׷�</li>
		<li>����ڰ� � �� �������� ���ϴ����� ����ڰ� 
		    ��û�ϴ� URL�� ���� �����Ѵ�</li>
	</ul>
	
	<h3># Dynamic Web Project</h3>
	<ul>
		<li>java, scr/main/java, Java Resources : �ڹ� �ڵ带 �ۼ��ϴ� ����</li>
		<li>
			webapp, WebContent
			- �� ������ ��ϵ� �ڿ����� �����ϴ� ����<br>
			- �����ϴ� ����ڿ��� �̰��� ��ϵ� .html, .jsp���� �������ش�<br>
		</li>
	</ul>
</body>
</html>