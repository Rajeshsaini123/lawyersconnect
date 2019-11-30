<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile12.aspx.cs" Inherits="projectt1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <asp:Label ID="Label1" runat="server" Text="Registration" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"  placeholder="First name" Width="183px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your first name" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />        <br />
        <asp:Label ID="Label3" runat="server" Text="Last name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Last name" Width="182px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your Last name" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />
        <br />



            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

</asp:Content>
