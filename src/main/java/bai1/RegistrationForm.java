package bai1;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class RegistrationForm
 */
@WebServlet(urlPatterns = "/registration-form")
public class RegistrationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Student student = new Student();
		student.setFirstName(request.getParameter("firstName"));
		student.setLastName(request.getParameter("lastName"));
		student.setDateOfBirth(request.getParameter("day")+ "/" + request.getParameter("month") + "/" + request.getParameter("year"));
		student.setEmail(request.getParameter("email"));
		student.setPhoneNumber(request.getParameter("mobileNum"));
		student.setGender(request.getParameter("gender"));
		student.setAddress(request.getParameter("address"));
		student.setCity(request.getParameter("city"));
		student.setPinCode(request.getParameter("pinCode"));
		student.setState(request.getParameter("state"));
		student.setCountry(request.getParameter("country"));
		String[] hobbies = request.getParameterValues("hobby");
		student.setHobbies(List.of(hobbies));
		student.setClassX(new QualificationAtr(request.getParameter("x_char"), Float.valueOf(request.getParameter("x_perc")), Integer.valueOf(request.getParameter("x_year"))));
		student.setClassXII(new QualificationAtr(request.getParameter("xx_char"), Float.valueOf(request.getParameter("xx_perc")), Integer.valueOf(request.getParameter("xx_year"))));
		student.setGraduation(new QualificationAtr(request.getParameter("gra_char"), Float.valueOf(request.getParameter("gra_perc")), Integer.valueOf(request.getParameter("gra_year"))));
		student.setMasters(new QualificationAtr(request.getParameter("mas_char"), Float.valueOf(request.getParameter("mas_perc")), Integer.valueOf(request.getParameter("mas_year"))));
		student.setCourseApplied(request.getParameter("apply"));
		
		request.setAttribute("student", student);
		RequestDispatcher rd = request.getRequestDispatcher("registration-success.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
