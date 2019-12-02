<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="moreInfo.aspx.cs" Inherits="projectt1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/this is.jpg">
    <div>
      <div style="position:relative; float:left;min-height:515px;width:18%"  class="verticalLine">
            <div style="margin-left:50px;margin-top:20px;margin-right:10px;" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/hulk.jpg" style="border: 1px solid #000;border-radius: 72%;width: 110px;height: 100px;"  />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Account" PostBackUrl="~/allUsers.aspx" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Text="LogOut" CausesValidation="False" /><br />
                <asp:Button ID="Button4" runat="server" Text="My Messages" style="margin-left:12px;margin-top:4px" PostBackUrl="~/myMessages.aspx" CausesValidation="False" />
            </div>
      </div>
      <div style="position:relative;float:left;padding-left:60px;padding-top:60px;max-width:65%">
          <table>
              <asp:HiddenField ID="userID" runat="server" Visible="False" />
            <tr>
                <td>Lawyer Name:</td>
                <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Contact Email:</td>
                <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Type of lawyer:</td>
                <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Message</td>
                <td><asp:TextBox ID="msg" runat="server" TextMode="MultiLine" Height="98px" Width="537px"></asp:TextBox></td>
                <td style="width:100%"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a message." ControlToValidate="msg" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="Button3" runat="server" Text="Send Message" OnClick="Button3_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="Label5" runat="server" ></asp:Label></td>
            </tr>
        </table>
      </div>
     </div>
     </asp:Panel>
</asp:Content>
