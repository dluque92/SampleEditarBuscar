<%-- 
    Document   : listadoPedidos
    Created on : 07-may-2017, 18:00:08
    Author     : david
--%>

<%@page import="entity.PurchaseOrder"%>
<%@page import="java.util.List"%>
<% 
    List <PurchaseOrder> listaPedidos = (List) request.getAttribute("listaPedidos");
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
                <th>ORDER_NUM</th>
                <th>CUSTOMER_ID</th>
                <th>PRODUCT_ID</th>
                <th>QUANTITY</th>
                <th>SHIPPING_COST</th>
                <th>SALES_DATE</th>
                <th>SHIPPING_DATE</th>
                <th>FREIGHT_COMPANY</th>
                <th></th>
                <th></th>
            </tr>
            <% for(PurchaseOrder producto : listaPedidos){ %>
            <tr>
                <td><%=producto.getOrderNum() %></td>
                <td><%=producto.getCustomerId().getCustomerId() %></td>
                <td><%=producto.getProductId().getProductId() %></td>
                <td><%=producto.getQuantity() %></td>
                <td><%=producto.getShippingCost() %></td>
                <td><%=producto.getSalesDate() %></td>
                <td><%=producto.getShippingDate() %></td>
                <td><%=producto.getFreightCompany() %></td>
                <td><a href="ServletEditarCliente?idCliente=<%=producto.getCustomerId().getCustomerId() %>">Editar Cliente</a></td>
                <td><a href="ServletBuscarProductosFabricante?idFab=<%=producto.getProductId().getManufacturerId().getManufacturerId() %>">Buscar productos del Fabricante</a></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
