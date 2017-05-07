/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import ejb.CustomerFacade;
import ejb.PurchaseOrderFacade;
import entity.Customer;
import entity.PurchaseOrder;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author david
 */
@WebServlet(name = "ServletModificarCliente", urlPatterns = {"/ServletModificarCliente"})
public class ServletModificarCliente extends HttpServlet {

    @EJB
    private PurchaseOrderFacade purchaseOrderFacade;

    @EJB
    private CustomerFacade customerFacade;

    
    
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
        
        Integer idCliente = Integer.parseInt(request.getParameter("customerId"));
        String discountCode = request.getParameter("discountCode");
        String zip = request.getParameter("zip");
        String name = request.getParameter("name");
        String add1 = request.getParameter("addressline1");
        String add2 = request.getParameter("addressline2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String phone = request.getParameter("phone");
        String fax = request.getParameter("fax");
        String email = request.getParameter("email");
        Integer creditLimit = Integer.parseInt(request.getParameter("creditLimit"));
        
        Customer cliente = customerFacade.find(idCliente);
        cliente.setName(name);
        cliente.setAddressline1(add1);
        cliente.setAddressline2(add2);
        cliente.setCity(city);
        cliente.setState(state);
        cliente.setPhone(phone);
        cliente.setFax(fax);
        cliente.setEmail(email);
        cliente.setCreditLimit(creditLimit);
        
        customerFacade.edit(cliente);
        
        List <PurchaseOrder> listaPedidos = purchaseOrderFacade.findAll();
        
        request.setAttribute("listaPedidos", listaPedidos);
        RequestDispatcher rd;
        rd = this.getServletContext().getRequestDispatcher("/listadoPedidos.jsp");
        rd.forward(request, response);
        
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
        processRequest(request, response);
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
