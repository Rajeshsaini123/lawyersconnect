<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="projectt1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .td{
            margin:4px;
        }
    </style>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/this is.jpg">
        <div style="margin-left:35%">
        <asp:Label ID="Label1" runat="server" Text="Registration" style="margin-left:9%" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large"></asp:Label>
        <table style="margin-top:4%">
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="First name"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"  placeholder="First name" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your first name" ForeColor="Red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Last name"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Last name"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your Last name" ForeColor="Red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" placeholder="Email"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your Email id" ForeColor="Red" ></asp:RequiredFieldValidator>
                    <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter  your valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server"  textmode="Password" placeholder="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter your Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server"  textmode="Password" placeholder="Retype-Password"></asp:TextBox></td>
                <td><asp:CompareValidator runat="server" ErrorMessage="Password does not match" ControlToCompare="TextBox4" ForeColor="Red" ControlToValidate="TextBox5"></asp:CompareValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Age"></asp:Label></td>
                <td>        
                    <asp:DropDownList ID="DropDownList1" placeholder="month"   runat="server">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>fabruary</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="DropDownList2" placeholder="day" runat="server">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:DropDownList ID="DropDownList3" placeholder="year" runat="server">
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>        
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1951</asp:ListItem>
                        <asp:ListItem>1950</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="Type of lawyer"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Personal Injury Lawyer</asp:ListItem>
                        <asp:ListItem>Estate Planning Lawyer</asp:ListItem>
                        <asp:ListItem>Bankruptcy Lawyer</asp:ListItem>
                        <asp:ListItem>Intellectual Property Lawyer</asp:ListItem>
                        <asp:ListItem>Employment Lawyer</asp:ListItem>
                        <asp:ListItem>Corporate Lawyer</asp:ListItem>
                        <asp:ListItem>Immigration Lawyer</asp:ListItem>
                        <asp:ListItem>Criminal Lawyer</asp:ListItem>
                        <asp:ListItem>Medical Malpractice Lawyer</asp:ListItem>
                        <asp:ListItem>Tax Lawyer</asp:ListItem>
                        <asp:ListItem>Family Lawyer</asp:ListItem>
                        <asp:ListItem>Workers Compensation Lawyer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="Button2" runat="server" Text="Login" PostBackUrl="~/login.aspx"  CausesValidation="False"/></td>
                <td><asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" /></td>

            </tr>
            <tr>
                <td></td>
                <td> <asp:Label ID="Label9" runat="server"></asp:Label></td>
            </tr>
            </table>
            </div>
    </asp:Panel>
</asp:Content>
        