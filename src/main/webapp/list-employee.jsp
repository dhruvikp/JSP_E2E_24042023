<%@page import="com.simplilearn.entity.Employee"%>
<%@page import="com.simplilearn.dao.EmployeeDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Employee> employees = EmployeeDAO.listEmployees();
		request.setAttribute("emplist", employees);
	%>
	
	<table style="border: 2px solid black;">
		<tr>
			<th>Employee ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>
		
		<c:forEach items="${emplist}" var="emp">
			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDepartment()}</td>
			</tr>
		</c:forEach>
		
		<a href="add-employee.jsp">Click Here</a> to add another employee.
	</table>
</body>
</html>