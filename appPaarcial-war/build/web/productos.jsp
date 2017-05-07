<%-- 
    Document   : productos
    Created on : 07-may-2017, 19:34:01
    Author     : david
--%>

<%@page import="entity.Product"%>
<%@page import="java.util.List"%>
<%
  List<Product> listaProductos = (List) request.getAttribute("listaProductos");
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>PRODUCT_ID</th>
                <th>MANUFACTURER_ID</th>
                <th>PRODUCT_CODE</th>
                <th>PURCHASE_COST</th>
                <th>QUANTITY_ON_HAND</th>
                <th>MARKUP</th>
                <th>AVAILABLE</th>
                <th>DESCRIPTION</th>
            </tr>
            <% for(Product producto: listaProductos){ %>
            <tr>
                <td><%=producto.getProductId() %></td>
                <td><%=producto.getManufacturerId().getManufacturerId() %></td>
                <td><%=producto.getProductCode().getProdCode() %></td>
                <td><%=producto.getPurchaseCost() %></td>
                <td><%=producto.getQuantityOnHand() %></td>
                <td><%=producto.getMarkup() %></td>
                <td><%=producto.getAvailable() %></td>
                <td><%=producto.getDescription() %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
