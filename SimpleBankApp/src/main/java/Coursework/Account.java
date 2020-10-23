/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Coursework;

/**
 *
 * @author leest
 */
public class Account {
    private String accountNumber;
    private String accountHolder;
    private String openDate;
    private double balance;
    
    public Account(String accNumber, String accHolder, String date, double accBalance){
        this.accountNumber = accNumber;
        this.accountHolder = accHolder;
        this.openDate = date;
        this.balance = accBalance;
    }
    
    public void withdraw(double amount){
                  
        this.balance = this.balance - amount;
    }
    
    public void deposit(double amount){
        this.balance = this.balance + amount;
    }
    
    public void transfer(Account a, double amount){
        this.withdraw(amount);
        a.deposit(amount);
        
    }
    
    public String getaccountHolder(){
        return this.accountHolder;
    }
    
    public String getaccountNumber(){
        return this.accountNumber;
    }
    
    public String getOpenDate(){
        return this.openDate;
        
    }
    
    
    public double getBalance(){
        return this.balance;
    }
    
    @Override
    public String toString(){
        return this.accountNumber;
    }
}
