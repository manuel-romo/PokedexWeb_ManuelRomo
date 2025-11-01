<%-- 

    Archivo: index.jsp
    Archivo que representa el formulario con el que el usuario ingresa los datos
    de un nuevo Pokémon para agregarlo.

    Romo López Manuel
    ID: 00000253080

--%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Agregar Pokémon</title>
        <meta charset = "utf-8">
        <link rel="stylesheet" type="text/css" href="./styles/styles.css"/>
        <link rel="icon" href="./icons/poke-ball.png">
    </head>
    <body>
        <main>
            
            <h1>Registro de Pokémon</h1>
            
            <article class="container-new-pokemon">

                <form class="form-new-pokemon" action="/registro-pokemon" method = "POST">

                    <div class="container-name">
                        <label for="name">Nombre: </label>
                        <input type="text" id = "name" name="name" maxlength="100">
                    </div>

                    <div class="container-number">
                        <label>Número: </label>
                        <input type="number" name="number" min="1">
                    </div>

                    <div class="container-type">
                        <label for="type">Tipo: </label>
                        <select id="type" name="type">
                            <c:forEach var="tipo" items="${listaTiposPokemon}">
                                    <c:choose>
                                        <c:when test="${tipo == 'AGUA'}">
                                            <option value="AGUA">Agua</option>
                                        </c:when>
                                        <c:when test="${tipo == 'DRAGON'}">
                                            <option value="DRAGON">Dragón</option>
                                        </c:when>
                                        <c:when test="${tipo == 'ELECTRICO'}">
                                            <option value = "ELECTRICO">Eléctrico</option>
                                        </c:when>
                                        <c:when test="${tipo == 'FANTASMA'}">
                                            <option value="FANTASMA">Fantasma</option>
                                        </c:when>
                                        <c:when test="${tipo == 'FUEGO'}">
                                            <option value="FUEGO">Fuego</option>
                                        </c:when>
                                        <c:when test="${tipo == 'HIELO'}">
                                            <option value="HIELO">Hielo</option>
                                        </c:when>
                                        <c:when test="${tipo == 'NORMAL'}">
                                            <option value="NORMAL">Normal</option>
                                        </c:when>
                                        <c:when test="${tipo == 'PLANTA'}">
                                            <option value="PLANTA">Planta</option>
                                        </c:when>
                                        <c:when test="${tipo == 'TIERRA'}">
                                            <option value="TIERRA">Tierra</option>
                                        </c:when>
                                        <c:when test="${tipo == 'VENENO'}">
                                            <option value="VENENO">Veneno</option>
                                        </c:when>
                                        <c:when test="${tipo == 'VOLADOR'}">
                                            <option value="VOLADOR">Volador</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value = "" selected>Selecciona un tipo</option>
                                        </c:otherwise>
                                    </c:choose>
                                  
                            </c:forEach>
                                
                        </select>
                    </div>

                    <div class="container-image">
                        <label for="url-image">URL de imagen: </label>
                        <input type="url" id="url-image" name="url-image">
                    </div>
                    
                    <div class="container-btn-guardar">
                        <input type="submit" value="Agregar">
                        
                    </div>
                    
                </form>
                
                <c:if test="${error != null}">
                    <div class="container-error-message"><span><c:out value="${error}"/></span></div>
                </c:if>
                        

            </article>
        </main>
        
    </body>
</html>
