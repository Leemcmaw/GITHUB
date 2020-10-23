/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restaurant;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author leest
 */
// Creating a constructor.
/**
 * 
 * @author leest
 */
public class ParentClass {
    public double ChickenBurger;
    public double ChickenStack;
    public double BaconBurger;
    public double Steak;
    public double Fish;
    
    public double Coke;
    public double Fanta;
    public double SevenUp;
    public double Carlsberg;
    public double WKD;
    public double Sprite;
    
    
    public double Meals;
    public double Drinks;
    public double TotalofMD;
    
    public double AllTotalofMD;
    // end of constructor
    
    //Getting amount of food 
    /**
     * 
     * @return 
     */
    public double getAmount()
    {
     Meals = ChickenBurger + ChickenStack + BaconBurger + Steak + Fish;
     Drinks = Coke + Fanta + SevenUp + Carlsberg + WKD + Sprite;
     TotalofMD = Meals + Drinks;
     AllTotalofMD = TotalofMD;
     return AllTotalofMD;
    }
    //End getAmount
    
    /**
     * 
     */
    private JFrame frame;
    //Creating a joption pane so when the user selects exit it will ask them and get them to confirm.
    /**
     * 
     */
    public void iExitSystem(){
        frame = new JFrame("Exit");
        
        if(JOptionPane.showConfirmDialog(frame,"Confirm if you want to exit", "McMaw's Restaurant", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_NO_OPTION){
            System.exit(0);
        }
    }
    //Setting prices for the food.
    public double pChickenBurger = 5.69;
    public double pChickenStack = 9.80;
    public double pBaconBurger = 7.60;
    public double pSteak = 12.70;
    public double pFish = 8.90;
    
    //Setting prices for the drinks.
    public double pCoke = 1.80;
    public double pFanta = 1.80;
    public double pSevenUp = 1.80;
    public double pCarlsberg = 2.10;
    public double pWKD = 2.50;
    public double pSprite = 1.80;
    
    //Setting tax rate.
    public double mcTax = 0.90;
    public double cFindTax(double cAmount){
        double FindTax = cAmount - (cAmount * mcTax);
        return FindTax;
    }
}//End main

