<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
	<form action="registration-form" class="form-submit" method="get">
		<div class="form-submit__row">
			<label class="form-submit__label" for="firstName">First Name</label>
			<input type="text" class="form-submit__input" name="firstName">
			<span>(max 30 characters a-z and A-Z)</span>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="lastName">Last Name</label> <input
				type="text" class="form-submit__input" name="lastName"> <span>(max
				30 characters a-z and A-Z)</span>

		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="day">Date of birth</label>
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
				</select> <select name="month" id="month_sel" onchange="updateDays()">
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
				</select> <select name="year" id="year_sel" onchange="updateDays()">
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
			<label class="form-submit__label" for="email">Email</label> <input
				type="email" class="form-submit__input" name="email">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="mobileNum">Mobile
				number</label> <input type="tel" class="form-submit__input" name="mobileNum">
			<span>(10 digit number)</span>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label">Gender</label>
			<div>
				<label for="Male">Male</label> <input type="radio" name="gender"
					value="Male" checked />
			</div>

			<div>
				<label for="Female">Female</label> <input type="radio" name="gender"
					value="Female" />
			</div>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="address">Address</label>
			<textarea name="address" class="form-submit__input"></textarea>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="city">City</label> <input
				type="text" class="form-submit__input" name="city"> <span>(max
				30 characters a-z and A-Z)</span>

		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="pinCode">Pin Code</label> <input
				type="number" class="form-submit__input" name="pinCode"> <span>(6
				digit number)</span>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="state">State</label> <input
				type="text" class="form-submit__input" name="state"> <span>(max
				30 characters a-z and A-Z)</span>

		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="country">Country</label> <input
				type="text" class="form-submit__input" name="country">
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="hobby">Hobbies</label>
			<div>
				<label for="Drawing">Drawing</label> <input type="checkbox"
					name="hobby" value="Drawing" />
			</div>
			<div>
				<label for="Singing">"Singing"</label> <input type="checkbox"
					name="hobby" value="Singing" />
			</div>
			<div>
				<label for="Dancing">Dancing</label> <input type="checkbox"
					name="hobby" value="Dancing" />
			</div>
			<div>
				<label for="Sketching">Sketching</label> <input type="checkbox"
					name="hobby" value="Sketching" />
			</div>
			<div>
				<label for="Others">Others</label> <input type="checkbox"
					name="hobby" value="Others" onchange="otherChange()"
					id="other_check" /> <input type="text" class="form-submit__input"
					name="hobby" id="other_hobby" disabled>
			</div>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label" for="qualification">Qualification</label>
			<table>
				<tr>
					<th>S.No.</th>
					<th>Examination</th>
					<th>Board</th>
					<th class="perc">Percentage</th>
					<th class="year">Year of Passing</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Class X</td>
					<td><input type="text" class="max-char" name="x_char"></td>
					<td><input type="text" class="perc" name="x_perc"></td>
					<td><input type="text" class="year" name="x_year"></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Class XII</td>
					<td><input type="text" class="max-char" name="xx_char"></td>
					<td><input type="text" class="perc" name="xx_perc"></td>
					<td><input type="text" class="year" name="xx_year"></td>
				</tr>
				<tr>
					<td>3</td>
					<td>Graduation</td>
					<td><input type="text" class="max-char" name="gra_char"></td>
					<td><input type="text" class="perc" name="gra_perc"></td>
					<td><input type="text" class="year" name="gra_year"></td>
				</tr>
				<tr>
					<td>4</td>
					<td>Masters</td>
					<td><input type="text" class="max-char" name="mas_char"></td>
					<td><input type="text" class="perc" name="mas_perc"></td>
					<td><input type="text" class="year" name="mas_year"></td>
				</tr>
			</table>
		</div>
		<div class="form-submit__row">
			<label class="form-submit__label">Course applies for</label>

			<div>
				<label for="BCA">BCA</label> <input type="radio" name="apply"
					value="BCA" checked />
			</div>

			<div>
				<label for="B.com">B.com</label> <input type="radio" name="apply"
					value="B.com" />
			</div>
			<div>
				<label for="B.com">B.com</label> <input type="radio" name="apply"
					value="B.com" />
			</div>
			<div>
				<label for="B.A">B.A</label> <input type="radio" name="apply"
					value="B.A" />
			</div>
		</div>
		<div class="form-submit__btn">
			<input type="submit" value="Submit" class="form-submit__submit" /> <input
				type="reset" value="Reset" class="form-submit__reset?" />
		</div>
	</form>
	<script src="./assets/js/bai_1.js"></script>
</body>

</html>