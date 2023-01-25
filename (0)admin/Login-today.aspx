<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Login-today.aspx.cs" Inherits="store._0_admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        style="color: #C0C0C0" BorderStyle="Solid" BorderWidth="5px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="user name" 
                SortExpression="username" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
        </Columns>
    </asp:GridView>
</asp:Content>
