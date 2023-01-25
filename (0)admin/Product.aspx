<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="store._0_admin.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 684px;
        }
        .style4
        {
            width: 148px;
        }
        .style5
        {
            width: 148px;
            color: #FFFFFF;
        }
        .style6
        {
            color: #FFFFFF;
        }
        .style8
        {
            width: 181px;
        }
        .style9
        {
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="style2">
            <tr>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" CssClass="style6" Text="Product Name :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" CssClass="style6" Text="Price :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" CssClass="style6" Text=" Qty : "></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <table class="style2">
        <tr>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Add" 
                    onclick="Button1_Click" Width="109px" />
            </td>
            <td class="style8">
                <asp:Button ID="Button2" runat="server" CssClass="button" Text="Update" 
                    onclick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="button" Text="Delete" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
    ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" ForeColor="#993366" Visible="False"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" PageSize="5" style="color: #FFFFFF" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="&gt;&gt;&gt;" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id_product" HeaderText="ID" 
                SortExpression="id_product" />
            <asp:BoundField DataField="name" HeaderText="Product Name" 
                SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="qut" HeaderText="Qty" SortExpression="qut" />
        </Columns>
    </asp:GridView>
</asp:Content>
