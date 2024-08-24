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
        <h2>Formulario de Postulación a Becas Universitarias</h2>
        <form action="#" method="post" enctype="multipart/form-data">
            <!-- Información Personal -->
            <div class="form-group">
                <label for="nombre">Nombre completo:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="fecha-nacimiento">Fecha de nacimiento:</label>
                <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" required>
            </div>
            <div class="form-group">
                <label for="email">Correo electrónico:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="telefono">Número de teléfono:</label>
                <input type="tel" id="telefono" name="telefono" required>
            </div>

            <!-- Información Académica -->
            <div class="form-group">
                <label for="escuela">Escuela Secundaria o Colegio de Procedencia:</label>
                <input type="text" id="escuela" name="escuela" required>
            </div>
            <div class="form-group">
                <label for="promedio">Promedio de calificaciones:</label>
                <input type="number" id="promedio" name="promedio" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="transcripcion">Transcripción académica:</label>
                <input type="file" id="transcripcion" name="transcripcion" accept=".pdf,.jpg" required>
            </div>

            <!-- Selección de Carrera -->
            <div class="form-group">
                <label for="carrera">Carrera a la que deseas aplicar:</label>
                <select id="carrera" name="carrera" required>
                    <option value="ingenieria">Ingeniería</option>
                    <option value="medicina">Medicina</option>
                    <option value="derecho">Derecho</option>
                    <option value="ciencias_sociales">Ciencias Sociales</option>
                    <option value="artes">Artes</option>
                    <option value="negocios">Negocios</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>

            <!-- Experiencia Extracurricular -->
            <div class="form-group">
                <label for="extracurricular">Participación en actividades extracurriculares:</label>
                <textarea id="extracurricular" name="extracurricular" rows="4" required></textarea>
            </div>

            <!-- Ensayo Personal -->
            <div class="form-group">
                <label for="ensayo">Ensayo personal:</label>
                <textarea id="ensayo" name="ensayo" rows="6" placeholder="Explique por qué merece esta beca y cómo contribuirá a la comunidad universitaria." required></textarea>
            </div>

            <!-- Referencias -->
            <div class="form-group">
                <label for="referencia1">Nombre de la referencia 1:</label>
                <input type="text" id="referencia1" name="referencia1" required>
            </div>
            <div class="form-group">
                <label for="email_referencia1">Correo electrónico de la referencia 1:</label>
                <input type="email" id="email_referencia1" name="email_referencia1" required>
            </div>
            <div class="form-group">
                <label for="telefono_referencia1">Teléfono de la referencia 1:</label>
                <input type="tel" id="telefono_referencia1" name="telefono_referencia1" required>
            </div>

            <!-- Documentos Adicionales -->
            <div class="form-group">
                <label for="Copia de Cedula">Copia de Cedula:</label>
                <input type="file" id="recomendacion" name="recomendacion" accept=".pdf,.jpg" required>
            </div>
            <div class="form-group">
                <label for="factura de servicio basico">Factura de servicio basico:</label>
                <input type="file" id="cv" name="cv" accept=".pdf,.jpg" required>
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
