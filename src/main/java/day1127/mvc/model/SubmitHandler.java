package day1127.mvc.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SubmitHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		// req.getSession().invalidate();

		String id = req.getParameter("id");
		String passwd = req.getParameter("password");

		if (id.equals(passwd)) {
			req.getSession().setAttribute("SUCCESS", id);

		} else {
			req.getSession().setAttribute("FAIL", id);
		}

		return "WEB-INF/view/submit.jsp";
	}

}
