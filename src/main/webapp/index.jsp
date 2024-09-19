<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" class="form-submit">
		<div class="form-submit__row">
			<label class="form-submit__label" for="firstName">First Name</label>
			<input type="text" class="form-submit__input" name="firstName">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="lastName">Last Name</label> <input
				type="text" class="form-submit__input" name="lastName">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="day">Date of birth</label>
			<div>
				<select name="day" id="day">
					<option value="" disabled selected hidden="true">Day:</option>
					<%
					for (int i = 1; i <= 31; i++) {
					%>
					<option value="<%=i%>"><%=i%></option>
					<%
					}
					%>
				</select> <select name="month" id="month" onchange="updateDays()">
					<option value="" disabled selected hidden>Month:</option>
					<%
					String[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
							"November", "December" };
					for (int i = 0; i < months.length; i++) {
					%>
					<option value="<%=i + 1%>"><%=months[i]%></option>
					<%
					}
					%>
				</select> <select name="year" id="year" onchange="updateDays()">
					<option value="" disabled selected hidden>Year:</option>
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
			<label class="form-submit__label" for="email">Email</label> <input
				type="email" class="form-submit__input" name="email">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="mobileNum">Mobile
				number</label> <input type="tel" class="form-submit__input" name="mobileNum">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label">Gender</label>
			<div>
				<input type="radio" name="gender" value="Male" checked /> <label
					for="Male">Male</label>
			</div>

			<div>
				<input type="radio" id="dewey" name="gender" value="Female" /> <label
					for="Female">Female</label>
			</div>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="address">Address</label>
			<textarea name="address" class="form-submit__input"></textarea>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="city">City</label>
			<input type="text" class="form-submit__input" name="city">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="name"></label>
		</div>
	</form>
</body>
</html>