
package BaseDatos;

import static BaseDatos.Parametros.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author CARSA - PISCO
 */
public class Conexion implements Parametros{
    public Connection con;
    public PreparedStatement ps;
    public Statement smt;
    public ResultSet rs;
    public Conexion(){
      try {
          Class.forName(DRIVER);
          con = DriverManager.getConnection(URL, USER, CLAVE);
          smt = con.createStatement();
      }  catch (Exception e) {
          System.out.println("ERROR!!! no se puede acceder a la BD " +e);
      }
    }
}
