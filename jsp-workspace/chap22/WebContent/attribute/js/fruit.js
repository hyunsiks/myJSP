const fruits = document.getElementsByClassName('fruit');
const pineapple = document.getElementById('pineapple');
const orange = document.getElementById('orange');
const mango = document.getElementById('mango');

// 자바스크립트로 GET방식 요청을 보내는 아주 기본적인 방법 (일부러 ?형식으로 GET방식으로 만든다, form을 만들지 않고 값을 보낼 수 있다)
function moveToController(fruitName){
	location.href = '/chap22/fruit/controller?fruit=' + fruitName;
}
Array.from(fruits).forEach((f)=> {
	f.addEventListener('click', ()=>{
		moveToController(f.dataset.fruitName);
	})
});

//주석하는방법 : ctrl + shift + c
//pineapple.addEventListener('click', () =>{
//	moveToController('pineapple');
//});
//orange.addEventListener('click', () =>{
//	moveToController('orange');
//});
//mango.addEventListener('click', () =>{
//	moveToController('mango');
//});
//
//console.log('pineapple element의 이름: ', pineapple.dataset.fruitName);
//console.log('pineapple element의 가격: ', pineapple.dataset.fruitPrice);