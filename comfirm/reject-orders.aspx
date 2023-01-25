<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reject-orders.aspx.cs" Inherits="store.comfirm.reject_orders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/main.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
<div id="navbar">
  <a href="non-Confirmed.aspx" class="style1">non-confirmed</a>
  <a href="reject-orders.aspx"" class="style1">Rejected</a>
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
<br /> <br /> <br />  
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="cust_name" HeaderText="اسم  العميل " 
                    SortExpression="cust_name" />
                <asp:BoundField DataField="cust_adress" HeaderText="العنوان " 
                    SortExpression="cust_adress" />
                <asp:BoundField DataField="mob1" HeaderText="موبايل 1" SortExpression="mob1" />
                <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
                <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                    SortExpression="product_name" />
                <asp:BoundField DataField="size" HeaderText="المقاس" SortExpression="size" />
                <asp:BoundField DataField="trans" HeaderText="التوصيل" SortExpression="trans" />
                <asp:BoundField DataField="notes" HeaderText="ملاحظات 1" 
                    SortExpression="notes" />
                <asp:BoundField DataField="ftotal" HeaderText="الاجمالى" 
                    SortExpression="ftotal" />
                <asp:BoundField DataField="orderdate" HeaderText="تاريخ الطلب" 
                    SortExpression="orderdate" />
                <asp:BoundField DataField="com_date" HeaderText="تاريخ التأكيد" 
                    SortExpression="com_date" />
                <asp:BoundField DataField="agent_name" HeaderText="اسم الموظف" 
                    SortExpression="agent_name" />
                <asp:BoundField DataField="note2" HeaderText="ملاحظات 2" 
                    SortExpression="note2" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
