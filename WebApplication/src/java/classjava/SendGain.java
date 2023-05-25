package classjava;

import ConnectionSQL.ConnectionFactorySQL;
import controller.RegisterServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.time.LocalDate;


public class SendGain {
    public static String ValidationPF(String Email, float peso){
        Connection con = null;
        PreparedStatement stmt_pf = null;          
        String name = null;
        float gainB = CalBonus.calculatorBPF(peso);
        float gain = Calculator.calculatorPF(peso);
        try{
            
            LocalDate datenow = LocalDate.now();
            String data = datenow.toString();
            
            con = ConnectionFactorySQL.getConnection();
            
            String sqlConsult = "Select email_pf, nome_pf, data_regis_pf from pf where email_pf = ?;";      
            stmt_pf = con.prepareStatement(sqlConsult);
            stmt_pf.setString(1,Email);
            ResultSet rs = stmt_pf.executeQuery();
            rs.next();
            name = rs.getString(2);
            String date = rs.getString(3);
            rs.close();
            stmt_pf.close();
            if(date.equals(data)){
                String sqlInsert2 = "Update pf set RS_em_conta_PF = Rs_em_conta_PF + ? where email_pf = ?";
                stmt_pf = con.prepareStatement(sqlInsert2);
                stmt_pf.setFloat(1,gainB);
                stmt_pf.setString(2,Email);
                stmt_pf.executeUpdate();
                stmt_pf.close();
            } else {
                String sqlInsert2 = "Update pf set RS_em_conta_PF = Rs_em_conta_PF + ? where email_pf = ?";
                stmt_pf = con.prepareStatement(sqlInsert2);
                stmt_pf.setFloat(1,gain);
                stmt_pf.setString(2,Email);
                stmt_pf.executeUpdate();
                stmt_pf.close();
            }
        }catch(SQLException ex) {
            
        }finally{
        if (con != null) {
                try {
                con.close();
                } catch (SQLException e) {}
            }    
        }    
        return name;
    }
    public static String ValidationPJ(String Email, float peso){
        Connection con = null;
        PreparedStatement stmt_pf = null;          
        String name = null;
        float gainB = CalBonus.calculatorBPJ(peso);
        float gain = Calculator.calculatorPJ(peso);
        try{
            
            LocalDate datenow = LocalDate.now();
            String data = datenow.toString();
            
            con = ConnectionFactorySQL.getConnection();
            
            String sqlConsult = "Select email_pj, razaosocial_pj, data_regis_pj from pj where email_pj = ?;";      
            stmt_pf = con.prepareStatement(sqlConsult);
            stmt_pf.setString(1,Email);
            ResultSet rs = stmt_pf.executeQuery();
            rs.next();
            name = rs.getString(2);
            String date = rs.getString(3);
            rs.close();
            stmt_pf.close();
            if(date.equals(data)){
                String sqlInsert2 = "Update pj set RS_em_conta_Pj = ? where email_pj = ?";
                stmt_pf = con.prepareStatement(sqlInsert2);
                stmt_pf.setFloat(1,gainB);
                stmt_pf.setString(2,Email);
                stmt_pf.executeUpdate();
                stmt_pf.close();
            } else {
                String sqlInsert2 = "Update pj set RS_em_conta_Pj = Rs_em_conta_Pj + ? where email_pj = ?";
                stmt_pf = con.prepareStatement(sqlInsert2);
                stmt_pf.setFloat(1,gain);
                stmt_pf.setString(2,Email);
                stmt_pf.executeUpdate();
                stmt_pf.close();
            }
        }catch(SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        if (con != null) {
                try {
                con.close();
                } catch (SQLException e) {}
            }    
        }    
        return name;
    }
}    
