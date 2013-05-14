/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.javabean;

/**
 *
 * @author Ardi
 */
public class AccountBean {
    
    String username;
    String password;
    UserBean user;
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }  
    
    public UserBean getUser(){
        return user;
    }
    
    public void setUser(UserBean user){
        this.user = user;
    }
}
