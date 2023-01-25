<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="store.order_taker.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/main.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
        .style2
        {
            color: #161616;
        }
        .dd { color :White}
    </style>
</head>
<body>

<div id="navbar">
  <a href="test.aspx" class="active" >New Order</a>
  <a href="test2.aspx">All Orders</a>
 
</div>
<br /> <br /> <br />
  
     <form id="form1" runat="server">
     <div class="row">
  <div class="col-75">
    <div class="container">
      
      
        <div class="row">
          <div class="col-50">
            <h3 class="style1">بيانات الاوردر </h3>
            <label for="fname" class="style1"><i class="fa fa-user"></i> نوع الصنف</label>
              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="drop" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                  AutoPostBack="True" ontextchanged="DropDownList2_TextChanged">
              </asp:DropDownList>

              <label for="fname" class="style1"><i class="fa fa-user"></i> العدد</label>
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop" 
                  AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                  <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
                  <asp:ListItem>7</asp:ListItem>
                  <asp:ListItem>8</asp:ListItem>
                  <asp:ListItem>9</asp:ListItem>
              </asp:DropDownList>
            <label for="email"><i class="fa fa-envelope"></i> <span class="style1">المقاس</span> </label>
              <asp:DropDownList ID="DropDownList3" runat="server" CssClass="drop">
                  <asp:ListItem>S</asp:ListItem>
                  <asp:ListItem>M</asp:ListItem>
                  <asp:ListItem>L</asp:ListItem>
                  <asp:ListItem>XL</asp:ListItem>
                  <asp:ListItem>2X</asp:ListItem>
                  <asp:ListItem>3X</asp:ListItem>
              </asp:DropDownList>
            &nbsp;<label for="city" class="style1"><i class="fa fa-institution"></i>طريقه الشحن </label>
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                  onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                  AutoPostBack="True">
                  <asp:ListItem Value="store"  >ستور </asp:ListItem>
                  <asp:ListItem Value="aramex">شركه شحن</asp:ListItem>
              </asp:RadioButtonList>
              <div class="row">
                 <div class="col-50">
                  <asp:DropDownList ID="DropDownList4" runat="server" CssClass="drop" 
                  AutoPostBack="True" onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                  <asp:ListItem>0</asp:ListItem>
                  <asp:ListItem>25</asp:ListItem>
                  <asp:ListItem>30</asp:ListItem>
                  <asp:ListItem>35</asp:ListItem>
                  <asp:ListItem>40</asp:ListItem>
                  <asp:ListItem>45</asp:ListItem>
                  <asp:ListItem>50</asp:ListItem>
                  <asp:ListItem>55</asp:ListItem>
                  <asp:ListItem>60</asp:ListItem>
                  <asp:ListItem>65</asp:ListItem>
                  <asp:ListItem>70</asp:ListItem>
                  <asp:ListItem>75</asp:ListItem>
                  <asp:ListItem>80</asp:ListItem>
              </asp:DropDownList>
                 </div>
                    <div class="col-50">
                    <label for="state" class="dd">السعر </label>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </div>
              </div>
             

             
<div class="row">
              <div class="col-50">
                <label for="state" class="dd">الاجمالى </label>
                  <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
              </div>
              <div class="col-50">
                <label for="zip" class="dd">ملاحظات </label>
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3 class="style2"><span class="style1">بيانات العميل</span> </h3>
            <label for="fname" class="dd">أسم العميل </label>
     
              <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <label for="cname" class="dd"> 1العنوان </label>
              <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <label for="ccnum" class="dd">رقم الموب 1</label>
              <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <label for="expmonth" class="dd">رقم الموب 2 </label>
              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <div class="row">
              <div class="col-50">
         
              </div>
              <div class="col-50">

              </div>
            </div>
          </div>
          
        </div>
       
        <asp:Button ID="Button1" runat="server" Text="Done" 
              onclick="Button1_Click" CssClass="btn" />
      
    </div>
  </div>
  
</div>
      </form>

      <div class="footer">
  <p> Copyright © 2018 Pnetworkers </p>
</div>
  

</body>
<script type="text/javascript">
    var prevScrollpos = window.pageYOffset;
    window.onscroll = function () {
        var currentScrollPos = window.pageYOffset;
        if (prevScrollpos > currentScrollPos) {
            document.getElementById("navbar").style.top = "0";
        } else {
            document.getElementById("navbar").style.top = "-50px";
        }
        prevScrollpos = currentScrollPos;
    }
</script>
</html>
