package day1125.mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import day1127.mvc.model.CommandHandler;
import day1127.mvc.model.NullHandler;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/controllerUsingFile")
public class ControllerUsingFile extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// <커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();

	public void init() throws ServletException {
		Properties prop = new Properties();
		// 현 어플리케이션 내 /WEB-INF/commandHandler.properties경로 지정
		String configFilePath = getServletContext().getRealPath("/WEB-INF/commandHandler.properties");
		try (FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		} catch (IOException e) {
			throw new ServletException(e);
		}
		Iterator keyIter = prop.keySet().iterator();
		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();// 요청
			String handlerClassName = prop.getProperty(command);// 클랙스명
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getParameter("cmd");
		CommandHandler handler = commandHandlerMap.get(command);
		if (handler == null) {
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch (Throwable e) {
			throw new ServletException(e);
		}
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}// process()
}