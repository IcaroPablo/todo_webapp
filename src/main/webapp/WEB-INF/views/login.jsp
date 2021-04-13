<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>opa fion</title>
</head>
<body>
<p>${erro}</p>
<form action="/login" method="post">
Name: <input type="text" name="name"/>
Password: <input type="password" name="password"/>
<input type="submit" value="login"/>
</form>
</body>
</html>