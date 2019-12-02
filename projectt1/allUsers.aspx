<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allUsers.aspx.cs" Inherits="projectt1.WebForm5" %>
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

        <div style="position:relative; float:left;min-height:475px;width:18%"  class="verticalLine">
            <div style="margin-left:50px;margin-top:20px;margin-right:10px;" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/hulk.jpg" style="border: 1px solid #000;border-radius: 72%;width: 110px;height: 100px;"  />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Profile" PostBackUrl="~/profile.aspx" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Text="LogOut" OnClick="Button2_Click" CausesValidation="False"/>
                <asp:Button ID="Button4" runat="server" Text="My Messages" style="margin-left:12px;margin-top:4px" PostBackUrl="~/myMessages.aspx" CausesValidation="False" />
            </div>
        </div>
      
      <div style="position:relative;float:left;padding-left:60px;padding-top:60px;min-height:515px">
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="id" CssClass="dt-responsive" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="226px" Width="635px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="fName" HeaderText="Name" />
            <asp:BoundField DataField="Type_Of_Lawyer" HeaderText="Lawyer type" SortExpression="Type_Of_Lawyer" />
            <asp:HyperLinkField
            DataNavigateUrlFields="id" 
            DataNavigateUrlFormatString="~\moreInfo.aspx?id={0}"
            DataTextField="fName"
            HeaderText="More Information"
            SortExpression="id" DataTextFormatString="More about {0} " />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
            <br />
      </div>
     </div>

     </asp:Panel>
</asp:Content>

