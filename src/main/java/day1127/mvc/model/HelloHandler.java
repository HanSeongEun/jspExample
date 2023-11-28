package day1127.mvc.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import day1127.mvc.model.CommandHandler;

public class HelloHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("hello", "안녕하세요!");
		return "/WEB-INF/view/hello.jsp";
	}

}