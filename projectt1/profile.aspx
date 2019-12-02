<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="projectt1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/this is.jpg" >
    <div>
        <div style="position:relative; float:left;min-height:475px;width:18%"  class="verticalLine">
            <div style="margin-left:50px;margin-top:20px;margin-right:10px;" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/hulk.jpg" style="border: 1px solid #000;border-radius: 72%;width: 110px;height: 100px;"  />
                <br />
                <asp:Button ID="Button1" runat="server" Text="All Users" CausesValidation="False" PostBackUrl="~/allUsers.aspx" />
                <asp:Button ID="Button2" runat="server" Text="LogOut" CausesValidation="False" OnClick="Button2_Click1" />
                <asp:Button ID="Button4" runat="server" Text="My Messages" style="margin-left:12px;margin-top:4px" PostBackUrl="~/myMessages.aspx" CausesValidation="False" />
            </div>
        </div>
        <div style="position:relative;float:left;padding-left:60px;padding-top:60px">
            <asp:Table ID="Table1" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label> 
                        </asp:TableCell>
                        <asp:TableCell>
                           <asp:TextBox ID="TextBox1" runat="server"  placeholder="Address" Width="183px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Address" ForeColor="Red" ></asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>  
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="desc" runat="server" TextMode="MultiLine" Height="167px" Width="444px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="desc" ErrorMessage="Enter description" ForeColor="Red" ></asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><br />
                            <asp:Button ID="Button3" runat="server" Text="Update Information"  OnClick="Button3_Click" />
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>   
            <asp:Label ID="Label1" runat="server" ></asp:Label>
            <br />
        </div>
    </div>
            </asp:Panel>
</asp:Content>
