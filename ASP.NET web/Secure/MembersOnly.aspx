<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MembersOnly.aspx.cs" Inherits="HomePage.Secure.MembersOnly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
 <link rel="Stylesheet" href="masterstyles.css" />
    <style type="text/css">
        * {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
}

.header {
    text-align: center;
    padding: 32px;
}

.row {
    display: -ms-flexbox; /* IE 10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE 10 */
    flex-wrap: wrap;
    padding: 0 4px;
}

/* Create two equal columns that sits next to each other */
.column {
    -ms-flex: 50%; /* IE 10 */
    flex: 50%;
    padding: 0 4px;
}

    .column img {
        margin-top: 8px;
        vertical-align: middle;
    }

/* Style the buttons */
.btn {
    border: none;
    outline: none;
    padding: 10px 16px;
    background-color: #f1f1f1;
    cursor: pointer;
    font-size: 18px;
}

    .btn:hover {
        background-color: #ddd;
    }

    .btn.active {
        background-color: #666;
        color: white;
    }
    </style>
    <script type="text/javascript">
        var elements = document.getElementsByClassName("column");

        // Declare a loop variable
        var i;

        // Full-width images
        function one() {
            for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "100%";  // IE10
                elements[i].style.flex = "100%";
            }
        }

        // Two images side by side
        function two() {
            for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "50%";  // IE10
                elements[i].style.flex = "50%";
            }
        }

        // Four images side by side
        function four() {
            for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "25%";  // IE10
                elements[i].style.flex = "25%";
            }
        }

        // Add active class to the current button (highlight it)
        var header = document.getElementById("myHeader");
        var btns = header.getElementsByClassName("btn");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function () {
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
            });
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="navbar">
                   <!-- <a  href="Cart.aspx"><i class="fa fa-fw fa-shopping-basket"></i>Basket</a> 
                                        <a href="Login.aspx"><i class="fa fa-fw fa-user"></i>Login</a>-->
             <asp:HyperLink ID="Login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    <asp:HyperLink ID="Cart" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<div class="header" id="myHeader">
    <h1>Welcome Members!</h1>
  <h2>Members only images</h2>
  <p>Click on the buttons to change the grid view.</p>
  <button class="btn" onclick="one()">1</button>
  <button class="btn active" onclick="two()">2</button>
  <button class="btn" onclick="four()">4</button>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="../Photos/8.jpg" alt="NFL" style="width:100%"/>
    <img src="../Photos/alan.jpg" alt="Alan" style="width:100%"/>
    <img src="../Photos/allblack.jpg" alt="All Blacks" style="width:100%"/>
    <img src="../Photos/berk.jpg" alt="Bercamp" style="width:100%"/>
    <img src="../Photos/boot.jpg" alt="Boot" style="width:100%"/>
    <img src="../Photos/eng.jpg" alt="England" style="width:100%"/>
    <img src="../Photos/footy.jpg" alt="Footy" style="width:100%"/>
  </div>
  <div class="column">
    <img src="../Photos/ireland.jpg" alt="Ireland" style="width:100%"/>
    <img src="../Photos/kaka.jpg" alt="Kaka" style="width:100%"/>
    <img src="../Photos/mem1.jpg" alt="Mem1" style="width:100%"/>
    <img src="../Photos/mess1.jpg" alt="Messi" style="width:100%"/>
    <img src="../Photos/messi.jpg" alt="Messi" style="width:100%"/>
    <img src="../Photos/pele.jpg" alt="Pele " style="width:100%"/>
  </div>  

</div>

</asp:Content>
