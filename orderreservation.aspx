<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderreservation.aspx.cs" Inherits="project.orderreservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>Table Reservation</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
</head>
<body class="blurBg-true" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="delivery_files/formoid1/formoid-biz-gold.css" type="text/css" />
<script type="text/javascript" src="delivery_files/formoid1/jquery.min.js"></script>
<form  runat="server" class="formoid-biz-gold" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans',Arial,Verdana,sans-serif;color:#ECECEC;max-width:500px;min-width:300px" method="post" id="form"><div class="title"><h2>reservation</h2></div>
	<div class="element-input">
        <label class="title">
            UserName:
        </label>
        <input id="username" runat="server" class="large" type="text" name="input1" placeholder="UserName" required="required" />
	</div>
	
	<div class="element-password">
        <label class="title">
            Password:
        </label>
        <input id="pass" runat="server" class="large" type="password" name="password" placeholder="Password" required="required" />

	</div>
	<div class="element-number">
        <label class="title">
            Table with Seats:
        </label>
        <asp:DropDownList ID="seat" runat="server" >
             <asp:ListItem Enabled="true" Text="2" Value="2" ></asp:ListItem>
             <asp:ListItem Enabled="true" Text="4" Value="4" ></asp:ListItem>
             <asp:ListItem Enabled="true" Text="6" Value="6"></asp:ListItem>
        </asp:DropDownList>
         
	</div>
    <div class="element-number">
        <label class="title">
            Select Branch:
        </label>
        <asp:DropDownList ID="branch" runat="server" >
        </asp:DropDownList>
        
	</div>
	<div class="submit">
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />

    </div>
   <div class="element-input">
         <label class="title">
        <asp:DynamicHyperLink ID="DynamicHyperLink1" NavigateUrl="~/register.aspx"  runat="server">Do Not Have Account? <br/>
            Register Now!</asp:DynamicHyperLink>
        </label>
       <br/>
        <br/>
        <br/>
    </div>
   
</form>


</body>
</html>
