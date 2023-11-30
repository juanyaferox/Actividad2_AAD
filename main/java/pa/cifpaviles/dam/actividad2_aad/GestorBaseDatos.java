/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pa.cifpaviles.dam.actividad2_aad;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author hulke
 */
public class GestorBaseDatos {
   
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String urlbd = "jdbc:mysql://127.0.0.1/bdperegrinos_juaniagomartinezcorreia";
    
    public static Connection Conexion(){
        Connection connection = null;
   
        try{ 
            Class.forName(driver);
            connection = DriverManager.getConnection(urlbd, "root", "");
            System.out.println("\nSe ha realizado la conexión con la base de datos");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Error: "+e.getMessage());
        }
        return connection;
    }
    
    public static void CerrarConexion(Connection connection){
        try{
             if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("\nSe cerrado la conexión con la base de datos");
             }
        }catch (SQLException e) {
            System.out.println("Error: "+e.getMessage());
        }
    }
    
}
