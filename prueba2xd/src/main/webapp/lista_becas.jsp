<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Becas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #007BFF;
            color: white;
            padding: 0.5rem 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            flex: 1;
            text-align: left;
        }

        .logo h1 {
            margin: 0;
            font-size: 1.2rem;
        }

        nav {
            flex: 1;
            display: flex;
            justify-content: flex-end;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #FFD700;
        }

        main {
            padding: 2rem;
        }

        .scholarship-list {
            background-color: white;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-top: 0;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            border-bottom: 1px solid #ddd;
            padding: 1rem 0;
            display: flex;
            align-items: center;
        }

        .scholarship-details {
            flex: 1;
        }

        h3 {
            margin: 0;
            color: #333;
        }

        p {
            margin: 0.5rem 0;
            color: #555;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Lista de Becas</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="listarBecas">Lista de Becas</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="scholarship-list">
            <h2>Lista de Becas Disponibles</h2>
            <ul>
                <c:forEach var="beca" items="${becas}">
                    <li>
                        <div class="scholarship-details">
                            <h3>${beca.titulo}</h3>
                            <p>Tipo: ${beca.tipo}</p>
                            <p>Carrera: ${beca.carrera}</p>
                            <p>Descripción: ${beca.descripcion}</p>
                            <p>Fecha Inicio: ${beca.fechaInicio}</p>
                            <p>Fecha Fin: ${beca.fechaFin}</p>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </main>
</body>
</html>
