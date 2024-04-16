<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .product-card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: arial;
            background-color: #fff; 
            border-radius: 5px; 
            padding: 20px; 
            margin-top: 650px; 

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
        }

        #Panel1 {
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
        
        #Label1 {
            position: absolute;
            top: 601px;
            left: 58%; 
            transform: translateX(-50%);
            width: 1188px;
        }
        #Label2 {
            position: absolute;
            top: 1210px;
            left: 50%; 
            transform: translateX(-50%);
        }
        #Label3 {
            position: absolute;
            top: 1180px;
            left: 50%; 
            transform: translateX(-50%);
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
        <asp:Panel ID="Panel1" runat="server" Height="1474px" CssClass="auto-style3">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pch logo.PNG" style="text-align: justify; height: 142px; width: 557px;" />
            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#9999A0">🔍Search</asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Pet Store" OnClick="Button1_Click" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Georgia" Font-Size="Medium" />
            <asp:Button ID="Button2" runat="server" Text="Grooming" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Georgia" Font-Size="Medium" />
            <asp:Button ID="Button3" runat="server" Text="Health Care" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Georgia" Font-Size="Medium" />
            <asp:Button ID="Button4" runat="server" Text="Adopt Zone" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Georgia" Font-Size="Medium" />
            <asp:Button ID="Button5" runat="server" Text="Blogs" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Georgia" Font-Size="Medium" />
            <asp:Button ID="Button6" runat="server" Text="LOGIN" BackColor="White" BorderStyle="Dotted" Font-Bold="False" Font-Names="Papyrus" Font-Size="Large" BorderColor="#9999A0" ForeColor="#9999A0" />
            <asp:Image ID="Image2" runat="server" CssClass="auto-style1" ImageUrl="~/istockphoto-1417882544-170667a.jpg" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/istockphoto-141788254w4-170667a.jpg" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/pets-3715733_640.jpg" />
            <asp:Image ID="Image5" runat="server" ImageUrl="https://img.freepik.com/free-photo/cute-animals-group-white-background_23-2150038562.jpg" />
            <asp:Label ID="Label1" runat="server" Text="-----------------------  Featured Products  -----------------------" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="X-Large" ForeColor="#9999A0"></asp:Label>
            <asp:Button ID="Button7" runat="server" Text="🛒" BorderColor="#9999A0" BorderStyle="Dotted" />
            <asp:Label ID="Label3" runat="server" Text="petcarehub🐾" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="X-Large" ForeColor="#9999A0"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="contact us at petcarehub@gmail.com" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="X-Large" ForeColor="#9999A0"></asp:Label>


            <div class="product-container">
                <div class="product-card">
                    <img src="pedigree.jpeg" alt="Pedigree" style="width:100%"/>
                    <h2>Pedigree Dog Food</h2>
                    <p class="price">₹610</p>
                    <p>Adult Dog Food, 3kg Pack</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="product-card">
                    <img src="bed.jpg" alt="Bed" style="width:100%"/>
                    <h2>Deluxe Bed</h2>
                    <p class="price">₹1350</p>
                    <p>Extra Soft & Machine Washable</p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="product-card">
                    <img src="cat toy.jpg" alt="Cat Toy" style="width:100%"/>
                    <h2>Spring Mouse Toy</h2>
                    <p class="price">₹450</p>
                    <p>Interactive Spring Mouse</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="product-card">
                    <img src="birdfeed.jpg" alt="Bird Feeder" style="width:100%"/>
                    <h2>Bird Feeder</h2>
                    <p class="price">₹500</p>
                    <p>Seeds and Water Feeder</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="product-card">
                    <img src="sweater.jpg" alt="Cat Sweater" style="width:100%"/>
                    <h2>Green Sweater</h2>
                    <p class="price">₹900</p>
                    <p>Warm and Itch-Free</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>

        </asp:Panel>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>