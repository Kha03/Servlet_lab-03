<%@page import="bai2.model.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form_2</title>
<link rel="stylesheet" href="./assets/css/style2.css">

</head>
<body>
	<form class="form-submit" action="RegisterAction" method="post">
		<h1 class="title">User Register Form</h1>
		<div class="form-submit__row">
			<input type="text" name="firstName" placeholder="First Name" /> <input
				type="text" name="lastName" placeholder="Last Name" />
		</div>
		<div class="form-submit__row">
			<input type="email" name="email" placeholder="Email" />
		</div>
		<div class="form-submit__row">
			<input type="email" name="re_end_email" placeholder="Re-enter Email" />
		</div>
		<div class="form-submit__row">
			<input type="password" name="password" placeholder="Password" />
		</div>
		<p>Birthday</p>
		<div class="form-submit__row">

			<div>
				<select name="day" id="day_sel">
					<option value="" disabled selected hidden="true">Day:</option>
					<%
					for (int i = 1; i <= 31; i++) {
					%>
					<option value="<%=i%>"><%=i%></option>
					<%
					}
					%>
				</select> <select name="month" id="month_sel">
					<option value="" disabled selected hidden="true">Month:</option>
					<%
					String[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
							"November", "December" };
					for (int i = 0; i < months.length; i++) {
					%>
					<option value="<%=i + 1%>"><%=months[i]%></option>
					<%
					}
					%>
				</select> <select name="year" id="year_sel">
					<option value="" disabled selected hidden="true">Year:</option>
					<%
					int currentYear = Calendar.getInstance().get(Calendar.YEAR);
					for (int i = currentYear; i >= 1900; i--) {
					%>
					<option value="<%=i%>"><%=i%></option>
					<%
					}
					%>
				</select>
			</div>
		</div>
		<div class="form-submit__row">
			<div>
				<label for="Male">Male</label> <input type="radio" name="gender"
					value="Male" checked />
			</div>

			<div>
				<label for="Female">Female</label> <input type="radio" name="gender"
					value="Female" />
			</div>
		</div>
		<input type="submit" value="Sign Up" class="submit_input" />
	</form>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: red;"><%=message%></p>
	<%
	}
	%>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Birthday</th>
			<th>Gender</th>
		</tr>
		<%
		List<User> userList = (List<User>) request.getAttribute("users");
		if (userList != null && !userList.isEmpty()) {
			for (User user : userList) {
		%>
		<tr>
			<td><%=user.getFirstName()%></td>
			<td><%=user.getLastName()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getBirthday()%></td>
			<td><%=user.getGender()%></td>
		</tr>
		<%
		}
		} else {
		%>
		<tr>
			<td colspan="5">No registered users yet.</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>