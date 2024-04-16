<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Image1 {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
        #Login1 {
            position: absolute;
            top: 166px;
            left: 50%;
            transform: translateX(-50%);
        }
        #LButton1 {
            position: absolute;
            top: 496px; 
            left: 50%;
            transform: translateX(-50%);
            width: 287px;
        }
        #CreateUserWizard1 {
            position: absolute;
            top: 170px;
            left: 50%;
            transform: translateX(-50%);
        }
        .auto-style1 {
            height: 498px;
        }
        .auto-style2 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="491px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/pch logo.PNG" style="text-align: justify; height: 142px; width: 557px;" />
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
                    <CreateUserButtonStyle Font-Bold="True" Font-Italic="True" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>
                <asp:Login ID="Login1" runat="server" Visible="False">
                </asp:Login>
                <asp:Button ID="LButton1" runat="server" Text="Already a user? Login🐾" OnClick="LButton1_Click" BackColor="White" BorderStyle="None" Font-Names="Georgia" Font-Size="Medium" Font-Underline="True" ForeColor="#9999A0" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
