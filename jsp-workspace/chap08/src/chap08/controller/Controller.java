package chap08.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller{
	
	void Control(HttpServletRequest req, HttpServletResponse resp);
}
