<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="non-com-orders.aspx.cs" Inherits="store._0_admin.non_com_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    ForeColor="White">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="cust_name" HeaderText="اسم العميل " 
                SortExpression="cust_name" />
            <asp:BoundField DataField="cust_adress" HeaderText="العنوان" 
                SortExpression="cust_adress" />
            <asp:BoundField DataField="mob1" HeaderText="موبايل1" SortExpression="mob1" />
            <asp:BoundField DataField="mob2" HeaderText="موبايل 2 " SortExpression="mob2" />
            <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                SortExpression="product_name" />
            <asp:BoundField DataField="size" HeaderText="المقاس" SortExpression="size" />
            <asp:BoundField DataField="trans" HeaderText="التوصيل" SortExpression="trans" />
            <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
            <asp:BoundField DataField="ftotal" HeaderText="الاجمالى" 
                SortExpression="ftotal" />
            <asp:BoundField DataField="orderdate" HeaderText="تاريخ الاوردر" 
                SortExpression="orderdate" />
            <asp:BoundField DataField="agent_name" HeaderText="اسم الموظف" 
                SortExpression="agent_name" />
        </Columns>
    </asp:GridView>
</asp:Content>
