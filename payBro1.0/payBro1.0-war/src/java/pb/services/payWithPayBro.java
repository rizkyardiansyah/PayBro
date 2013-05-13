/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;

/**
 *
 * @author Afrishal Priyandhana
 */
@WebService(serviceName = "payWithPayBro")
@Stateless()
public class payWithPayBro {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "payWithPayBro")
    public boolean payWithPayBro(@WebParam(name = "pUname") String pUname, @WebParam(name = "pPass") String pPass, @WebParam(name = "cUname") String cUname, @WebParam(name = "cPass") String cPass, @WebParam(name = "amount") int amount) throws ClassNotFoundException, SQLException {
        String query = "SELECT * FROM account WHERE username ='" + pUname + "' AND "
                + "password ='" + pPass + "';";
        Class.forName("com.mysql.jdbc.Driver");
        String userName = "root";
        String password = "";
        String url = "jdbc:mysql://localhost/paybro_db";
        Connection connection = DriverManager.getConnection(url, userName, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        if (resultSet.first()) {
            query = "SELECT * FROM account WHERE username ='" + cUname + "' AND "
                + "password ='" + cPass + "';";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            if (resultSet.first()) {
                
            }
        }
        return false;
    }
}
