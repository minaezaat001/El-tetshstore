﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmed-date.aspx.cs" Inherits="store.comfirm.Confirmed_date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/main.js" type="text/javascript"></script>
</head>
<body>
<div id="navbar">
  <a href="non-Confirmed.aspx" class="style1">non-confirmed</a>
   <div class="dropdown">
    <button class="dropbtn"><strong><em>Comfirmed</em></strong> 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Confirmed-today.aspx" class="kk">Today</a>
      <a href="Confirmed-name.aspx"class="kk">By Name</a>
      <a href="Confirmed-date.aspx"class="kk">By date</a>
    </div>
  </div> 
 
</div>
<br /> <br /> <br />  
    <form id="form1" runat="server">
    <div  class="input-inline">
<div class="input-inline">
      <span class="spa">From:</span>   <asp:TextBox ID="TextBox1" runat="server" 
          Width="233px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="27px"
            ImageUrl="if.png" onclick="ImageButton1_Click" Width="30px" />
<asp:Calendar ID="Calendar1" runat="server"
            onselectionchanged="Calendar1_SelectionChanged" Visible="False" 
            ForeColor="White" style="color: #CCCCCC">
        </asp:Calendar>
    </div>

    <div  class="input-inline">
      <span class="spa">To   :</span>  <asp:TextBox ID="TextBox2" runat="server" 
            ForeColor="Black" Width="246px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="26px"
            ImageUrl="if.png" onclick="ImageButton2_Click" Width="31px" />
<asp:Calendar ID="Calendar2" runat="server"
            onselectionchanged="Calendar2_SelectionChanged" Visible="False" 
            ForeColor="White" style="color: #CCCCCC">
        </asp:Calendar>
    </div>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="cust_name" HeaderText="أسم العميل " 
                    SortExpression="cust_name" />
                <asp:BoundField DataField="cust_adress" HeaderText="العنوان " 
                    SortExpression="cust_adress" />
                <asp:BoundField DataField="mob1" HeaderText="موبايل 1" SortExpression="mob1" />
                <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
                <asp:BoundField DataField="orderdate" HeaderText="التاريخ" 
                    SortExpression="orderdate" />
                <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                    SortExpression="product_name" />
                <asp:BoundField DataField="size" HeaderText="المقاس" SortExpression="size" />
                <asp:BoundField DataField="total" HeaderText="السعر" SortExpression="total" />
                <asp:BoundField DataField="trans" HeaderText="التوصيل" SortExpression="trans" />
                <asp:BoundField DataField="transcost" HeaderText="سعر الشحن" 
                    SortExpression="transcost" />
                <asp:BoundField DataField="ftotal" HeaderText="الاجمالى " 
                    SortExpression="ftotal" />
                <asp:BoundField DataField="agent_name" HeaderText="اسم الموظف" 
                    SortExpression="agent_name" />
            </Columns>
            </asp:GridView>
    </form>
</body>
</html>
