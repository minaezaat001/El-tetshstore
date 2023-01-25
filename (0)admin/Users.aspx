<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="store._0_admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 134px;
        }
        .style4
        {
            color: #FFFFFF;
        }
        .style5
        {
            width: 791px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <br />
   

    <table class="style2">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" CssClass="style4" Text="Name : "></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="235px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" CssClass="style4" Text="Phone :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" CssClass="style4" Text="Username:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" CssClass="style4" Text="Password :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" CssClass="style4" Text="Kind"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="240px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Order taker</asp:ListItem>
                    <asp:ListItem>Comfermation</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server"  Text="Add" CssClass="button" 
        Width="117px" onclick="Button1_Click"  />  &nbsp;	&nbsp;	&nbsp;	&nbsp;	
    <asp:Button ID="Button2" runat="server" Text="Update" CssClass="button" 
        onclick="Button2_Click"/>&nbsp;	&nbsp;	&nbsp;	&nbsp;	
    <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="button" 
        onclick="Button3_Click"/>&nbsp;	&nbsp;	&nbsp;	
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" style="font-weight: 700; color: #FFFFFF"></asp:Label>
    &nbsp;	
    <br />
    <br />

    &nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;<asp:Label ID="Label7" 
        runat="server" style="color: #9900CC" Visible="False"></asp:Label>
&nbsp;&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	
    &nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	
    &nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;
    &nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;
    &nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;
    &nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;
     <asp:TextBox ID="TextBox6" type="text" name="search"  runat ="server" 
        placeholder="Search.." ontextchanged="TextBox6_TextChanged"></asp:TextBox>

       <br />
   

    <br />
    <asp:GridView ID="GridView1" runat="server" 
        BorderColor="Red" BorderWidth="5px" style="color: #66FFFF" 
        PageSize="5" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="&gt;&gt;&gt;" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="username" HeaderText="Username" 
                SortExpression="username" />
            <asp:BoundField DataField="npassword" HeaderText="Password" 
                SortExpression="npassword" />
            <asp:BoundField DataField="kind" HeaderText="Kind" SortExpression="kind" />
            <asp:BoundField DataField="userid" SortExpression="userid" />
        </Columns>
    </asp:GridView>

       
   

</asp:Content>
