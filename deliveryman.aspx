<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deliveryman.aspx.cs" Inherits="project.delivery" %>


<!DOCTYPE html>
<html>
<title>DeliveryMan's</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
    background-color: saddlebrown;
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
.button {
    background-color: lightgoldenrodyellow;
    border: none;
    color: black;
    padding: 14px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 8px 2px;

}
.wrapper {
    text-align: center;
    text-decoration-style:wavy;
      
}
.button4 {border-radius: 12px;}
.p{ margin-top: 100px;}
</style>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
    <img src="assets/images/logo.png" alt="" />
  </div>


      <form id="form1" runat="server">        
                                   <div class="w3-display-middle">
                                     

                                  <asp:GridView id="GridView7" runat="server" style=" margin:30px 30px 30px 30px" HeaderStyle-HorizontalAlign="Center" CellPadding="4" Width="700px" GridLines="None" ForeColor="#333333">
                                          
                                        <AlternatingRowStyle BackColor="White" />
                                          
                                        <FooterStyle  ForeColor="White" Font-Size="Larger" BackColor="#990000" Font-Bold="True" />
                                          <HeaderStyle  Font-Names="cursive" Font-Bold="True" ForeColor="White" Font-Size="Larger" HorizontalAlign="Center" BackColor="#990000" />
                                          <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
                                          <RowStyle ForeColor="#333333" BackColor="#FFFBD6" />
                                          <SelectedRowStyle  Font-Bold="True" ForeColor="Navy" BackColor="#FFCC66" />

                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />

                                      </asp:GridView>
                                    </div>
  <div class="w3-display-middle">
      <div class="wrapper">
          <div class="button4">
                      <br />
                     <br />
               <div class="p">
                      <asp:Button ID="Button2" class="button" runat="server"  Text="Mark Done" OnClick="Button2_Click" />                        
              </div> 
              </div>        
        </div>  
      </div>
            </form>   
  <div class="w3-display-bottomleft w3-padding-large">
    Powered by <a> Foody Love</a> 
  </div>
</div>

</body>
</html>


