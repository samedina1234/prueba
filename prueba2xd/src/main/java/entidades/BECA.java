/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;
import java.time.LocalDate;
/**
 *
 * @author Tuf
 */
public class BECA {
     private int id;
    private String titulo;
    private String tipo;
    private String carrera;
    private String descripcion;
    private LocalDate fechaInicio;
    private LocalDate fechaFin;
    
    public BECA(int id, String titulo, String tipo, String carrera, String descripcion, LocalDate fechaInicio, LocalDate fechaFin) {
        this.id = id;
        this.titulo = titulo;
        this.tipo = tipo;
        this.carrera = carrera;
        this.descripcion = descripcion;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
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

    public LocalDate getFechaInicio() { return fechaInicio; }
    public void setFechaInicio(LocalDate fechaInicio) { this.fechaInicio = fechaInicio; }

    public LocalDate getFechaFin() { return fechaFin; }
    public void setFechaFin(LocalDate fechaFin) { this.fechaFin = fechaFin; }

    // Método para calcular la duración de la beca
    public long getDuracionDias() {
        return java.time.temporal.ChronoUnit.DAYS.between(fechaInicio, fechaFin);
    }

    // Método para verificar si la beca está activa
    public boolean estaActiva() {
        LocalDate hoy = LocalDate.now();
        return (hoy.isAfter(fechaInicio) || hoy.isEqual(fechaInicio)) && hoy.isBefore(fechaFin);
    }
 
}
