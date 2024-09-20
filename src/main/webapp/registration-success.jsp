<%@page import="bai1.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Student student = new Student();
	student = (Student) request.getAttribute("student");
	// Kiểm tra xem đối tượng có tồn tại không
	if (student != null) {
		// In ra thông tin của đối tượng Student
		out.println("<h1>Student Details</h1>");
		out.println("<p><strong>First Name:</strong> " + student.getFirstName() + "</p>");
		out.println("<p><strong>Last Name:</strong> " + student.getLastName() + "</p>");
		out.println("<p><strong>Date of Birth:</strong> " + student.getDateOfBirth() + "</p>");
		out.println("<p><strong>Email:</strong> " + student.getEmail() + "</p>");
		out.println("<p><strong>Phone Number:</strong> " + student.getPhoneNumber() + "</p>");
		out.println("<p><strong>Gender:</strong> " + student.getGender() + "</p>");
		out.println("<p><strong>Address:</strong> " + student.getAddress() + "</p>");
		out.println("<p><strong>City:</strong> " + student.getCity() + "</p>");
		out.println("<p><strong>Pin Code:</strong> " + student.getPinCode() + "</p>");
		out.println("<p><strong>State:</strong> " + student.getState() + "</p>");
		out.println("<p><strong>Country:</strong> " + student.getCountry() + "</p>");

		out.println("<p><strong>Hobbies:</strong> " + String.join(", ", student.getHobbies()) + "</p>");

		out.println("<h2>Qualifications</h2>");
		out.println("<p><strong>Class X:</strong> " + student.getClassX() + "</p>");
		out.println("<p><strong>Class XII:</strong> " + student.getClassXII() + "</p>");
		out.println("<p><strong>Graduation:</strong> " + student.getGraduation() + "</p>");
		out.println("<p><strong>Masters:</strong> " + student.getMasters() + "</p>");

		out.println("<p><strong>Course Applied:</strong> " + student.getCourseApplied() + "</p>");
	} else {
		out.println("<p>No student information available.</p>");
	}
	%>
</body>
</html>