using HomePage.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Rugby : System.Web.UI.Page
    {
        private void updateCartSummary()
        {
            // get number of items in cart & show in link button
            ArrayList cart = (ArrayList)Session["CART"];
            int totalItems = cart.Count;
            this.LinkButton1.Text = "Cart : " + "(" + totalItems + ")";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // first time
            {
                updateCartSummary();
            }
            Page.MaintainScrollPositionOnPostBack = true;

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(60.99);
            cartItem.setItemName("Rugby World Cup Trophy");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Btn3_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(67.99);
            cartItem.setItemName("England Rugby World Cup Signed Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(87.99);
            cartItem.setItemName("South Africa Signed Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Btn4_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(47.99);
            cartItem.setItemName("Wales Rugby World Cup Signed Caps");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Btn5_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(67.99);
            cartItem.setItemName("All Blacks Signed Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Btn6_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(79.99);
            cartItem.setItemName("Ireland Signed Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
    }
  
