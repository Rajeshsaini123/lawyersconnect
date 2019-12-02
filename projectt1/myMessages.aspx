<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myMessages.aspx.cs" Inherits="projectt1.myMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/this is.jpg" >
    <div>
        <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" type="text/javascript"></script>  
        
        <script type="text/javascript">  
            $(document).ready(function () {
                $('#<%=GridView1.ClientID%>').DataTable({ "paging": true, "ordering": true, "searching": true });
                }); 
        </script>


        <div style="position:relative; float:left;min-height:515px;"  class="verticalLine">
            <div style="margin-left:50px;margin-top:20px;margin-right:10px;" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/hulk.jpg" style="border: 1px solid #000;border-radius: 72%;width: 110px;height: 100px;"  />
                <br />
                <asp:Button ID="Button1" runat="server" Text="All Users" PostBackUrl="~/allUsers.aspx" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Text="LogOut" CausesValidation="False" OnClick="Button2_Click"/><br />
                <asp:Button ID="Button4" runat="server" Text="Profile" style="margin-left:35px;margin-top:5px" PostBackUrl="~/profile.aspx" CausesValidation="False" />
            </div>
        </div>
               
        <div style="position:relative;float:left;padding-left:60px;padding-top:60px;min-height:515px">
            <asp:GridView ID="GridView1" runat="server" CssClass="dt-responsive"  BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" ForeColor="Black" GridLines="Vertical"  Height="141px" Width="607px" >
                <Columns>
                    <asp:BoundField DataField="fName" HeaderText="Name" />
                    <asp:BoundField DataField="email" HeaderText="Contact Email" />
                    <asp:BoundField DataField="msg" HeaderText="Message" />
                </Columns>
            </asp:GridView>
            <br />
      </div>
     </div>
     </asp:Panel>
</asp:Content>

