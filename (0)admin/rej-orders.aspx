<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="rej-orders.aspx.cs" Inherits="store._0_admin.rej_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BorderStyle="Solid" BorderWidth="2px" ForeColor="#CCCCCC">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="cust_name" HeaderText="اسم العميل " 
                SortExpression="cust_name" />
            <asp:BoundField DataField="mob1" HeaderText="موبايل 1" SortExpression="mob1" />
            <asp:BoundField DataField="mob2" HeaderText="موبايل 2" SortExpression="mob2" />
            <asp:BoundField DataField="product_name" HeaderText="الاوردر" 
                SortExpression="product_name" />
            <asp:BoundField DataField="size" HeaderText="المقاس" SortExpression="size" />
            <asp:BoundField DataField="trans" HeaderText="التوصيل " 
                SortExpression="trans" />
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
</asp:Content>
