using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HomePage.App_Code;
namespace HomePage
{
    public partial class WebForm8 : System.Web.UI.Page
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
            if (!IsPostBack) // first time
            {
                try
                {
                    updateCartSummary();
                }
                catch (Exception ex)
                {
                    Response.Redirect("welcome.aspx");
                }
                Page.MaintainScrollPositionOnPostBack = true;
            }



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnWiggins_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(47.99);
            cartItem.setItemName("Lionel Messi Top");
            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];
            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);
            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();
        }

        protected void BtnSky_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(67.99);
            cartItem.setItemName("Arsenal Invinclibles Bundle");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();
        }

        protected void BtnCity_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(87.99);
            cartItem.setItemName("Man City Bundle");

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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(77.99);
            cartItem.setItemName("Mo Salah Signed Ball");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(67.99);
            cartItem.setItemName("Alan Shearers Signed Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Trace.Warn("Adding an item to the cart");
            // create cart item object with the book details
            CartItem cartItem = new CartItem();
            cartItem.setCost(89.99);
            cartItem.setItemName("Pele World Cup Winning Jersey");

            // extract arraylist from session variable
            ArrayList arrCart = (ArrayList)Session["CART"];

            // add the cartitem object to the arraylist
            arrCart.Add(cartItem);

            //store arrayList back into the session variable
            Session.Add("CART", arrCart);

            updateCartSummary();
        }
    }
    }



