/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import conexion.conexionbd;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Timestamp; 
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 * Servlet para crear becas.
 */
@WebServlet(name = "CrearBecaServlet", urlPatterns = {"/CrearBecaServlet"})
public class CrearBecaServlet extends HttpServlet {
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recopilación de datos del formulario
        String titulo = request.getParameter("titulo");
        String tipo = request.getParameter("tipo");
        String carrera = request.getParameter("carrera");
        String descripcion = request.getParameter("descripcion");
        String fechaInicioStr = request.getParameter("fecha_inicio");
        String fechaFinStr = request.getParameter("fecha_fin"); 
        
        
        
      
        // Conversión del formato de la fecha de inicio y fin
        DateTimeFormatter formatterInput = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate fechaInicio = LocalDate.parse(fechaInicioStr, formatterInput);
        LocalDate fechaFin = LocalDate.parse(fechaFinStr, formatterInput); // Ajusta si es necesario
        
        java.sql.Date fechaInicioSQL = java.sql.Date.valueOf(fechaInicio);
        java.sql.Date fechaFinSQL = java.sql.Date.valueOf(fechaFin); // Convertimos fecha fin si es necesario

        int cupos = Integer.parseInt(request.getParameter("cupos"));
        int porcentaje = Integer.parseInt(request.getParameter("porcentaje"));
        String genero = request.getParameter("genero");
        String nacionalidad = request.getParameter("nacionalidad");
        boolean soloDiscapacitados = Boolean.parseBoolean(request.getParameter("solo_discapacitados"));
        String tipoDiscapacidad = request.getParameter("tipo_discapacidad");
        
        int porcentajeDiscapacidad = (request.getParameter("porcentaje_discapacidad") != null & request.getParameter("porcentaje_discapacidad").isEmpty()) ? 0 : Integer.parseInt(request.getParameter("porcentaje_discapacidad"));
        
        
        boolean confirmacion = Boolean.parseBoolean(request.getParameter("confirmacion"));
        Timestamp fechaCreacion = new Timestamp(System.currentTimeMillis());

        // Consulta SQL para insertar los datos en la base de datos
        String sql = "INSERT INTO becas (titulo, tipo, carrera, descripcion, fecha_inicio, fecha_fin, cupos, porcentaje, genero, nacionalidad, solo_discapacitados, tipo_discapacidad, porcentaje_discapacidad, confirmacion, fecha_creacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = conexionbd.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setString(1, titulo);
            stmt.setString(2, tipo);
            stmt.setString(3, carrera);
            stmt.setString(4, descripcion);
            stmt.setDate(5, fechaInicioSQL);
            stmt.setDate(6, fechaFinSQL); // Asignamos fecha fin si es necesario
            stmt.setInt(7, cupos);
            stmt.setInt(8, porcentaje);
            stmt.setString(9, genero);
            stmt.setString(10, nacionalidad);
            stmt.setBoolean(11, soloDiscapacitados);
            stmt.setString(12, tipoDiscapacidad);
            stmt.setInt(13, porcentajeDiscapacidad);
            stmt.setBoolean(14, confirmacion);
            stmt.setTimestamp(15, fechaCreacion);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("lista_becas.jsp");
            } else {
                response.sendRedirect("perfil1.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al crear la beca. Detalles: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error inesperado. Detalles: " + e.getMessage());
        }
    }
}
