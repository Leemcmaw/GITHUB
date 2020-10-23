<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HomePage.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <link rel="Stylesheet" href="masterstyles.css" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navbar">
                  <!--  <a  href="Cart.aspx"><i class="fa fa-fw fa-shopping-basket"></i>Basket</a> 
                   
                    <a href="Login.aspx"><i class="fa fa-fw fa-user"></i>Login</a>-->
         <asp:HyperLink ID="Login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    <asp:HyperLink ID="Cart" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>

                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <h2 style="text-align:center">Welcome to your Basket!</h2>
    <p style="text-align:center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your current items are:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear Basket"  OnClientClick="return areyousure()" />
</p>
<p>
    <asp:Label ID="lblOrderSummary" runat="server" CssClass="demoInfo" Text="Label"></asp:Label>
</p>
<asp:Panel ID="pnlOrders" runat="server">
</asp:Panel>
<p>
    <asp:Label ID="lblTotalCost" runat="server" CssClass="cartInfo" Text="Label"></asp:Label>
</p>




</asp:Content>
