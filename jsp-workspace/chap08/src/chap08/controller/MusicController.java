package chap08.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MusicController implements Controller{


	@Override
	public void Control(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		//uri '/music'으로 들어왔을 때의 처리
		if(req.getMethod().equals("GET")) {
			
		}else if(req.getMethod().equals("POST")) {
			
		}
		
		//DB에서 꺼낸 데이터를 어트리뷰트에 실어놓을 수 있다
		req.setAttribute("music", "abc");
		req.setAttribute("artist", "임창정");
		req.setAttribute("title", "제주도푸른밤");
	}
}
