<%@ Page Language="VB" AutoEventWireup="false" CodeFile="grooming.aspx.vb" Inherits="Grooming" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 537px;
        }
        #Panel1 {
            top: 0px;
        }
        #Panel2 {
            top: 50px;
        }
        #Image1 {
            position: absolute;
            left: 60%; 
            transform: translateX(-50%); 
        }
        #Label1 {
            position: absolute;
            top: 81px;
            left: 77%;
            transform: translateX(-50%);
            width: 383px;
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
        
        #ImageButton1 {
            top: 20px;
            left: 0px;
        }
    </style>

</head>
<body style="background-image: url('doggroom.jpg'); background-repeat: no-repeat; background-position: center center; background-size: auto; height: 100vh; margin: 0; padding: 0; display: flex; justify-content: center; align-items: center;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" ImageUrl="pch_logo-removebg-preview.png" style="text-align: justify; height: 107px; width: 408px; top: 1px; background-color: transparent;" />

            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Grooming Zone" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="XX-Large" ForeColor="#EA5455"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Pet Groomers " Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" Font-Overline="False" Font-Size="XX-Large" ForeColor="#EA5455" Visible="False"></asp:Label>

            </asp:Panel>
            
            <asp:Panel ID="Panel2" runat="server">
                <div id="productContainer" runat="server" class="product-container">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="mapsfinal/delhimap.png" CssClass="image-button" style="position: absolute; top: 50px; left: 0px;" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="mapsfinal/bnglomap.png" CssClass="image-button" style="position: absolute; top: 280px; left: 0px;" />
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="mapsfinal/hydmap.jpg" CssClass="image-button" style="position: absolute; bottom: 30px; left: 0px;" />
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="mapsfinal/lkomap.png" CssClass="image-button" style="position: absolute; top: 50px; right: 0px;" />
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="mapsfinal/mmbmap.png" CssClass="image-button" style="position: absolute; top: 280px; right: 0px;" />
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="mapsfinal/kolmap.jpg" CssClass="image-button" style="position: absolute; bottom: 30px; right: 0px;" />
                </div>
            </asp:Panel>
        </div>


    </form>
</body>
</html>
