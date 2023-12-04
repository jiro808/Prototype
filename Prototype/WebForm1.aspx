<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prototype.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">





        <!-- Your page content goes here -->

        <div>
            <!-- Your HTML code for the dropdown -->
            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="col-lg-6" 
                style="background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem; font-size: 25px; text-align: center; height: 50px;"
                AutoPostBack="true" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                <asp:ListItem Text="Pe3nding" Value="option1" Selected="True" />
                <asp:ListItem Text="Declined" Value="Declined" />
                <asp:ListItem Text="Approved" Value="Approved" />
            </asp:DropDownList>
        </div>
 





</asp:Content>
