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

/**
 * Servlet para crear becas.
 */
@WebServlet(name = "CrearBecaServlet", urlPatterns = {"/CrearBecaServlet"})
public class CrearBecaServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String tipo = request.getParameter("tipo");
        String carrera = request.getParameter("carrera");
        String descripcion = request.getParameter("descripcion");
        java.sql.Date fechaInicio = java.sql.Date.valueOf(request.getParameter("fecha_inicio"));
        java.sql.Date fechaFin = java.sql.Date.valueOf(request.getParameter("fecha_fin"));
        int cupos = Integer.parseInt(request.getParameter("cupos"));
        int porcentaje = Integer.parseInt(request.getParameter("porcentaje"));
        String genero = request.getParameter("genero");
        String nacionalidad = request.getParameter("nacionalidad");
        boolean soloDiscapacitados = Boolean.parseBoolean(request.getParameter("solo_discapacitados"));
        String tipoDiscapacidad = request.getParameter("tipo_discapacidad");
        String porcentajeDiscapacidad = request.getParameter("porcentaje_discapacidad");
        boolean confirmacion = Boolean.parseBoolean(request.getParameter("confirmacion"));
        Timestamp fechaCreacion = new Timestamp(System.currentTimeMillis());
        
        String sql = "INSERT INTO becas (titulo, tipo, carrera, descripcion, fecha_inicio, fecha_fin, cupos, porcentaje, genero, nacionalidad, solo_discapacitados, tipo_discapacidad, porcentaje_discapacidad, confirmacion, fecha_creacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = conexionbd.getConnection(); 
                PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, titulo);
            stmt.setString(2, tipo);
            stmt.setString(3, carrera);
            stmt.setString(4, descripcion);
            stmt.setDate(5, fechaInicio);
            stmt.setDate(6, fechaFin);
            stmt.setInt(7, cupos);
            stmt.setInt(8, porcentaje);
            stmt.setString(9, genero);
            stmt.setString(10, nacionalidad);
            stmt.setBoolean(11, soloDiscapacitados);
            stmt.setString(12, tipoDiscapacidad);
            stmt.setString(13, porcentajeDiscapacidad);
            stmt.setBoolean(14, confirmacion);
            stmt.setTimestamp(15, fechaCreacion);
            
            stmt.executeUpdate();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h1>Beca creada con éxito</h1>");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al crear la beca. Intente nuevamente.");
        } catch (Exception e) { // Captura cualquier otra excepción
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error inesperado. Intente nuevamente.");
        }
    }
}