<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product in stock.aspx.cs" Inherits="store.comfirm.Product_in_stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="navbar">
  <a href="non-Confirmed.aspx" class="style1">non-confirmed</a>
  <a href="Product in stock.aspx" class="style2"><span class="style3">Product</span></a>
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
    <form id="form1" runat="server">
    <br />
    
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_product" HeaderText="ID" 
                    SortExpression="id_product" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="qut" HeaderText="Qut" SortExpression="qut" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
