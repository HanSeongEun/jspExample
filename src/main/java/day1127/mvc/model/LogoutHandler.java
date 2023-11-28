package day1127.mvc.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LogoutHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.getSession().invalidate();

		res.sendRedirect("form.do");
		return null;
	}

}
