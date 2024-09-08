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
            padding: 1rem 0;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0;
            font-size: 1.5rem;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        nav ul li a:hover {
            color: #FFD700;
        }

        main {
            padding: 2rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
        }

        .scholarship-card {
            background-color: white;
            border-radius: 10px;
            padding: 1.5rem;
            width: 300px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .scholarship-card:hover {
            transform: translateY(-10px);
        }

        .scholarship-card h3 {
            margin: 0;
            font-size: 1.3rem;
            color: #007BFF;
        }

        .scholarship-card p {
            margin: 0.5rem 0;
            color: #555;
        }

        .scholarship-card .scholarship-meta {
            font-size: 0.9rem;
            color: #777;
        }

        .scholarship-card .scholarship-meta span {
            display: block;
            margin-top: 0.3rem;
        }

    </style>
</head>
<body>
    <header>
        <h1>Lista de Becas</h1>
        <nav>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="lista_Becas">Lista de Becas</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <c:forEach var="beca" items="${becas}">
            <div class="scholarship-card">
                <h3>${beca.titulo}</h3>
                <p>Descripción: ${beca.descripcion}</p>
                <div class="scholarship-meta">
                    <span>Tipo: ${beca.tipo}</span>
                    <span>Carrera: ${beca.carrera}</span>
                    <span>Fecha Inicio: ${beca.fechaInicio}</span>
                    <span>Fecha Fin: ${beca.fechaFin}</span>
                </div>
            </div>
        </c:forEach>
    </main>
</body>
</html>
