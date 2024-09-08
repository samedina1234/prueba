/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

/**
 * Clase Beca para representar la entidad Beca en la base de datos
 */
public class Beca {
    private int id;
    private String titulo;
    private String tipo;
    private String carrera;
    private String descripcion;
    private String fechaInicio;
    private String fechaFin;
    private int cupos;
    private int porcentaje;
    private String genero;
    private String nacionalidad;
    private boolean soloDiscapacitados;
    private String tipoDiscapacidad;
    private int porcentajeDiscapacidad;
    private boolean confirmacion;
    private String fechaCreacion;

    // Constructor vacío
    public Beca() {
    }

    // Getters y Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitulo() { return titulo; }
    public void setTitulo(String titulo) { this.titulo = titulo; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }

    public String getCarrera() { return carrera; }
    public void setCarrera(String carrera) { this.carrera = carrera; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }

    public String getFechaInicio() { return fechaInicio; }
    public void setFechaInicio(String fechaInicio) { this.fechaInicio = fechaInicio; }

    public String getFechaFin() { return fechaFin; }
    public void setFechaFin(String fechaFin) { this.fechaFin = fechaFin; }

    public int getCupos() { return cupos; }
    public void setCupos(int cupos) { this.cupos = cupos; }

    public int getPorcentaje() { return porcentaje; }
    public void setPorcentaje(int porcentaje) { this.porcentaje = porcentaje; }

    public String getGenero() { return genero; }
    public void setGenero(String genero) { this.genero = genero; }

    public String getNacionalidad() { return nacionalidad; }
    public void setNacionalidad(String nacionalidad) { this.nacionalidad = nacionalidad; }

    public boolean isSoloDiscapacitados() { return soloDiscapacitados; }
    public void setSoloDiscapacitados(boolean soloDiscapacitados) { this.soloDiscapacitados = soloDiscapacitados; }

    public String getTipoDiscapacidad() { return tipoDiscapacidad; }
    public void setTipoDiscapacidad(String tipoDiscapacidad) { this.tipoDiscapacidad = tipoDiscapacidad; }

    public int getPorcentajeDiscapacidad() { return porcentajeDiscapacidad; }
    public void setPorcentajeDiscapacidad(int porcentajeDiscapacidad) { this.porcentajeDiscapacidad = porcentajeDiscapacidad; }

    public boolean isConfirmacion() { return confirmacion; }
    public void setConfirmacion(boolean confirmacion) { this.confirmacion = confirmacion; }

    public String getFechaCreacion() { return fechaCreacion; }
    public void setFechaCreacion(String fechaCreacion) { this.fechaCreacion = fechaCreacion; }
}

