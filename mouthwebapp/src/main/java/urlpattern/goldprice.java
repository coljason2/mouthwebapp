package urlpattern;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.getgoldprice;

public class goldprice extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(airpollution.class.getName());

	public goldprice() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// log.info("---------------------------------about-doGet----------------");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		getgoldprice datas = new getgoldprice();
		request.setAttribute("prices", datas.getprice());
		// log.info("---------------------------------about-doPost----------------");
		RequestDispatcher view = request.getRequestDispatcher("/pages/goldprice.jsp");
		view.forward(request, response);
	}
}