<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stafflogin.aspx.cs" Inherits="project.stafflogin" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Staff Login </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-false" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="stafflogin_files/formoid1/formoid-metro-cyan.css" type="text/css" />
<script type="text/javascript" src="stafflogin_files/formoid1/jquery.min.js"></script>
    <form class="formoid-metro-cyan" runat="server" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:480px;min-width:150px" method="post"><div class="title"><h1>&nbsp;&nbsp; Staff Login</h1></div>
    	<div class="element-select">
            <label class="title">Staff Position</label>
            <div class="large">
                <span>
                    <asp:DropDownList ID="staff" runat="server" name="select" AutoPostBack="false" >
                         <asp:ListItem Text="MANAGER" Value="MANAGER" ></asp:ListItem>
                         <asp:ListItem Text="CASHIER" Value="CASHIER" ></asp:ListItem>
                         <asp:ListItem Text="DELIVERYMAN" Value="DELIVERYMAN" ></asp:ListItem>
                    </asp:DropDownList>
                    <i>
                    </i>
                </span>
            </div>
    	</div>
	    <div class="element-input"><label class="title">Staff UserName</label>
            <input id="username" runat="server" class="large" type="text" name="input" required="required"/>
	    </div>
	    <div class="element-password"><label class="title">Password</label>
            <input id="password" runat="server" class="large" type="password"  name="password" value="" required="required"/>

	    </div>
        <div class="submit">
            <asp:Button ID="Button2" runat="server" Text="BACK" OnClick="Button1_Click1" BackColor="#E99D46" Font-Bold="True" ForeColor="Black" />
            <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" BackColor="#E99D46" Font-Bold="True" ForeColor="Black" />
            
        </div>

    </form>
    <script type="text/javascript" src="stafflogin_files/formoid1/formoid-metro-cyan.js"></script>
    <!-- Stop Formoid form-->



</body>
</html>
