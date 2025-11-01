
package servlets;

import dominio.Pokemon;
import dominio.Tipo;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * Archivo: RegistroPokemon.java
 * 
 * Servlet que maneja el registro de un nuevo Pokémon cuando el usuario lo registra
 * en el formulario. Crea una lista con los Pokémon registrados más el que agregó el
 * usuario.
 * 
 * @author Romo López Manuel
 * ID: 00000253080
 * 
 */
@WebServlet(name = "RegistroPokemon", urlPatterns = {"/registro-pokemon"})
public class RegistroPokemon extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroPokemon</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroPokemon at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("name");
        String numero = request.getParameter("number");
        String tipo = request.getParameter("type");
        String urlImagen = request.getParameter("url-image");
        
        if(nombre == null || numero == null || tipo == null || urlImagen == null || nombre.isEmpty() || numero.isEmpty() || tipo.isEmpty() || urlImagen.isEmpty()){
            
            getServletContext().setAttribute("error", "Por favor, ingresa todos los campos.");
            response.sendRedirect("/index.jsp");
            
        } 
        else if(!numero.matches("\\d+")){
            
            getServletContext().setAttribute("error", "El número del Pokémon debe ser un número entero.");
            response.sendRedirect("/index.jsp");
            
        } else{

            getServletContext().setAttribute("error", null);
            
            Pokemon[] pokemonRegistrados = {
                new Pokemon(nombre, Integer.parseInt(numero), Tipo.valueOf(tipo), urlImagen),
                new Pokemon("Bulbasaur", 1, Tipo.PLANTA, "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png"),
                new Pokemon("Charmander", 4, Tipo.FUEGO, "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png"),
                new Pokemon("Squirtle", 7, Tipo.AGUA, "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png"),
                new Pokemon("Ekans", 23, Tipo.VENENO, "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/023.png"),
                new Pokemon("Magneton", 82, Tipo.ELECTRICO, "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/082.png"),
            };

            request.setAttribute("pokemonRegistrados", pokemonRegistrados);
            getServletContext().getRequestDispatcher("/pokemon-registrados.jsp").forward(request, response);
            
        }
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
