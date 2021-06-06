<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drinks.aspx.cs" Inherits="project.drinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>drinks</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body class="blurBg-true" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="delivery_files/formoid1/formoid-biz-gold.css" type="text/css" />
<script type="text/javascript" src="delivery_files/formoid1/jquery.min.js"></script>
<form  runat="server" class="formoid-biz-gold" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans',Arial,Verdana,sans-serif;color:#ECECEC;max-width:500px;min-width:300px" method="post" id="form"><div class="title"><h2>delivery</h2></div>
	
	<div class="element-multiple">
        <label class="title">
            Drinks:
        </label>
         <div>
            <asp:DropDownList ID="DropDownList1"  runat="server"  ></asp:DropDownList>
            <asp:DropDownList ID="DropDownList5"  runat="server" >
                <asp:ListItem text="----select----" Value="0" Selected="True"></asp:ListItem>
                <asp:ListItem text="1" Value="1"></asp:ListItem>
                <asp:ListItem text="2" Value="2"></asp:ListItem>
                <asp:ListItem text="3" Value="3"></asp:ListItem>
                <asp:ListItem text="4" Value="4"></asp:ListItem>
                <asp:ListItem text="5" Value="5"></asp:ListItem>
                <asp:ListItem text="6" Value="6"></asp:ListItem>
                <asp:ListItem text="7" Value="7"></asp:ListItem>
                <asp:ListItem text="8" Value="8"></asp:ListItem>
                <asp:ListItem text="9" Value="9"></asp:ListItem>
                <asp:ListItem text="10" Value="10"></asp:ListItem>
                <asp:ListItem text="11" Value="11"></asp:ListItem>
                <asp:ListItem text="12" Value="12"></asp:ListItem>
                <asp:ListItem text="13" Value="13"></asp:ListItem>
                <asp:ListItem text="14" Value="14"></asp:ListItem>
                <asp:ListItem text="15" Value="15"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Click"  />
        </div>
       
	</div>
     <div>
        <asp:Label ID="alert" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
    </div>
    <div class="submit">
        <asp:Button ID="Button2" runat="server" Text="Next"  OnClick="Button1_Click"/>
    </div>

    <%--<div class="element-input">
         <label class="title">
        <asp:DynamicHyperLink ID="DynamicHyperLink1" NavigateUrl="~/register.aspx"  runat="server">Do Not Have Account? <br/>
            Register Now!</asp:DynamicHyperLink>
        </label>
       <br/>
        <br/>
        <br/>
    </div>--%>
    

</form>


</body>
</html>
