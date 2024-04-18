<%@ Page Language="VB" AutoEventWireup="false" CodeFile="health.aspx.vb" Inherits="Health" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 537px;
        }
        #Panel1 {
            position: relative;
        }
        #Panel2 {
            position: relative;
            top:300px
        }
        #Image1 {
            position: absolute;
            left: 50%; 
            transform: translateX(-50%); 
        }
        #Label1 {
            position: absolute;
            top: 170px;
            left: 50%;
            transform: translateX(-50%);
        }
        #Label2 {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
        }
        .image-button {
            background-color: #64797A
        }
        .product-card {
            display: flex;
            width: 50%;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            overflow: hidden;
        }

        .product-image {
            flex: 1;
            padding: 10px;
        }

        .product-image img {
            width: 100%;
            height: auto;
        }

        .product-details {
            flex: 2;
            padding: 10px;
            background-color: #fff;
        }

        .product-card h2,
        .product-card h3,
        .product-card p {
            margin: 0;
            padding: 0;
        }

        .product-card button {
            border: none;
            outline: none;
            padding: 10px 20px;
            background-color: #000;
            color: #fff;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        .product-card button:hover {
            background-color: #333;
        }

        .price {
            color: grey;
            font-size: 22px;
        }
    </style>

</head>
<body style="background-color: #64797A">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pchhh.PNG" style="text-align: justify; height: 142px; width: 557px;" />
                <asp:Label ID="Label1" runat="server" Text="Health Care 🐾" Font-Bold="True" Font-Italic="False" Font-Names="Harrington" Font-Overline="False" Font-Size="XX-Large" ForeColor="#F7630C"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Vets in" Font-Bold="True" Font-Italic="False" Font-Names="Harrington" Font-Overline="False" Font-Size="XX-Large" ForeColor="#F7630C" Visible="false"></asp:Label>
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" Height="404px" CssClass="auto-style3">
                <div id="productContainer" runat="server" class="product-container">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/maps/delhi.jpg" CssClass="image-button" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="maps/bangalore.jpg" CssClass="image-button" />
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/maps/hyderabad.jpg" CssClass="image-button" />
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/maps/lucknow.jpg" CssClass="image-button" />
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/maps/mumbai.jpg" CssClass="image-button" />
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/maps/kolkata.jpg" CssClass="image-button" />
                </div>

            </asp:Panel>

        </div>
    </form>
</body>
</html>
