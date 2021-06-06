<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    
    <form id="form1" runat="server" style="background:url(assets/images/ftbg.jpg) center center no-repeat;	background-size: cover;	width: 100%; overflow: hidden; ">
       <div style="margin-left: 320px ;align-content:center" >
            <br />
            <br /><br />
            <br /><br />
            <br /><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Microsoft YaHei UI Light" Font-Overline="False" Font-Size="24pt" Font-Strikeout="False" ForeColor="#993300" Text="SINGIN PAGE"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="#333300" Text="User Name" Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nametxt" runat="server" required="required" Font-Size="20pt"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="#333300" Text="Password" Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="passtxt" runat="server" required="required" Font-Size="20pt"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="SIGN IN" Height="40px" OnClick="Button1_Click" Width="213px" Font-Size="20pt" backcolor="Brown"/>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="signup" runat="server" NavigateUrl="~/register.aspx" Font-Size="20pt">Do not have account? Register Now</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

           <%--</div>--%>
        </div>
    </form>
</body>
</html>
