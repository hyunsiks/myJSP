
const addForm = document.querySelector('#addForm');
const status = document.querySelector('#status');

const continueBtn = document.querySelector('#completeBtn');
const completeBtn = document.querySelector('#continueBtn');

continueBtn.addEventListener('click', (e) =>{
	console.log("확인완료");
	status.setAttribute("value", "M");
	addForm.submit();
});

completeBtn.addEventListener('click', (e) =>{
	console.log("확인나중");
	status.setAttribute("value", "R");
	addForm.submit();
});

