/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import ConnectionSQL.ConnectionFactorySQL;
import classjava.bytesToHex;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import javax.swing.JOptionPane;


/**
 *
 * @author pedri
 */
public class RegisterServlet extends HttpServlet {
    int calcb = 0;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtSenha");
        String name = request.getParameter("txtNome");
        String rsocial = request.getParameter("txtRazaoS");
        String CPF = request.getParameter("txtCpf");
        String CNPJ = request.getParameter("txtCnpj");
        String alter = request.getParameter("tipo");
        String rua = request.getParameter("txtRua");
        String num = request.getParameter("txtNumero");
        String bairro = request.getParameter("txtBairro");

        String hash = null;
        try {
            if(password != null){
                MessageDigest pass = MessageDigest.getInstance("MD5");
                pass.update(password.getBytes());
                byte[] hashBytes = pass.digest();
                hash = bytesToHex.bytesToHex(hashBytes);
            }
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Connection con = null;
        PreparedStatement stmt_pf = null;          
        PreparedStatement stmt_pf2 = null;
        PreparedStatement stmt_pj = null;
        PreparedStatement stmt_pj2 = null;
        
        try {
            
            LocalDate datenow = LocalDate.now();
            
            con = ConnectionFactorySQL.getConnection();          
            if(alter.equals("pf")){
                String sqlConsult = "Select COUNT(*) from pf where nome_pf = ? and cpf_pf = ? and email_pf = ? and password_pf = ?;";      
                stmt_pf2 = con.prepareStatement(sqlConsult);
                stmt_pf2.setString(1,name);
                stmt_pf2.setString(2,CPF);
                stmt_pf2.setString(3,email);
                stmt_pf2.setString(4, hash);
                int count;
                try (ResultSet rs = stmt_pf2.executeQuery()) {
                    rs.next();
                    count = rs.getInt(1);
                }
                stmt_pf2.close();

                if(count > 0){
                    JOptionPane.showMessageDialog(null, "Dados existentes!");
                    response.sendRedirect("cadastro.jsp");
                }else{
                    calcb = 1;
                    String sqlInsert = "INSERT INTO pf (Nome_PF, CPF_PF, Email_PF, Password_PF, data_regis_PF, rua_pf, num_end_pf, bairro_pf, rs_em_conta_pf) VALUES (?, ?, ?, ?, ?,?,?,?,0);";
                    stmt_pf = con.prepareStatement(sqlInsert);
                    stmt_pf.setString(1,name);
                    stmt_pf.setString(2,CPF);
                    stmt_pf.setString(3,email);
                    stmt_pf.setString(4, hash);
                    stmt_pf.setDate(5,java.sql.Date.valueOf(datenow));
                    stmt_pf.setString(6, rua);
                    stmt_pf.setString(7, num);
                    stmt_pf.setString(8, bairro);
                    stmt_pf.executeUpdate();
                    stmt_pf.close();
                    response.sendRedirect("mainclient.jsp?vl=" + calcb + "&email=" + email);
                }
            }else{
                if(alter.equals("pj") ){
                    String sqlConsult2 = "Select COUNT(*) from pj where RazaoSocial_PJ = ? and CNPJ = ? and Email_PJ = ? and Password_PJ = ?;";      
                    stmt_pj2 = con.prepareStatement(sqlConsult2);
                    stmt_pj2.setString(1,rsocial);
                    stmt_pj2.setString(2,CNPJ);
                    stmt_pj2.setString(3,email);
                    stmt_pj2.setString(4, hash);
                    ResultSet rs1 = stmt_pj2.executeQuery();
                    rs1.next();
                    int count = rs1.getInt(1);
                    rs1.close();
                    stmt_pj2.close();

                    if(count > 0){
                        JOptionPane.showMessageDialog(null, "Dados existentes!");
                        response.sendRedirect("cadastro.jsp");
                    }else{
                        calcb = 1;
                        String sqlInsert2 = "INSERT INTO pj (RazaoSocial_PJ, CNPJ, Email_PJ, Password_PJ, data_regis_PJ,rs_em_conta_pj,rua_pj,num_end_pj,bairro_pj) VALUES (?, ?, ?, ?, ?,0,?,?,?);";
                        stmt_pj = con.prepareStatement(sqlInsert2);
                        stmt_pj.setString(1,rsocial);
                        stmt_pj.setString(2,CNPJ);
                        stmt_pj.setString(3,email);
                        stmt_pj.setString(4, hash);
                        stmt_pj.setDate(5, java.sql.Date.valueOf(datenow));
                        stmt_pj.setString(6, rua);
                        stmt_pj.setString(7, num);
                        stmt_pj.setString(8, bairro);
                        stmt_pj.executeUpdate();
                        stmt_pj.close();
                        response.sendRedirect("mainclient.jsp?vl=" + calcb + "&email=" + email);
                        
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

