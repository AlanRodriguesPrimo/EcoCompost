/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import ConnectionSQL.ConnectionFactorySQL;
import classjava.bytesToHex;
import classjava.emTrat;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class AltereCadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtSenha");
        String name = request.getParameter("txtNome");
        String CPF = request.getParameter("txtCpf");
        String CNPJ = request.getParameter("txtCnpj");
        String alter = request.getParameter("tipo");
        String rua = request.getParameter("txtRua");
        String num = request.getParameter("txtNumero");
        String bairro = request.getParameter("txtBairro");
        String emurl = emTrat.emailA;
        String hash = null;

        try {
            if(password != null){
                MessageDigest pass = MessageDigest.getInstance("MD5");
                pass.update(password.getBytes());
                byte[] hashBytes = pass.digest();
                hash = bytesToHex.bytesToHex(hashBytes);
            }
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(AltereCadServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Connection con = null;         
        PreparedStatement stmt_pf2 = null;
        PreparedStatement stmt_pj2 = null;

        
        try {
            
            con = ConnectionFactorySQL.getConnection();          
            if(alter.equals("pf")){
                String sqlConsult = "UPDATE pf SET nome_pf = ?, CPF_pf = ?, email_pf = ?, password_pf = ?, rua_pf = ?, bairro_pf = ?, num_end_pf = ? WHERE email_pf = ?;";      
                stmt_pf2 = con.prepareStatement(sqlConsult);
                stmt_pf2.setString(1,name);
                stmt_pf2.setString(2,CPF);
                stmt_pf2.setString(3,email);
                stmt_pf2.setString(4,hash);
                stmt_pf2.setString(5, rua);
                stmt_pf2.setString(6, bairro);
                stmt_pf2.setString(7, num);
                stmt_pf2.setString(8, emurl);
                stmt_pf2.executeUpdate();
                stmt_pf2.close();
                
                
                JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!");
                response.sendRedirect("mainclient.jsp?vl="+1+"&email="+email);
               
            }else{
                if(alter.equals("pj") ){
                    String sqlConsult2 = "UPDATE pj SET razaosocial_pj = ?, CNPJ = ?, email_pj = ?, password_pj = ?, rua_pj = ?, bairro_pj = ?, num_end_pj = ? WHERE email_pj = ?; ";      
                    stmt_pj2 = con.prepareStatement(sqlConsult2);
                    stmt_pj2.setString(1,name);
                    stmt_pj2.setString(2,CNPJ);
                    stmt_pj2.setString(3,email);
                    stmt_pj2.setString(4, hash);
                    stmt_pj2.setString(5, rua);
                    stmt_pj2.setString(6, bairro);
                    stmt_pj2.setString(7, num);
                    stmt_pj2.setString(8, emurl);
                    stmt_pj2.executeUpdate();
                    stmt_pj2.close();

                    JOptionPane.showMessageDialog(null, "Dados alterados com sucesso!");
                    response.sendRedirect("mainclient.jsp?email="+email);
                }
            }    
        } catch (SQLException ex) {
            Logger.getLogger(AltereCadServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        if (con != null) {
                try {
                con.close();
                } catch (SQLException e) {}
            }    
        }   
    }   
}
