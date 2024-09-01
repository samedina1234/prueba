<%-- 
    Document   : perfil1
    Created on : 1 sept 2024, 13:15:26
    Author     : Tuf
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>

<%
    // Obtén directamente el usuario desde la sesión implícita
    String usuario = (String) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>

<head>
    <title>Perfil de Usuario</title>
</head>
<body>
    <h1>Bienvenido, <%= usuario %>!</h1>
    <p>Esta es tu página de perfil.</p>

    <!-- Opción para cerrar sesión -->
    <form action="logout" method="post">
        <button type="submit">Cerrar sesión</button>
    </form>
</body>


