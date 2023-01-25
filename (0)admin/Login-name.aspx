<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Login-name.aspx.cs" Inherits="store._0_admin.Login_name" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   

    
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
   

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        style="color: #999999">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID " SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="User name" 
                SortExpression="username" />
            <asp:BoundField DataField="time" HeaderText="Login Time" 
                SortExpression="time" />
        </Columns>
    </asp:GridView>
</asp:Content>
