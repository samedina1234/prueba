<%-- 
    Document   : formulario
    Created on : 24 ago 2024, 13:39:39
    Author     : Tuf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>formulario</title>
        <style>
            body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0f7fa;
            margin: 0;
            padding-top: 70px; /* Espacio para la barra de navegación */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Estilos para la barra de navegación */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #00796b;
            color: white;
            display: flex;
            justify-content: center;
            padding: 10px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #b2dfdb;
        }

        .container {
            width: 90%;
            max-width: 800px;
            background: white;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 1px solid #b2ebf2;
            margin: 20px 0;
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #00796b;
            margin-bottom: 20px;
            font-weight: 700;
            font-size: 24px;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateX(-50px); }
            to { opacity: 1; transform: translateX(0); }
        }

        .form-group {
            margin-bottom: 15px;
            animation: fadeIn 1s ease-out;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #00796b;
            font-weight: 600;
            font-size: 14px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #b0bec5;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #f5f5f5;
            font-size: 14px;
            color: #555;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            border-color: #00796b;
            background-color: #e0f2f1;
            outline: none;
        }

        .form-group input[type="file"] {
            padding: 5px;
            background-color: #fff;
        }

        .form-group textarea {
            resize: vertical;
        }

        .submit-btn {
            background-color: #00796b;
            color: white;
            padding: 12px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: 700;
            transition: background-color 0.3s ease, transform 0.2s ease;
            margin-top: 10px;
        }

        .submit-btn:hover {
            background-color: #004d40;
            transform: scale(1.05);
        }

        .form-group input[type="checkbox"] {
            width: auto;
            margin-right: 8px;
        }

        .form-group input[type="checkbox"] + label {
            display: inline;
            color: #333;
            font-weight: 400;
        }

        .form-note {
            font-size: 12px;
            color: #777;
            margin-top: -10px;
            margin-bottom: 15px;
            display: block;
        }

        .section-title {
            display: flex;
            align-items: center;
            font-size: 18px;
            margin-bottom: 10px;
            color: #004d40;
        }

        .section-title i {
            margin-right: 8px;
            color: #00796b;
        }

        @media (max-width: 768px) {
            .navbar {
                font-size: 12px;
                padding: 10px;
            }
            .container {
                padding: 15px;
            }
        }
    </style>
    </head>
    <body>
         
        <div class="navbar">
        <a href="#informacion-personal"><i class="fas fa-user"></i> Información Personal</a>
        <a href="#informacion-academica"><i class="fas fa-school"></i> Información Académica</a>
        <a href="#carrera"><i class="fas fa-book"></i> Carreras</a>
        <a href="#ensayo"><i class="fas fa-pencil-alt"></i> Ensayo</a>
        <a href="#referencias"><i class="fas fa-address-book"></i> Referencias</a>
        <a href="#documentos"><i class="fas fa-file-alt"></i> Documentos</a>
    </div>
    </div>
         <div class="container">
        <h2>Publicar Beca</h2>
        <form action="#" method="post" enctype="multipart/form-data">
            <!-- Información Personal -->
            <div class="form-group">
                <label for="titulobeca">Titulo de la Beca:</label>
                <input type="text" id="titulobeca" name="titulobeca" required>
            </div>
            <div class="form-group">
                <label for="tipobeca">Tipo de Beca:</label>
                <select id="tipobeca" name="tipobeca" required>
                    <option value="academica">Excelencia Academica</option>
                    <option value="deportiva">Becas Deportivas</option>
                    <option value="economica">Becas de Necesidad Económica</option>
                    <option value="internacional">Becas Internacionales</option>
                    <option value="minorias">Becas para Minorías Sociales</option>
                    <option value="empresas">Becas de Empresa</option>
                    <option value="gobernamental">Becas de Programas Gubernamentales</option>
                    <option value="gobernamental">Becas de Programa Sin Fines de Lucro</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
            <div class="form-group">
                <label for="imagenbeca">Imagen Promocional de la Beca:</label>
                <input type="file" id="imagenbeca" name="imagenbeca" accept=".png, .jpeg, .jpg" required>
            </div>
            <div class="form-group">
                <label for="carrerabeca">Carrera a la que aplica esta Beca:</label>
                <select id="carrerabeca" name="carrerabeca" required>
                    <option value="carreras">Todas Las Carreras</option>
                    <option value="ingenieria">Ingeniería</option>
                    <option value="medicina">Medicina</option>
                    <option value="derecho">Derecho</option>
                    <option value="ciencias_sociales">Ciencias Sociales</option>
                    <option value="artes">Artes</option>
                    <option value="negocios">Negocios</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
            <div class="form-group">
                <label for="descripcion">Descripción:</label>
                <textarea id="descripcion" name="descripcion" rows="6" required></textarea>
            </div>
            <div class="form-group">
                <label for="fecha-inicio">Fecha de Inicio:</label>
                <input type="date" id="fecha-inicio" name="fecha-inicio" required>
            </div>
            <div class="form-group">
                <label for="fecha-fin">Fecha de Fin:</label>
                <input type="date" id="fecha-fin" name="fecha-fin" required>
            </div>
            <div class="form-group">
                <label for="cupobeca">Cupos para la Beca:</label>
                <input type="number" id="cupobeca" name="cupobeca" step="1" min="0" required pattern="\d+" title="Por favor, ingrese un número entero.">
            </div>
            <div class="form-group">
                <label for="porcentaje-beca">Porcentaje de la Beca:</label>
                <input type="number" id="porcentaje-beca" name="porcentaje-beca" step="1" min="45" max="100" required pattern="\d+" title="Por favor, ingrese un porcentaje entre 0 y 100.">
            </div>
            <div class="form-group">
                <label for="generobeca">Genero de los Solicitantes:</label>
                <select id="generobeca" name="generobeca" required>
                    <option value="todos">Todos</option>
                    <option value="mujeres">Mujeres</option>
                    <option value="hombres">Hombres</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
            <!-- Confirmación y Envío -->
            <div class="form-group">
                <input type="checkbox" id="declaracion" name="declaracion" required>
                <label for="declaracion">Confirmo que toda la información proporcionada es verdadera y exacta.</label>
            </div>
            <button type="submit" class="submit-btn">Enviar</button>
        </form>
    </div>
    </body>
</html>
