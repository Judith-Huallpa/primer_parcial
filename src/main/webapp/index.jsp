<%@page import="com.mycompany.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
        if(session.getAttribute("listapro")==null){
       ArrayList<Producto> lisaux = new ArrayList<Producto>();
       session.setAttribute("listapro", lisaux);
    }
  ArrayList<Producto> lista =(ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>1ER PARCIAL</title>
    </head>
    <body>
        <table border="1" align="center">
            <tr>
                <th>
                    <h2>PRIMER PARCIAL TEM-742</h2>
                    <h3>Nombre: Judith Esther Huallpa Mayta</h3>
                    <h3>Carnet: 9976646</h3>
                </th>
            </tr>
        </table>
    <center><h1>Gestion de productos</h1></center>
    <div class="centrar">
        <a href="MainServlet?op=nuevo">Nuevo Producto</a>
    </div>        
        <table border="1" align="center">
                <tr>
                    <th>Id</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                     <%
                       if(lista != null){
                           for(Producto item :lista){
                    %>
                    <td><%= item.getId() %></td>
                    <td><%= item.getDescripcion()%></td>
                    <td><%= item.getCantidad()%></td>
                    <td><%= item.getPrecio()%></td>
                    <td><%= item.getCategoria()%></td>
                    <td>
                        <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                    </td>
                    <td>
                        <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('Esta seguro de eliminar??..'))"
                           >Eliminar</a>
                    </td>
                </tr>
                <tr>
                    <%   
                           }
                       }
                    %>
                </tr>
        </table>
</body>
</html>
