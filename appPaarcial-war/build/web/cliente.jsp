<%-- 
    Document   : cliente
    Created on : 07-may-2017, 18:22:15
    Author     : david
--%>

<%@page import="entity.Customer"%>
<%
    Customer cliente = (Customer) request.getAttribute("cliente");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ServletModificarCliente" method="POST">
            <table>
                <tr>
                    <th>Campo</th>
                    <th>Valor</th>
                </tr>
                <tr>
                    <td>CUSTOMER_ID</td>
                    <td><%=cliente.getCustomerId()%></td>
                    <input type="text" value="<%=cliente.getCustomerId()%>" hidden="true" name="customerId" id="customerId">
                </tr>
                <tr>
                    <td>DISCOUNT_CODE</td>
                    <td><%=cliente.getDiscountCode().getDiscountCode() %></td>
                <input type="text" value="<%=cliente.getDiscountCode().getDiscountCode() %>" hidden="true" name="discountCode" id="discountCode">
                </tr>
                <tr>
                    <td>ZIP</td>
                    <td><%=cliente.getZip().getZipCode() %></td>
                    <input type="text" value="<%=cliente.getZip().getZipCode() %>" hidden="true" name="zip" id="zip">
                </tr>
                <tr>
                    <td>NAME</td>
                    <td><input type="text" value="<%=cliente.getName() %>" name="name" id="name"></td>
                </tr>
                <tr>
                    <td>ADDRESSLINE1</td>
                    <td><input type="text" value="<%=cliente.getAddressline1() %>" name="addressline1" id="addressline2"></td>
                </tr>
                <tr>
                    <td>ADDRESSLINE2</td>
                    <td><input type="text" value="<%=cliente.getAddressline2() %>" name="addressline2" id="addressline2"></td>
                </tr>
                <tr>
                    <td>CITY</td>
                    <td><input type="text" value="<%=cliente.getCity() %>" name="city" id="city"></td>
                </tr>
                <tr>
                    <td>STATE</td>
                    <td><input type="text" value="<%=cliente.getState() %>" name="state" id="state"></td>
                </tr>
                <tr>
                    <td>PHONE</td>
                    <td><input type="text" value="<%=cliente.getPhone() %>" name="phone" id="phone"></td>
                </tr>
                <tr>
                    <td>FAX</td>
                    <td><input type="text" value="<%=cliente.getFax()%>" name="fax" id="fax"></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="text" value="<%=cliente.getEmail()%>" name="email" id="email"></td>
                </tr>
                <tr>
                    <td>CREDIT_LIMIT</td>
                    <td><input type="number" value="<%=cliente.getCreditLimit() %>" name="creditLimit" id="creditLimit"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Guardar datos"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
