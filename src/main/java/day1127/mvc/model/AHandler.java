package day1127.mvc.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		req.setAttribute("a", "a를 요청하셨습니다.");
		return "WEB-INF/view/a.jsp";
	}

}
