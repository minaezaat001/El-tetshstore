<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="store.order_taker.test2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>all orders</title>
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/main.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>

<div id="navbar">
  <a href="test.aspx">New Order</a>
  <a href="test2.aspx" class="active">All Orders</a>
 
</div>
<br /> <br /> <br />
    <form id="form1" runat="server">
    <div>
    
    
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="cust_name" HeaderText="اسم العميل " 
                    SortExpression="cust_name" />
                <asp:BoundField DataField="cust_adress" HeaderText="العنوان " 
                    SortExpression="cust_adress" />
                <asp:BoundField DataField="mob1" HeaderText="موبايل 1 " SortExpression="mob1" />
                <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
                <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                    SortExpression="product_name" />
                <asp:BoundField DataField="size" HeaderText="المقاس " SortExpression="size" />
                <asp:BoundField DataField="count" HeaderText="العدد" SortExpression="count" />
                <asp:BoundField DataField="trans" HeaderText="التوصيل " 
                    SortExpression="trans" />
                <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
                <asp:BoundField DataField="ftotal" HeaderText="السعر " 
                    SortExpression="ftotal" />
                <asp:BoundField DataField="transcost" HeaderText="الشحن" 
                    SortExpression="transcost" />
                <asp:BoundField DataField="ftotal" HeaderText="الاجمالى" 
                    SortExpression="ftotal" />
            </Columns>
        </asp:GridView>
    
    </div>
    
    
   
    </form>
   
</body>
</html>
