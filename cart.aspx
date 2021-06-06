<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="project.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>Cart</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body class="blurBg-true" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="delivery_files/formoid1/formoid-biz-gold.css" type="text/css" />
<script type="text/javascript" src="delivery_files/formoid1/jquery.min.js"></script>
<form  runat="server" class="formoid-biz-gold" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans',Arial,Verdana,sans-serif;color:#ECECEC;max-width:500px;min-width:300px" method="post" id="form">
    <div class="title" style="border: solid 1px #E99D46">
        <h1 style="margin-left: 40px">DELIVERY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </h1></div>
	
	<div class="element-multiple">
        <label class="title">
            <br />
            Items:
        </label>
        <ul style="list-style-type:circle;">
          <li>Coffee</li>
          <li>Tea</li>
          <li>Milk</li>
        </ul>
        <br/> 
         <input type="button" value="Get List" onclick="GetList()"/>
    <div id="List">
        
    </div>
	</div>
    <div>
        <asp:Label ID="alert" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
    </div>
    <div class="submit">
        <asp:Button ID="Button2" runat="server" Text="Done"  ForeColor="Black" Font-Bold="True" BackColor="#E99D46"/>
    </div>

    &nbsp;<%--<div class="element-input">
         <label class="title">
        <asp:DynamicHyperLink ID="DynamicHyperLink1" NavigateUrl="~/register.aspx"  runat="server">Do Not Have Account? <br/>
            Register Now!</asp:DynamicHyperLink>
        </label>
       <br/>
        <br/>
        <br/>
    </div>--%><p>
        &nbsp;</p>
    

</form>


</body>
</html>
