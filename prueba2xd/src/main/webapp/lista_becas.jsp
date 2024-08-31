<%-- 
    Document   : lista_becas
    Created on : 25 ago 2024, 18:34:31
    Author     : Tuf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Becas</title>
    <style>
        /* Estilos CSS */
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

        .scholarship-image {
            width: 100px;
            height: auto;
            margin-right: 20px;
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
            color: #666;
        }

        .apply-button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .apply-button:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 0.5rem 0;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>listado Becas</h1>
        </div>
        <nav>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Registro</a></li>
                <li><a href="#">Postular</a></li>
                <li><a href="#">Cerrar Sesión</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="scholarship-list">
            <h2>Becas Disponibles</h2>
            <ul>
                <li>
                    <img src="beca1.jpg" alt="Beca de Excelencia Académica" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca de Excelencia Académica</h3>
                        <p><strong>Tipo de Beca:</strong> Académica</p>
                        <p><strong>Carrera:</strong> Ingeniería Informática</p>
                        <p><strong>Descripción:</strong> Esta beca está destinada a estudiantes con un rendimiento académico excepcional que desean estudiar Ingeniería Informática.</p>
                        <p><strong>Fecha de Publicación:</strong> 1 de agosto de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 31 de agosto de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 100%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
                <li>
                    <img src="beca2.jpg" alt="Beca de Investigación Científica" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca de Investigación Científica</h3>
                        <p><strong>Tipo de Beca:</strong> Investigación</p>
                        <p><strong>Carrera:</strong> Biotecnología</p>
                        <p><strong>Descripción:</strong> Para estudiantes que buscan participar en proyectos de investigación científica en el campo de la Biotecnología.</p>
                        <p><strong>Fecha de Publicación:</strong> 5 de julio de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 15 de septiembre de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 75%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
                <li>
                    <img src="beca3.jpg" alt="Beca Deportiva" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca Deportiva</h3>
                        <p><strong>Tipo de Beca:</strong> Deportiva</p>
                        <p><strong>Carrera:</strong> Ciencias del Deporte</p>
                        <p><strong>Descripción:</strong> Para estudiantes que han demostrado habilidades excepcionales en deportes y desean estudiar Ciencias del Deporte.</p>
                        <p><strong>Fecha de Publicación:</strong> 10 de junio de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 30 de septiembre de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 50%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
                <li>
                    <img src="beca4.jpg" alt="Beca Cultural" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca Cultural</h3>
                        <p><strong>Tipo de Beca:</strong> Cultural</p>
                        <p><strong>Carrera:</strong> Historia del Arte</p>
                        <p><strong>Descripción:</strong> Beca destinada a estudiantes que desean especializarse en Historia del Arte y demostrar interés en el patrimonio cultural.</p>
                        <p><strong>Fecha de Publicación:</strong> 20 de junio de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 20 de septiembre de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 80%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
                <li>
                    <img src="beca5.jpg" alt="Beca de Innovación Tecnológica" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca de Innovación Tecnológica</h3>
                        <p><strong>Tipo de Beca:</strong> Innovación</p>
                        <p><strong>Carrera:</strong> Ingeniería en Software</p>
                        <p><strong>Descripción:</strong> Para estudiantes con proyectos innovadores en tecnología y software que buscan apoyo para desarrollarlos.</p>
                        <p><strong>Fecha de Publicación:</strong> 15 de julio de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 15 de octubre de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 90%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
                <li>
                    <img src="beca6.jpg" alt="Beca de Liderazgo Social" class="scholarship-image">
                    <div class="scholarship-details">
                        <h3>Beca de Liderazgo Social</h3>
                        <p><strong>Tipo de Beca:</strong> Social</p>
                        <p><strong>Carrera:</strong> Ciencias Políticas</p>
                        <p><strong>Descripción:</strong> Apoya a estudiantes interesados en desarrollar habilidades de liderazgo y participar en proyectos comunitarios.</p>
                        <p><strong>Fecha de Publicación:</strong> 1 de agosto de 2024</p>
                        <p><strong>Fecha Límite de Postulación:</strong> 1 de noviembre de 2024</p>
                        <p><strong>Porcentaje de Beca:</strong> 70%</p>
                        <button class="apply-button">Aplicar</button>
                    </div>
                </li>
            </ul>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Portal de Becas. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
