<%-- 
    Document   : IngresarLibro
    Created on : 18 sept 2024, 19:31:37
    Author     : santi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Libros</title>
        <link rel="stylesheet" href="styles.css"> <!-- Puedes agregar un archivo CSS opcional -->
        <script>
        function cargarEditoriales() {
            const select = document.getElementById('nombre_editorial');
            fetch('EditorialController')
                .then(response => response.text())
                        .then(data => {
                            select.innerHTML += data; // Agrega las opciones al select
                        })
                        .catch(error => console.error('Error al cargar las editoriales:', error));
            }

            function cargarCodigoLibro() {
                fetch('CodigoController') // Asegúrate de que este servlet devuelva el nuevo código del libro
                        .then(response => response.text())
                        .then(codigo => {
                            document.getElementById('codigo').value = codigo; // Establece el código en el input
                            console.log("Código cargado:", codigo);
                        })
                        .catch(error => console.error('Error al cargar el código del libro:', error));
            }

            function consultarLibro() {
                const codigoLibro = document.getElementById('codigo').value; // Cambiado a "codigo"
                if (codigoLibro) {
                    const url = `ConsultaController?codigo=${codigoLibro}`; // Cambiado a "codigo"
                    console.log("Código enviado:", codigoLibro); // Verifica el código
                    console.log("URL de la solicitud:", url); // Verifica la URL
                    fetch(url)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Error en la red');
                                }
                                return response.json();
                            })
                            .then(data => {
                                if (data.id) { // Cambiado a "codigo"
                                    // Rellenar el formulario con los datos del libro
                                    document.getElementById('codigo').value = data.id; // Cambiado a "codigo"
                                    document.getElementById('isbn').value = data.isbn;
                                    document.getElementById('nombre').value = data.nombre;
                                    document.getElementById('autor').value = data.autor;
                                    document.getElementById('num_paginas').value = data.num_paginas;
                                } else {
                                    alert('Libro no encontrado.');
                                }
                            })
                            .catch(error => console.error('Error al consultar el libro:', error));
                } else {
                    alert('Por favor, ingrese el código del libro para consultar.'); // Cambiado a "código"
                }
            }

            window.onload = function () {
                cargarEditoriales(); // Cargar las editoriales al cargar la página
                cargarCodigoLibro(); // Cargar el código del libro
            };
        </script>
    </head>
    <body>
        <h1>Agregar Libro</h1>
        <form action="LibroController" method="POST">
            <label for="codigo">Código del libro:</label>
            <input type="text" id="codigo" name="codigo" required><br><br>

            <label for="isbn">ISBN:</label>
            <input type="text" id="isbn" name="isbn" required><br><br>

            <label for="nombre">Nombre del libro:</label>
            <input type="text" id="nombre" name="nombre" required><br><br>

            <label for="autor">Autor:</label>
            <input type="text" id="autor" name="autor" required><br><br>

            <label for="nombre_editorial">Editorial:</label>
            <select id="nombre_editorial" name="nombre_editorial" required>
                <option value="">Seleccione una editorial</option>
            </select><br><br>
            <fieldset>
            <legend>Selecciona el idioma:</legend>
            <label>
                <input type="radio" name="idioma" value="ESP" required> Español
            </label><br>
            <label>
                <input type="radio" name="idioma" value="ING"> Inglés
            </label><br>
            <label>
                <input type="radio" name="idioma" value="FRN"> Francés
            </label><br>
            <label>
                <input type="radio" name="idioma" value="ALM"> Alemán
            </label><br>
            <label>
                <input type="radio" name="idioma" value="ITL"> Italiano
            </label><br>
        </fieldset><br>
            <label for="num_paginas">Número de páginas:</label>
            <input type="number" id="num_paginas" name="num_paginas" required><br><br>

            <button type="submit">Ingresar Libro</button>
            <button type="button" onclick="consultarLibro()">Consultar Libro</button>
        </form>
        
    </body>
</html>
