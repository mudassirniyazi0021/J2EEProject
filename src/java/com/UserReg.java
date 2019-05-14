package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserReg extends HttpServlet
{
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        String name = request.getParameter("name");
        String mobno = request.getParameter("mobno");
        String dob = request.getParameter("dob");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        PrintWriter pw = response.getWriter();

        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr", "root","root");
    PreparedStatement ps = cn.prepareStatement("insert into user(name,mobno,dob,gender,email,password) values(?,?,?,?,?,?)");

                    ps.setString(1,name);
                    ps.setString(2,mobno);
                    ps.setString(3,dob);
                    ps.setString(4,sex);
                    ps.setString(5,email );
                    ps.setString(6,pass);

            if(ps.execute())
            {
              //   pw.println("<html><body> registration Successfull...!!</body></html>");
                // RequestDispatcher rd =  request.getRequestDispatcher("login.jsp");
                // rd.include(request, response);
            }
            else
            {
                
                
                    pw.println("<script type=\"text/javascript\">");  
                    pw.println("alert('registration Successfull...!..');");
                    pw.println("</script>");
              
                 RequestDispatcher rd =  request.getRequestDispatcher("user_login.jsp");
                 rd.include(request, response);
            }
        }catch(Exception e)
        {
            pw.println("<html><body>"+ e +"</body></html>");
        }
    }
}