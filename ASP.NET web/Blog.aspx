<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="HomePage.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <link rel="Stylesheet" href="masterstyles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="navbar">
                    <!--<a  href="Cart.aspx"><i class="fa fa-fw fa-shopping-basket"></i>Basket</a> 
                                        <a href="Login.aspx"><i class="fa fa-fw fa-user"></i>Login</a>-->
           <asp:HyperLink ID="Login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    <asp:HyperLink ID="Cart" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
           </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
    <br />
</p>
<p>
    <asp:TextBox ID="txtBlog" runat="server" Font-Size="X-Large" Height="250px" TextMode="MultiLine" Width="650px" ReadOnly="True"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:TextBox ID="txtEntry" runat="server" Font-Size="X-Large" Width="650px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
