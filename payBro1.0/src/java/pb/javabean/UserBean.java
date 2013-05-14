/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.javabean;

import java.sql.Date;

/**
 *
 * @author Ardi
 */
public class UserBean {
    
    String username;
    String password;
    String email;
    String firstName;
    String lastName;
    String placeOfBirth;
    Date dateOfBirth;
    String address;
    String city;
    String province;
    String postalCode;
    String phone;
    int balance;
    
    public String getUsername(){
        return username;
    }
    
    public void setUsername(String username){
        this.username = username;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getFirstName(){
        return firstName;
    }
    
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }
    
    public String getLastName(){
        return lastName;
    }
    
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    
    public String getPlaceOfBirth(){
        return placeOfBirth;
    }
    
    public void setPlaceOfBirth(String placeOfBirth){
        this.placeOfBirth = placeOfBirth;
    }
    
    public Date getDateOfBirth(){
        return dateOfBirth;
    }
    
    public void setDateOfBirth(Date dateOfBirth){
        this.dateOfBirth = dateOfBirth;
    }
    
    public String getAddress(){
        return address;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    
    public String getCity(){
        return city;
    }
    
    public void setCity(String city){
        this.city = city;
    }
    
    public String getProvince(){
        return province;
    }
    
    public void setProvince(String province){
        this.province = province;
    }
   
    public String getPostalCode(){
        return postalCode;
    }
    
    public void setPostalCode(String postalCode){
        this.postalCode = postalCode;
    }
    
    public String getPhone(){
        return phone;
    }
    
    public void setPhone(String phone){
        this.phone = phone;
    }    
    
    public int getBalance(){
        return balance;
    }
    
    public void setBalance(int balance){
        this.balance = balance;
    }
}
