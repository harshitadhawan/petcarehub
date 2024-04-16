<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ps.aspx.vb" Inherits="Ps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .product-card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: 10px;
            padding: 20px; 
            text-align: center;
            font-family: arial;
            background-color: #fff; 
            border-radius: 5px;
            margin-top: 50px; 
        }

        .price {
            color: grey;
            font-size: 22px;
        }
        .product-card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            border-radius: 5px; 
        }
        .product-card button:hover {
            opacity: 0.7;
        }
        .product-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
            margin-bottom: 1px; 
        }


        #Panel1 {
            position: relative;
        }
        #Panel2 {
            position: relative;
        }
        
        #Image1 {
            position: absolute;
            left: 50%; 
            transform: translateX(-50%); 
        }
        #Image2 {
            position: absolute;
            top: 223px;
            left: 0px; 
            width: 230px;
            height: 323px;
        }
       #Image3 {
            position: absolute;
            top: 223px;
            right: 0px; 
            width: 198px;
            height: 323px;
        }
       #Image4 {
            position: absolute;
            top: 223px;
            right: 744px; 
            width: 534px;
            height: 323px;
        }
       #Image5 {
            position: absolute;
            top: 223px;
            right: 199px; 
            width: 544px;
            height: 323px;
        }
        #TextBox1 {
            position: absolute;
            top: 154px;
            left: 49px;
            width: 320px;
            height: 30px;
            background-color: white; 
            padding: 5px; 
            color: #9999A0; 
            border-bottom: 2px solid #F2EEE4;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }
        #TextBox1:hover {
            background-color: #F2EEE4; 
        }
        #Button1 {
            position: absolute;
            top: 170px; 
            left: 509px; 
            width: 106px;
        }
        #Button2 {
            position: absolute;
            top: 170px; 
            left: 620px; 
            width: 106px;
        }
        #Button3 {
            position: absolute;
            top: 170px; 
            left: 745px; 
            width: 106px;
        }
        #Button4 {
            position: absolute;
            top: 169px; 
            left: 873px; 
            width: 106px;
        }
        #Button5 {
            position: absolute;
            top: 169px; 
            left: 976px; 
            width: 106px;
        }
        #Button6 {
            position: absolute;
            top: 155px; 
            left: 1200px; 
            height: 42px;
            width: 97px;
            border: 2px solid #9999A0; 
            border-radius: 10px; 
            background-color: white; 
            font-family: 'Showcard Gothic'; 
            font-size: x-large; 
            font-weight: normal; 
            color: #9999A0; 
        }
        #Button7 {
            position: absolute;
            top: 155px; 
            left: 1300px; 
            height: 42px;
            width: 58px;
            border: 2px solid #9999A0; 
            border-radius: 10px; 
            background-color: white; 
            font-family: 'Showcard Gothic'; 
            font-size: x-large; 
            font-weight: normal; 
            color: #9999A0; 
        } 
        #Button1:hover {
            color: #EA5455;
        }
        #Button2:hover {
            color: #EA5455;
        }
        #Button3:hover {
            color: #EA5455;
        }
        #Button4:hover {
            color: #EA5455;
        }
        #Button5:hover {
            color: #EA5455;
        }
        
        #Label3 {
            position: absolute;
            top: 170px;
            left: 50%;
            transform: translateX(-50%);
        }
        #Label4 {
            position: absolute;
            top: 250px;
            left: 10px;
            height: 47px;
        }
        #RadioButtonList1 {
            position: absolute;
            top: 250px;
            left: 217px;
        }
        #Label5 {
            position: absolute;
            top: 290px;
            left: 10px;
            height: 47px;
        }
        #RadioButtonList2 {
            position: absolute;
            top: 290px;
            left: 217px;
        }

        .auto-style1 {}
        .auto-style2 {
            height: 1044px;
        }
        #form1 {
            height: 1195px;
        }
        .auto-style3 {}
    </style>
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="310px" CssClass="auto-style3">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pch logo.PNG" style="text-align: justify; height: 142px; width: 557px;" />
            <asp:Label ID="Label3" runat="server" Text="PET STORE: High Quality Products for the furry-buddies 🐾" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="Medium" ForeColor="#9999A0"></asp:Label>                
            <asp:Label ID="Label4" runat="server" Text="Sort By Category" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="Medium" ForeColor="#9999A0"></asp:Label>                
            <asp:Label ID="Label5" runat="server" Text="Filter by Species" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="Medium" ForeColor="#9999A0"></asp:Label>                
            <asp:Button ID="Button7" runat="server" Text="🛒" BorderColor="#9999A0" BorderStyle="Dotted" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Relevance</asp:ListItem>
                <asp:ListItem Value="Food">Food</asp:ListItem>
                <asp:ListItem>Clothes</asp:ListItem>
                <asp:ListItem>Toys</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Dogs</asp:ListItem>
                <asp:ListItem>Cats</asp:ListItem>
                <asp:ListItem>Birds</asp:ListItem>
                <asp:ListItem>Fish</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" Height="1474px" CssClass="auto-style3">
            <div id="productContainer" runat="server" class="product-container">
            </div>

        </asp:Panel>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
