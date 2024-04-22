package logicClasses;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ConsumerServlet")
public class ConsumerServlet extends HttpServlet {
	
	public ConsumerServlet() {
		super();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
				
		
		// getting data from consumer.jsp
		String number = request.getParameter("consumerNo");
		int Number = Integer.parseInt(number);  //typeCasting is done here because data comes in string but data type is integer
		String name = request.getParameter("consumerName");
		String cmReading = request.getParameter("currentMonthReading");
		double cm = Double.parseDouble(cmReading);  //typeCasting
		String pmReading = request.getParameter("previousMonthReading");
		double pm = Double.parseDouble(pmReading);  //typeCasting
		String consumerType = request.getParameter("consumerType");
		
		// java class's object is created here so that we can calculate our bill 
		CalculateBill eb = new CalculateBill();
		double  bill = eb.calculateBill(Number, consumerType, cm, pm, consumerType);
		
		
		// to send this data on next page DisplayBill.jsp
		session.setAttribute("Number", Number);
		session.setAttribute("name", name);
		session.setAttribute("cm",cm);
		session.setAttribute("pm",pm);
		session.setAttribute("consumerType", consumerType);	
		session.setAttribute("bill", bill);
		
		response.sendRedirect("DisplayBill.jsp");
		
		
		
		
	}

}
