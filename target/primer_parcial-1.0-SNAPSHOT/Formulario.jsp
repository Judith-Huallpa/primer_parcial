<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Producto"%>
<%
    Producto reg = (Producto) request.getAttribute("miobjpro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXAMEN</title>
    </head>
    <body>
        <h1>Registro de Nuevo Producto</h1>
        <form action="MainServlet" method="post">
            <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" value="<%= reg.getId() %>" size="22"readonly></td>
            </tr>
            <tr>
                <td>Descripción</td>
                <td><input type="text" name="descripcion" value="<%= reg.getDescripcion()%>"></td>
            </tr>
            <tr>
                <td>Cantidad</td>
                <td><input type="number" name="cantidad" value="<%= reg.getCantidad()%>"></td>
            </tr>
            <tr>
                <td>Precio</td>
                <td><input type="text" name="precio" value="<%= reg.getPrecio()%>"></td>
            </tr>
            <tr>
                <td>Categoria</td>
                <td><input type="text" name="categoria" value="<%= reg.getCategoria()%>"></td>
            </tr>
            <tr>  
                <td></td>
                        <td><br><input type="submit" value="Enviar"></td>  
            </tr>
            </table>
        </form>
    </body>
</html>