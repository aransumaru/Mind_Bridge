<%-- 
    Document   : editUser
    Created on : Oct 15, 2024, 1:54:09 PM
    Author     : Admin
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body>
        <h1>Edit User</h1>
        <form action="editUser" method="POST">
            <input type="hidden" name="userId" value="${user.userId}">
            <div>
                <label>Name:</label>
                <input type="text" name="name" value="${user.name}" readonly>
            </div>
            <div>
                <label>Email:</label>
                <input type="text" name="email" value="${user.email}" readonly>
            </div>
            <div>
                <label>Point:</label>
                <input type="text" name="point" value="${user.point}">
            </div>
            <div>
                <button type="submit">Save</button>
            </div>
        </form>
    </body>
</html>