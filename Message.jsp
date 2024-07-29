
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .message {
        font-size: 1.5em;
        font-weight: bold;
        color: #333;
        text-align: center;
    }
</style>
</head>
<body>
    <div class="message">
        <%= request.getAttribute("msg") %>
    </div>
</body>
</html>


