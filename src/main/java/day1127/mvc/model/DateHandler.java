package day1127.mvc.model;

import java.util.Date;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("today", new Date());
		return "WEB-INF/view/date.jsp";
	}

}
