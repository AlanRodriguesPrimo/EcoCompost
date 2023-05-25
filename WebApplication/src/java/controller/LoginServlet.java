/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import ConnectionSQL.ConnectionFactorySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import classjava.bytesToHex;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtSenha");
        String alter = request.getParameter("tipo");
        String hash = null;
        
        try {
            MessageDigest pass = MessageDigest.getInstance("MD5");
            pass.update(password.getBytes());
            byte[] hashBytes = pass.digest();
            hash = bytesToHex.bytesToHex(hashBytes);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Connection con = null;          
        PreparedStatement stmt_pf = null;
        PreparedStatement stmt_pj = null;
        PreparedStatement stmtDate = null;
        PreparedStatement stmtVal = null;
               
        try {
            LocalDate datenow = LocalDate.now();          
            con = ConnectionFactorySQL.getConnection();          
            if(alter.equals("pf")){
                String sqlConsult = "Select COUNT(*) from pf where email_pf = ? and password_pf = ?;";      
                stmt_pf = con.prepareStatement(sqlConsult);
                stmt_pf.setString(1,email);
                stmt_pf.setString(2,hash);

                ResultSet rs = stmt_pf.executeQuery();
                rs.next();
                int count = rs.getInt(1);
                rs.close();
                stmt_pf.close();
                
                String sqlDate = "Select data_regis_pf from pf where data_regis_pf = ? and email_pf = ?;";      
                stmtDate = con.prepareStatement(sqlDate);
                stmtDate.setDate(1, java.sql.Date.valueOf(datenow));
                stmtDate.setString(2, email);
                ResultSet rsDt = stmtDate.executeQuery();
                String date = "";
                if (rsDt.next()){
                    date = rsDt.getString("data_regis_pf");
                }
                rsDt.close();
                stmtDate.close();
                
                if(count == 1){
                    response.sendRedirect("mainclient.jsp?data=" + date + "&email=" + email + "&vl=" + 1);
                }else{
                    JOptionPane.showMessageDialog(null, "E-mail ou senha incorretos");
                    response.sendRedirect("Login.jsp");
                }
            }else{
                if (alter.equals("pj")){
                    String sqlDate = "Select data_regis_pj from pj where data_regis_pj = ? and email_pj = ?;";      
                    stmtDate = con.prepareStatement(sqlDate);
                    stmtDate.setDate(1, java.sql.Date.valueOf(datenow));
                    stmtDate.setString(2,email);
                    ResultSet rsDt = stmtDate.executeQuery();
                    String date = "";
                    if (rsDt.next()){
                        date = rsDt.getString("data_regis_pj");
                    }
                    rsDt.close();
                    stmtDate.close();
                    
                    if("ecocompost@ecocompost.com".equals(email)){
                        String valAcount = "Select COUNT(email_pj) from pj where email_pj = ?";
                        stmtVal = con.prepareStatement(valAcount);
                        stmtVal.setString(1,email);
                        ResultSet rsval = stmtVal.executeQuery();
                        rsval.next();
                        int countVal = rsval.getInt(1);
                        rsval.close();
                        stmtVal.close();
                    
                        if(countVal == 1){
                            response.sendRedirect("main.jsp?data=" + date);
                        }
                    }else{
                        
                        String sqlConsult2 = "Select COUNT(*) from pj where Email_PJ = ? and Password_PJ = ?;";      
                        stmt_pj = con.prepareStatement(sqlConsult2);
                        stmt_pj.setString(1,email);
                        stmt_pj.setString(2, hash);

                        ResultSet rs1 = stmt_pj.executeQuery();
                        rs1.next();
                        int count = rs1.getInt(1);
                        rs1.close();
                        stmt_pj.close();
                        
                        if(count == 1){
                            response.sendRedirect("mainclient.jsp?data=" + date + "&email=" + email );
                        }else{
                        JOptionPane.showMessageDialog(null, "E-mail ou senha incorretos");
                        response.sendRedirect("Login.jsp");
                        }
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        if (con != null) {
                try {
                con.close();
                } catch (SQLException e) {}
            }    
        }   
    }
}
