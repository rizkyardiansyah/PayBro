/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.javabean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ardi
 */
public class UserDataBean {
    
    public void insertUser(UserBean newUser) throws SQLException {

        String query = " INSERT INTO user (username, email, firstName, lastName,"
                + "placeOfBirth, dateOfBirth, address, city, province, postalCode, phone) VALUES "
                + "('" + newUser.getUsername() + "','"+
                newUser.getEmail() + "','" + newUser.getFirstName() + "','" +
                newUser.getLastName() + "','" + newUser.getPlaceOfBirth() + "','" +
                newUser.getDateOfBirth() + "','" + newUser.getAddress() + "','" +
                newUser.getCity() + "','" + newUser.getProvince() + "','" +
                newUser.getPostalCode() + "','" + newUser.getPhone() + "');";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String userName = "root";
            String password = "";
            String url = "jdbc:mysql://localhost/paybro_db";
            Connection connection = DriverManager.getConnection(url, userName, password);
            Statement statement = connection.createStatement();
            int resultSet = statement.executeUpdate(query);
            connection.close();
            statement.close();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDataBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
