<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Comfirmed.aspx.cs" Inherits="store._0_admin.Comfirmed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="button" Text="To-Day" 
        onclick="Button1_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button2" runat="server" CssClass="button" Text="By-Date" 
        onclick="Button2_Click" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   
</asp:Content>
