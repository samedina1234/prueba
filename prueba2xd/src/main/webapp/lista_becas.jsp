<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Listado de Becas</title>
      <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #00796b;
        }

        .container {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Estilo de tarjeta */
        .beca-card {
            background-color: white;
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 1px solid #b2ebf2;
            transition: transform 0.3s ease;
            display: flex; /* Cambiado a flex para imagen al lado */
            align-items: center; /* Alineación vertical centrada */
        }

        .beca-card:hover {
            transform: translateY(-5px);
        }

        .beca-card .image-container {
            flex-shrink: 0;
            margin-right: 20px;
        }

        .beca-card .image-container img {
            max-width: 150px; /* Tamaño máximo de la imagen */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .beca-card h2 {
            color: #00796b;
            margin-bottom: 10px;
            font-weight: 700;
            font-size: 24px;
        }

        .beca-card p {
            margin: 5px 0;
            font-size: 16px;
            color: #555;
        }

        .beca-card .details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .details div {
            flex-basis: 48%;
        }

        .beca-card .description {
            font-style: italic;
        }

        .beca-card .apply-button {
            margin-top: 15px;
            display: block;
            text-align: center;
        }

        .beca-card .apply-button a {
            background-color: #00796b;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .beca-card .apply-button a:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Listado de Becas Disponibles</h1>
        <c:forEach var="beca" items="${listadoBecas}">
            <div class="beca-card">
                <div class="image-container">
                    <img src="https://via.placeholder.com/150" alt="Imagen de la Beca"> <!-- Imagen de ejemplo -->
                </div>
                <div>
                    <h2>${beca.titulo}</h2>
                    <div class="details">
                        <div><strong>Tipo:</strong> ${beca.tipo}</div>
                        <div><strong>Carrera:</strong> ${beca.carrera}</div>
                        <div><strong>Fecha Inicio:</strong> ${beca.fechaInicio}</div>
                        <div><strong>Fecha Fin:</strong> ${beca.fechaFin}</div>
                        <div><strong>Cupos:</strong> ${beca.cupos}</div>
                        <div><strong>Porcentaje:</strong> ${beca.porcentaje}%</div>
                        <div><strong>Género:</strong> ${beca.genero}</div>
                        <div><strong>Nacionalidad:</strong> ${beca.nacionalidad}</div>
                    </div>
                    <p class="description"><strong>Descripción:</strong> ${beca.descripcion}</p>
                    <div class="apply-button">
                        <a href="#">Postular</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
