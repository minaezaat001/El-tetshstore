<%@ Page Title="" Language="C#" MasterPageFile="~/(0)admin/Admin.Master" AutoEventWireup="true" CodeBehind="Login-date.aspx.cs" Inherits="store._0_admin.Login_date" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div  class="input-inline">
<div class="input-inline">
      <span class="spa">From:</span>   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="17px"
            ImageUrl="if.png" onclick="ImageButton1_Click" Width="21px" />
<asp:Calendar ID="Calendar1" runat="server"
            onselectionchanged="Calendar1_SelectionChanged" Visible="False" 
            ForeColor="White" style="color: #CCCCCC">
        </asp:Calendar>
    </div>

    <div  class="input-inline">
      <span class="spa">To   :</span>  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="17px"
            ImageUrl="if.png" onclick="ImageButton2_Click" Width="21px" />
<asp:Calendar ID="Calendar2" runat="server"
            onselectionchanged="Calendar2_SelectionChanged" Visible="False" 
            ForeColor="White" style="color: #CCCCCC">
        </asp:Calendar>
    </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        ForeColor="#CCCCCC">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="User Name" 
                SortExpression="username" />
            <asp:BoundField DataField="time" HeaderText="Login Time" 
                SortExpression="time" />
        </Columns>
    </asp:GridView>
</asp:Content>
