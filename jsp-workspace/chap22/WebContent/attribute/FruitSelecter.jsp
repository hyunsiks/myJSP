<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FruitSelecter.jsp</title>
<style>
	#fruit-title{
		text-align: center;
	}
	#fruit-container{
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		grid-column-gap: 5%;
		width: 600px;
		margin: auto;
	}
	#fruit-container > div {
		height: 200px;
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;
		border: solid 1px black;
	}
	#pineapple {
		background-image: url('https://imgnn.seoul.co.kr/img/upload/2014/06/09/SSI_20140609135902.jpg');
	}
	#orange {
		background-image: url('https://post-phinf.pstatic.net/MjAxNzAyMjFfMjEz/MDAxNDg3NjQ2NTgwOTQz.Km2Ku7rSy7w32I2EIv_itht78uj5B8thWbF868qWRnkg.iDuVkIFH_na37Qwy1abtEtwx133HeVIyPcjCSOTHf1Eg.JPEG/orange_%286%29.jpg?type=w1200');
	}
	#mango {
		background-image: url('https://post-phinf.pstatic.net/MjAxOTA2MDdfODEg/MDAxNTU5ODkyODg0MTMz.ayPXeT2FKudAFii0CF4q9dcSVFNq4S4euS2RDTf16L8g.UARCu0SGusDyre17kSo2P5U4YP0qKEXO52AYdPiLcFUg.JPEG/1.jpg?type=w1200');
	}
</style>
</head>
<body>

	<h3 id="fruit-title">과일을 골라보세요</h3>
	
	<!-- data-속성 : 해당 속성에 저장한 값은 자바스크립트에서 꺼낼수있는 설정값이다 -->
	<div id="fruit-container">
		<div id="pineapple" class="fruit" 
			data-fruit-name="pineapple"
			data-fruit-price="5000"></div>
		<div id="orange" class="fruit" 
			data-fruit-name="orange"
			data-fruit-price="1000"></div>
		<div id="mango" class="fruit" 
			data-fruit-name="mango"
			data-fruit-price="2500"></div>
	</div>

<script src="./js/fruit.js"></script>
</body>
</html>