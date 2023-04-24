<%@page import="com.simplilearn.dao.EmployeeDAO"%>
<%@page import="com.simplilearn.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String firstName = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String salary = request.getParameter("salary");
	String dept = request.getParameter("dept");

	Employee e = new Employee();
	e.setFirstName(firstName);
	e.setLastName(lastname);
	e.setSalary(Double.valueOf(salary));
	e.setDepartment(dept);

	EmployeeDAO.addEmployee(e);
	
	response.sendRedirect("list-employee.jsp");
	%>
</body>
</html>