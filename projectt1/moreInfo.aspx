<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="moreInfo.aspx.cs" Inherits="projectt1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/this is.jpg" Height="600px" Width="1506px">
    <br />
    Connecting Various Lawyers all over the world.
    <hr />
    <div>

      <div style="position:relative; float:left;min-height:515px;width:18%"  class="verticalLine">
            <div style="margin-left:50px;margin-top:20px;margin-right:10px;" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/hulk.jpg" style="border: 1px solid #000;border-radius: 72%;width: 110px;height: 100px;"  />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Account" PostBackUrl="~/allUsers.aspx" />
                <asp:Button ID="Button2" runat="server" Text="LogOut" />

            </div>
        </div>
      
      <div style="position:relative;float:left;padding-left:60px;padding-top:60px;min-height:515px">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
      </div>
     </div>
     </asp:Panel>
</asp:Content>
