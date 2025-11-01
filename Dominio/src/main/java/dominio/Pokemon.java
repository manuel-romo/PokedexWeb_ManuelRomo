
package dominio;

import java.io.Serializable;

/**
 * Clase que representa un Pokémon del sistema.
 * @author Romo López Manuel
 * ID: 00000253080
 */
public class Pokemon implements Serializable{
    
    /**
     * Objeto String que representa el nombre del Pokémon.
     */
    private String nombre;
    /**
     * Dato int que representa el número del Pokémon.
     */
    private int numero;
    /**
     * Objeto Tipo que representa el tipo del Pokémon.
     */
    private Tipo tipo;
    /**
     * Objeto String que representa la URL de la imagen del Pokémon.
     */
    private String imagen;
    
    /**
     * Constructor por defecto.
     */
    public Pokemon(){
        
    }

    /**
     * Constructor que recibe los parámetros necesarios para crear un Pokémon
     * @param nombre Objeto String que representa el nombre del Pokémon.
     * @param numero Dato int que representa el número del Pokémon.
     * @param tipo Objeto Tipo que representa el tipo del Pokémon.
     * @param imagen Objeto String que representa la URL de la imagen del Pokémon.
     */
    public Pokemon(String nombre, int numero, Tipo tipo, String imagen) {
        this.nombre = nombre;
        this.numero = numero;
        this.tipo = tipo;
        this.imagen = imagen;
    }

    /**
     * Permite obtener el nombre del Pokémon.
     * @return Objeto String que representa el nombre del Pokémon.
     */
    public String getNombre() {
        return nombre;
    }
    
    /**
     * Permite establecer el nombre del Pokémon.
     * @return Objeto String que representa el nombre del Pokémon.
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Permite obtener el número del Pokémon.
     * @return Dato int que representa el número del Pokémon.
     */
    public int getNumero() {
        return numero;
    }

    /**
     * Permite establecer el número del Pokémon.
     * @return Dato int que representa el número del Pokémon.
     */
    public void setNumero(int numero) {
        this.numero = numero;
    }

    /**
     * Permite obtener el tipo del Pokémon.
     * @return Objeto Tipo que representa el tipo del Pokémon.
     */
    public Tipo getTipo() {
        return tipo;
    }

    /**
     * Permite establecer el tipo del Pokémon.
     * @return Objeto Tipo que representa el tipo del Pokémon.
     */
    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    /**
     * Permite obtener la URL de la imagen del Pokémon.
     * @return Objeto String que representa la URL de la imagen del Pokémon.
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * Permite establecer la URL de la imagen del Pokémon.
     * @return Objeto String que representa la URL de la imagen del Pokémon.
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    
    
    
    
}
