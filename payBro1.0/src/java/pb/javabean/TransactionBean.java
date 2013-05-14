/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.javabean;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author Ardi
 */
public class TransactionBean {
    
    int transactionID;
    Date date;
    Time time;
    int amount;
    String payer;
    String receiver;
    int typeID;
    
    public int getTransactionID(){
        return transactionID;
    }
    
    public void setTransactionID(int transactionID){
        this.transactionID = transactionID;
    }
    
    public Date getDate(){
        return date;
    }
    
    public void setDate(Date date){
        this.date = date;
    }
    
    public Time getTime(){
        return time;
    }
    
    public void setTime(Time time){
        this.time = time;
    }
    
    public int getAmount(){
        return amount;
    }
    
    public void setAmount(int amount){
        this.amount = amount;
    }
    
    public String getPayer(){
        return payer;
    }
    
    public void setPayer(String payer){
        this.payer = payer;
    }
    
    public String getReceiver(){
        return receiver;
    }
    
    public void setReceiver(String receiver){
        this.receiver = receiver;
    }
    
    public int getTypeID(){
        return typeID;
    }
    
    public void setTypeID(){
        this.typeID = typeID;
    }
}
