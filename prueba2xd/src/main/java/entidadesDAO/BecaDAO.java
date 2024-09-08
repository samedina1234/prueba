/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidadesDAO;

import entidades.Beca;
import conexion.conexionbd;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * DAO para gestionar los datos de la tabla becas
 */
public class BecaDAO {

    public List<Beca> getListadoBecas() {
        List<Beca> listaBecas = new ArrayList<>();
        String strSQL = "SELECT id, titulo, tipo, carrera, descripcion, fecha_inicio, fecha_fin, cupos, porcentaje, genero, nacionalidad, solo_discapacitados, tipo_discapacidad, porcentaje_discapacidad, confirmacion, fecha_creacion FROM becas ORDER BY id";

        try (Connection con = conexionbd.getConnection();
             Statement stm = con.createStatement();
             ResultSet rst = stm.executeQuery(strSQL)) {

            while (rst.next()) {
                Beca beca = new Beca();
                beca.setId(rst.getInt("id"));
                beca.setTitulo(rst.getString("titulo"));
                beca.setTipo(rst.getString("tipo"));
                beca.setCarrera(rst.getString("carrera"));
                beca.setDescripcion(rst.getString("descripcion"));
                beca.setFechaInicio(rst.getString("fecha_inicio"));
                beca.setFechaFin(rst.getString("fecha_fin"));
                beca.setCupos(rst.getInt("cupos"));
                beca.setPorcentaje(rst.getInt("porcentaje"));
                beca.setGenero(rst.getString("genero"));
                beca.setNacionalidad(rst.getString("nacionalidad"));
                beca.setSoloDiscapacitados(rst.getBoolean("solo_discapacitados"));
                beca.setTipoDiscapacidad(rst.getString("tipo_discapacidad"));
                beca.setPorcentajeDiscapacidad(rst.getInt("porcentaje_discapacidad"));
                beca.setConfirmacion(rst.getBoolean("confirmacion"));
                beca.setFechaCreacion(rst.getString("fecha_creacion"));

                listaBecas.add(beca);
            }
        } catch (Exception e) {
            e.printStackTrace();
            listaBecas = null;
        }
        return listaBecas;
    }
}

