<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multi-language Demo</title>
</head>
<body>
	<c:set var="languageCode" value="${param.radLanguageCode}"></c:set>
	<c:if test="${not empty languageCode}">
		<fmt:setLocale value="${languageCode}" scope="session" />
	</c:if>
	<fmt:setBundle basename="resource" scope="session" />
	<form>
		<fmt:message key="languageMassage"></fmt:message>
		<input type="radio" name="radLanguageCode" value="vi"
			<c:if test="${languageCode == 'vi'}">checked</c:if> />
		<fmt:message key="vn"></fmt:message>
		<input type="radio" name="radLanguageCode" value="en"
			<c:if test="${languageCode == 'en'}">checked</c:if> />
		<fmt:message key="en"></fmt:message>
		<input type="submit" name="submit"
			value=<fmt:message key="chooseButton"></fmt:message> />
		<table>
			<tr>
				<td><fmt:message key="userName"></fmt:message></td>
				<td><input type="text" name="txtName"></td>
			</tr>
			<tr>
				<td><fmt:message key="password"></fmt:message></td>
				<td><input type="password" name="txtPassword"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value=<fmt:message key='loginButton'/> /></td>

			</tr>
		</table>
	</form>


</body>
</html>