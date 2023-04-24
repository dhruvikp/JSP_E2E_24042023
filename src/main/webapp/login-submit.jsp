<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	if (username == null || password == null || username.equals("") || password.equals("")) {
		throw new ServletException(":: Mandatory Parameters are missing ::");
	}

	if (username.equals("admin") && password.equals("admin")) {
		session.setAttribute("username", username);
		out.println("<h2 style='color:green'> Successfully Logged In!! </h2>");
	} else {
		throw new ServletException(":: Invalid Credentials ::");
	}
	%>
<jsp:include page="footer.jsp" />
</body>
</html>