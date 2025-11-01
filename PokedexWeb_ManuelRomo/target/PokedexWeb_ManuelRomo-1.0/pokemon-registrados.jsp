<%-- 

    Archivo: pokemon-registrados.jsp
    Romo López Manuel
    ID: 00000253080

--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pokémon registrados</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./styles/styles.css"/>
        <link rel="icon" href="./icons/poke-ball.png">
    </head>
    <body>
        <main>
            <h1>Pokémon registrados</h1>
            
            <div class="container-registered-pokemon">
                
                <div class="container-header-pokemon">
                    <div class="container-header-name">
                        <span>Nombre </span>
                    </div>
                    <div class="container-header-number">
                        <span>Número </span>
                    </div>
                    <div class="container-header-type">
                        <span>Tipo </span>
                    </div>
                    
                </div>
                
                <c:forEach var="pokemon" items="${pokemonRegistrados}">
                    
                    <div class="container-pokemon">
                    
                        <div class="pokemon-image">
                            <img class="pokemon-image" src="${pokemon.imagen}">
                        </div>

                        <div class="pokemon-name">
                            <span>Nombre: </span>
                            <span>${pokemon.nombre}</span>
                        </div>

                        <div class="pokemon-number">

                            <span>Número: </span>
                            <span>${pokemon.numero}</span>
                        </div>

                            <c:choose>
                                <c:when test="${pokemon.tipo == 'AGUA'}">
                                    <div class="container-type-agua pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Agua</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'DRAGON'}">
                                    <div class="container-type-dragon pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Dragon</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'ELECTRICO'}">
                                    <div class="container-type-electrico pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Eléctrico</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'FANTASMA'}">
                                    <div class="container-type-fantasma pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Fantasma</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'FUEGO'}">
                                    <div class="container-type-fuego pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Fuego</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'HIELO'}">
                                    <div class="container-type-hielo pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Hielo</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'NORMAL'}">
                                    <div class="container-type-normal pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Normal</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'PLANTA'}">
                                    <div class="container-type-planta pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Planta</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'TIERRA'}">
                                    <div class="container-type-tierra pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Tierra</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'VENENO'}">
                                    <div class="container-type-veneno pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Veneno</span>
                                    </div>
                                </c:when>

                                <c:when test="${pokemon.tipo == 'VOLADOR'}">
                                    <div class="container-type-volador pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Volador</span>
                                    </div>
                                </c:when>

                                <c:otherwise>
                                    <div class="container-type-desconocido pokemon-type">
                                        <span>Tipo: </span>
                                        <span>Desconocido</span>
                                    </div>
                                </c:otherwise>
                            </c:choose>


                        <div>

                        </div>

                    </div>
                </c:forEach>
                     
                
                
            </div>
            
        </main>
        
        
        
    </body>
</html>
