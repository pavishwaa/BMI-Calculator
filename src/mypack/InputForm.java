package mypack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/bmi")
public class InputForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/form.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double height1= Double.parseDouble(request.getParameter("height1"));
		double  height2= Double.parseDouble(request.getParameter("height2"));
		double  weight= Double.parseDouble(request.getParameter("weight"));
		String choice= request.getParameter("choice").toString();

		Bmi obj = new Bmi();
		obj.setHeight1(height1);
		obj.setHeight2(height2);
		obj.setWeight(weight);
		obj.setChoice(choice);
		double bmi = obj.getBmi();

		request.setAttribute("bmi", obj);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/result.jsp");
		rd.forward(request, response);
	}

}
