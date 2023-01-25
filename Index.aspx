<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true"   CodeBehind ="Index.aspx.cs" Inherits = "store.Index" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1"  runat="server" Text="Login" 
        onclick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="kind" SortExpression="kind" />
        </Columns>
    </asp:GridView>

</asp:Content>




