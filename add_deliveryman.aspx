<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_deliveryman.aspx.cs" Inherits="project.add_deliveryman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>Add_Cashier</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
    
<body class="blurBg-true" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="delivery_files/formoid1/formoid-biz-gold.css" type="text/css" />
<script type="text/javascript" src="delivery_files/formoid1/jquery.min.js"></script>
    
        
<form  runat="server" class="formoid-biz-gold" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans',Arial,Verdana,sans-serif;color:#ECECEC;max-width:500px;min-width:300px" method="post" id="form"><div class="title"><h1 style="margin-left: 40px">ADD DELIVERYMAN</h1></div>
	
    <div class="element-input">
        <label class="title">
            UserName:
        </label>
        <input id="username" runat="server" class="large" type="text" name="input1" minlength=" 3" maxlength="20" placeholder="UserName"  required="required"/>
         <asp:RegularExpressionValidator runat="server"
             ControlToValidate="username"
             ErrorMessage="User Name must be a character"
             ValidationExpression="^[A-Za-z]*$" />

	</div>
	
	<div class="element-password">
        <label class="title">
            Password:
        </label>
        <input id="pass" runat="server" class="large" type="password" name="password" minlength="6" maxlength="10" placeholder="Password" required="required" />
	</div>
 
    <div class="element-input" title="Delivery Address">
        <label class="title">
            Area:
        </label>
        <input id="area" runat="server" class="large" type="text" minlength="6" maxlength="50" name="address"  placeholder="Area"  required="required"/>

	</div>
    
        <div class="submit">
            <asp:Button ID="Button2" runat="server" Text="BACK" OnClick="Button1_Click" BackColor="#E99D46" Font-Bold="True" ForeColor="Black" />
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click1" BackColor="#E99D46" Font-Bold="True" ForeColor="Black" />
        <div class="submit">
        </div>
        </div>
    
   
</form>


</body>
</html>