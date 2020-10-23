<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HomePage.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
 <link rel="Stylesheet" href="masterstyles.css" />
    <style type="text/css">


        .fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
    padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 100px;
  border-radius: 50%;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
    padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 100px;
  border-radius: 50%;
}
.fa-instagram {
  background: #125688;
  color: white;
    padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 100px;
  border-radius: 50%;
}
.fa-snapchat-ghost {
  background: #fffc00;
  color: white;
      padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 100px;
  border-radius: 50%;
  text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
    </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navbar">
                   <!-- <a  href="Cart.aspx"><i class="fa fa-fw fa-shopping-basket"></i>Basket</a> 
                                        <a href="Login.aspx"><i class="fa fa-fw fa-user"></i>Login</a>-->
         <asp:HyperLink ID="Login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    <asp:HyperLink ID="Cart" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
                </div>
    <!--End icon bar-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
       
     <h2 style="text-align:center">Welcome to the Contact Us Page</h2>
    <p style="text-align:center">We are open 24/7 for enquiries!</p>
    <div>
      <fieldset>
    <legend>Contact us</legend> 
    <div class='short_explanation'>* required fields<div class='container'>
   <asp:Label ID="lblName" runat="server" 
               Text="Your Name*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtName" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtName" 
                                ErrorMessage="Enter Your Name" 
                               SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>
     
          </div>
     
    <div class='container'>
    <asp:Label ID="lblEmail" runat="server" 
               Text="Email*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMail" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                             runat="server" 
                                ControlToValidate="txtMail" 
                                ErrorMessage="Please Provide 
                                            Your Email Address" 
                                SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>
    
    <div class='container'>
    <asp:Label ID="lblSubject" runat="server" 
               Text="Subject*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtSubject" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                              runat="server" 
                               ControlToValidate="txtSubject" 
                              ErrorMessage="Please provide 
                                             reason to contact us" 
                                SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblMessage" runat="server" 
               Text="Feedback:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMessage" runat="server" 
                 TextMode="MultiLine" Width="268px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtMessage" 
                               ErrorMessage="Write your feedback" 
                               SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Button ID="btnSubmit" runat="server" 
                Text="Submit" onclick="btnSubmit_Click"/>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" 
                         runat="server" CssClass="error"/>
  </fieldset>
        
    


          </div>
     <br />
    <br />
    <h2 style="text-align:center"> Find us on our social medias!</h2>
    <a href="#" class="fa fa-facebook"></a>
    <a href="#" class="fa fa-twitter"></a>
    <a href="#" class="fa fa-instagram"></a>
    <a href="#" class="fa fa-snapchat-ghost"></a>
</asp:Content>

