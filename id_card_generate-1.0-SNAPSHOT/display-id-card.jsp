<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID Card</title>
    <link rel="stylesheet" href="styles_display.css">
</head>
<body>
<div class="id-card-holder">
    <div class="id-card">
        <div class="id-card-header">
            <h2> SAKEC </h2>
        </div>
        <div class="id-card-body">
            <p>Name: <%= request.getAttribute("name") %></p>
            <p>Branch: <%= request.getAttribute("branch") %></p>
            <p>Roll Number: <%= request.getAttribute("rollNumber") %></p>
            <p>Phone Number: <%= request.getAttribute("phoneNumber") %></p>
            <%
                // Retrieve the photo path from the request attribute
                String photoPath = (String) request.getAttribute("photoPath");
                if (photoPath != null) {
            %>
            <img src="<%= request.getContextPath() %>/<%= photoPath %>" alt="Profile Picture" class="photo">
            <%
            } else {
            %>
            <p>No photo uploaded</p>
            <%
                }
            %>
        </div>
        <div class="id-card-footer">
            <p>Issued on: <%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %></p>
        </div>
    </div>
</div>
<button onclick="window.print()">Print ID Card</button>
</body>
</html>