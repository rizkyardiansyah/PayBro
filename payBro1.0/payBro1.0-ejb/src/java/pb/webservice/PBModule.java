/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pb.webservice;

import javax.ejb.Stateless;

/**
 *
 * @author Ardi
 */
@Stateless
public class PBModule implements PBModuleLocal {

    // Add business logic
    String message = "TES MODUL";

    /**
     * Get the value of message
     *
     * @return the value of message
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set the value of message
     *
     * @param message new value of message
     */
    public void setMessage(String message) {
        this.message = message;
    }
}
