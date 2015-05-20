/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package foo;

/**
 *
 * @author konanast
 */
public class Cafe {
    
    /****************************instance variable******************************/
    double cafequa;
    /***************************************************************************/
    
    /************************creating a constructor****************************/
    //every class has a constructor. The main rule of constructors is that they
    //should have the same name as the class.
    
    //public Cafe(double cafequa){
    //   this.cafequa = cafequa;   
    //}
    
    
    public void setCafequa(double cafequa) {
        //The constructor's argument shadows the object's field.
        //inside the constructor cafequa is a local copy of the constructor's first argument
        //To refer to the Cafe field cafequa, the constructor must use this.cafequa
        this.cafequa=cafequa; //the most common reason for using the this keyqord is because a field is shadowed by a method or constructor parameter.
    }
    
    public double getCafequa() {
        return cafequa;
    }
}
