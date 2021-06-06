<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="project.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background:url(assets/images/ftbg.jpg) center center no-repeat;	background-size: cover;	width: 100%; overflow: hidden; ">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div style="margin-left: 320px">
            
            <br />
            
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Microsoft YaHei UI Light" Font-Overline="False" Font-Size="18pt" Font-Strikeout="False" ForeColor="#993300" Text="SINGUP PAGE"></asp:Label>
            <br />
            <br />
            <br />
            <div class="element-input">
            <asp:Label class="title" ID="Label2" runat="server" Font-Names="Arial" ForeColor="#333300" Text="User Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nametxt" runat="server" Height="26px" Width="135px" minlength="3" maxlength="20" required="required"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server"
             ControlToValidate="nametxt"
             ErrorMessage="User Name must be a character"
             ValidationExpression="^[A-Za-z]*$" />
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Font-Names="Arial" ForeColor="#333300" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addresstxt" runat="server" Height="26px" Width="134px"  minlength="6" maxlength="50" required="required"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Font-Names="Arial" ForeColor="#333300" Text="Contact Number"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="phonetxt" runat="server" minlength="11" maxlength="11" Height="23px" Width="136px" required="required"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server"
            ControlToValidate="phonetxt" 
            ErrorMessage="invalid phone number" 
            ValidationExpression="[0-9]{11}" />
            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="#333300" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="passtxt" type="password" runat="server" Height="25px" Width="137px" minlength="6" maxlength="10" required="required"></asp:TextBox>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="REGISTER" Height="31px" Width="114px" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
