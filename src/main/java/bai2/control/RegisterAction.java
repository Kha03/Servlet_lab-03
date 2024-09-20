package bai2.control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import bai2.model.User;

/**
 * Servlet implementation class RegisterAction
 */
@WebServlet(urlPatterns = { "/RegisterAction" })
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<User> users = new ArrayList<User>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterAction() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String reEmail = request.getParameter("re_end_email");
		String password = request.getParameter("password");
		String birthday = request.getParameter("day") + "/" + request.getParameter("month") + "/"
				+ request.getParameter("year");
		String gender = request.getParameter("gender");

		String message = null; 

		if (firstName == null || lastName == null || email == null || reEmail == null || password == null || gender == null || 
			firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || reEmail.isEmpty() || password.isEmpty()) {
			message = "Vui lòng điền đầy đủ thông tin!";
			System.out.println(firstName);
			System.out.println(lastName);
			System.out.println(email);
			System.out.println(reEmail);
			System.out.println(password);
			System.out.println(birthday);
			System.out.println(gender);
		} else if (!email.equals(reEmail)) {
			message = "Email không trùng khớp!";
		}
		if (message != null) {
			request.setAttribute("message", message);
			request.setAttribute("users", users);  
			request.getRequestDispatcher("index_2.jsp").forward(request, response);
		} else {
			User user = new User(firstName, lastName, reEmail, password, birthday, gender);
			users.add(user);

			request.setAttribute("users", users);
			request.getRequestDispatcher("index_2.jsp").forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
