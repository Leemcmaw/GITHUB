/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author leest
 */
import java.awt.Dimension;

import java.awt.GridBagConstraints;

import java.awt.GridBagLayout;

import java.awt.event.ActionEvent;

import java.awt.event.ActionListener;

import java.util.ArrayList;



import javax.swing.JButton;

import javax.swing.JLabel;

import javax.swing.JPanel;

import javax.swing.JTextField;



public class FindAccount extends  JPanel {

	

	public FindAccount(ArrayList<BankAccount> acct)

	{

		setLayout(new GridBagLayout());

		GridBagConstraints gbc = new GridBagConstraints();

		gbc.gridx = 0;

		gbc.gridy = 0;		

		

		

		JLabel name = new JLabel("Account Name:");

	

		add(name, gbc);

		JTextField nam = new JTextField("");

		nam.setPreferredSize(new Dimension(70, 30));

		gbc.gridx++;

		add(nam,  gbc);

		

		JButton confirm = new JButton("Confirm");

		gbc.gridy++;

		add(confirm, gbc);

		JLabel acc = new JLabel("");

		gbc.gridy++;

		add(acc, gbc);



		

		setVisible(true);

		

		confirm.addActionListener(new ActionListener()

		{

	public void actionPerformed(ActionEvent e)

	{

		for(BankAccount b: acct)

		{

			 String name = nam.getText();

			if(name.equals((b).getName()))

			{

			acc.setText((b).toString());

			}	

		}

		nam.setText("");

		

	}

		});



}

}