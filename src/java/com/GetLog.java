package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class GetLog extends HttpServlet
{  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        HttpSession ses = request.getSession();
        String username = (String) ses.getAttribute("uname");
        String desc = (String) ses.getAttribute("dpn");
        String link = request.getParameter("userclick");
        try {
            Class.forName("com.mysql.jdbc.Driver");

    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr", "root","root");
    PreparedStatement ps = cn.prepareStatement("insert into userlog values(?,?,?)");
                ps.setString(1,username);
                ps.setString(2,link);
                ps.setString(3,desc);
                ps.execute();      

                RequestDispatcher rd = request.getRequestDispatcher(link);
                rd.forward(request, response);
                
             } catch (Exception ex)
             {
                ex.printStackTrace();
             }
    }
}