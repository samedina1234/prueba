<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reporte de Becas</title>
</head>
<body>
    <h1>Listado de Becas</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Tipo</th>
                <th>Carrera</th>
                <th>Descripción</th>
                <th>Fecha Inicio</th>
                <th>Fecha Fin</th>
                <th>Cupos</th>
                <th>Porcentaje</th>
                <th>Género</th>
                <th>Nacionalidad</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="beca" items="${listadoBecas}">
                <tr>
                    <td>${beca.id}</td>
                    <td>${beca.titulo}</td>
                    <td>${beca.tipo}</td>
                    <td>${beca.carrera}</td>
                    <td>${beca.descripcion}</td>
                    <td>${beca.fecha_inicio}</td>
                    <td>${beca.fecha_fin}</td>
                    <td>${beca.cupos}</td>
                    <td>${beca.porcentaje}</td>
                    <td>${beca.genero}</td>
                    <td>${beca.nacionalidad}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
