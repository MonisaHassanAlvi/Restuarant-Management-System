<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messagealert.aspx.cs" Inherits="project.messagealert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title>Successfull</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
    
<body class="blurBg-true" style="background-color:#E99D46">



<!-- Start Formoid form-->
<link rel="stylesheet" href="delivery_files/formoid1/formoid-biz-gold.css" type="text/css" />
<script type="text/javascript" src="delivery_files/formoid1/jquery.min.js"></script>
    
        
<form  runat="server" class="formoid-biz-gold" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans',Arial,Verdana,sans-serif;color:#ECECEC;max-width:500px;min-width:300px" method="post" id="form"><div class="title"><h1 style="margin-left: 40px">Successfull</h1></div>
	<div>
        <asp:Label ID="lbmessage" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
    </div>
        <div class="submit">
            <asp:Button ID="Button2" runat="server" Text="BACK" OnClick="Button1_Click" BackColor="#E99D46" Font-Bold="True" ForeColor="Black" />
        <div class="submit">
        </div>
        </div>
    
   
</form>


</body>
</html>