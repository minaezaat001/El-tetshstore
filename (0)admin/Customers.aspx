<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="store._0_admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   tt<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:Button ID="Button1"
       runat="server" Text="Search" onclick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BorderStyle="Solid" BorderWidth="2px" ForeColor="Silver">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="cust_name" HeaderText="أسم العميل" 
                SortExpression="cust_name" />
            <asp:BoundField DataField="cust_adress" HeaderText="العنوان" 
                SortExpression="cust_adress" />
            <asp:BoundField DataField="mob1" HeaderText="موبايل 1 " SortExpression="mob1" />
            <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
            <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                SortExpression="product_name" />
            <asp:BoundField DataField="ftotal" HeaderText="الاجمالى " 
                SortExpression="ftotal" />
            <asp:BoundField DataField="orderdate" HeaderText="تاريخ الطلب " 
                SortExpression="orderdate" />
            <asp:BoundField DataField="com_date" HeaderText="تاريخ التأكيد" 
                SortExpression="com_date" />
            <asp:BoundField DataField="agent_name" HeaderText="اسم الموظف" 
                SortExpression="agent_name" />
        </Columns>
    </asp:GridView>
    </asp:Content>
