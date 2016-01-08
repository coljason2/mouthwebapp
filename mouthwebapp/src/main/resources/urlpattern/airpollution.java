package urlpattern;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.airparses;

/**
 * Servlet implementation class airpollution
 */
public class airpollution extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(airpollution.class.getName());

	public airpollution() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		airparses getairdata = new airparses();
		log.info(getairdata.toString());
		request.setAttribute("data", getairdata.getWebData());
		RequestDispatcher view = request
				.getRequestDispatcher("/pages/twaircondition.jsp");
		view.forward(request, response);
	}

}
