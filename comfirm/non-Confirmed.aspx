<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="non-Confirmed.aspx.cs" Inherits="store.comfirm.Non_Confirmed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/main.js" type="text/javascript"></script>
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #ddd;
            color: #990000;
        }
        .style2
        {
            color: #990000;
        }
        .style3
        {
            background-color: #333333;
        }
        .style4
        {
            display: inline-block;
            color: #660033;
        }
    </style>
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
    <div class="row">
              <div class="col-75">
        <asp:GridView ID="GridView1" runat="server" 
            BorderStyle="Solid" BorderWidth="5px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1297px" 
            onrowediting="GridView1_RowEditing" onrowdeleting="GridView1_RowDeleting" AutoGenerateColumns="False" 
                      >
            <Columns>
                <asp:CommandField SelectText="&gt;&gt;&gt;" ShowSelectButton="True">
                <ControlStyle ForeColor="White" />
                </asp:CommandField>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" >
                <ControlStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="cust_name" HeaderText="أسم العميل" 
                    SortExpression="cust_name"  />
                <asp:BoundField DataField="cust_adress" HeaderText="العنوان" 
                    SortExpression="cust_adress" />
                <asp:BoundField DataField="mob1" HeaderText="موبايل 1" SortExpression="mob1" />
                <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
                <asp:BoundField DataField="product_name" HeaderText="الاوردر " 
                    SortExpression="product_name" />
                <asp:BoundField DataField="size" HeaderText="المقاس" SortExpression="size" />
                <asp:BoundField DataField="count" HeaderText="العدد" SortExpression="count" />
                <asp:BoundField DataField="transcost" HeaderText="شركه الشحن" 
                    SortExpression="transcost" />
                <asp:BoundField DataField="ftotal" HeaderText="الأجمالى " 
                    SortExpression="ftotal" />
                <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
                <asp:BoundField DataField="orderdate" HeaderText="تاريخ الاوردر " 
                    SortExpression="orderdate" />
                <asp:BoundField DataField="agent_name" HeaderText="اسم الموظف " 
                    SortExpression="agent_name" />
            </Columns>
        </asp:GridView>
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        
         &nbsp;&nbsp;
         <div class="col-25">
         <asp:TextBox ID="TextBox1" runat="server" CssClass="style4" ></asp:TextBox>
             &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="style4"></asp:TextBox>
&nbsp;
             <asp:TextBox ID="TextBox3" runat="server" CssClass="style4"></asp:TextBox>
             <asp:Label ID="Label1" runat="server"></asp:Label>
             &nbsp;&nbsp;
             <br />
             &nbsp;
             <asp:Button ID="Button1" runat="server" CssClass="col-25" ForeColor="Black" 
                 onclick="Button1_Click" Text="Not-done" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" CssClass="col-25" ForeColor="Black" 
                 onclick="Button2_Click" Text="Done" />
&nbsp;<br />
             
         </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;
         
        </div>
    
    </div>
    </form>
</body>
</html>
