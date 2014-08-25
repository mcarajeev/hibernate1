<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="com.bean.Student" />
	<jsp:getProperty property="name" name="student" />
	<jsp:getProperty property="age" name="student" />
	<br>after setting value<br>
	<jsp:setProperty property="name" name="student" value="ram" />
	<jsp:setProperty property="age" name="student" value="20" />
	<jsp:getProperty property="name" name="student" />
	<jsp:getProperty property="age" name="student" />
</body>
</html>