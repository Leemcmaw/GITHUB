/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bank;

/**
 *
 * @author leest
 */
public abstract class BankAccount

{

private static int nextAccNum;



private String name;

private int accNum;

private double balance;



public BankAccount(String n)

{

	name = n;

	accNum = nextAccNum;

	balance = 0;

	nextAccNum++;

}

 public BankAccount(String n, double b)

 {

	 name = n;

		accNum = nextAccNum;

		balance = b;

		nextAccNum++;

 }

 

 public void deposit(double amt)

 {

	 if(amt <= 0)

		{

			throw new IllegalArgumentException();

		}

		else 

		{

			balance += amt;

			

		}

 }

 public void withdraw(double amt)

 {

	 if(amt <= 0)

		{

			throw new IllegalArgumentException();

		}

		else 

		{

			balance -= amt;

			

		}

 }

 

 public String getName()

 {

	 return name;

 }

 public double getBalance()

 {

	 return balance;

 }

 public abstract void endOfMonthUpdate();

 

 public void transfer(BankAccount other, double amt)

 {

	 this.withdraw(amt);

	 other.deposit(amt);

 }

 

 public String toString()

 {

	 return "" + accNum + "\t" + name + "\t$" + balance; 

 }