<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Prototype.Hope.Accounting.Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="container-fluid" style="padding: 20px; padding-top: 50px">
     <div class="container-fluid" style="background-color: ghostwhite; margin-top: 10px; padding: 20px">
    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="student_id" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Student ID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("student_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Method">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("method") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tuition">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("tuition") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Miscellaneous">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("miscellaneous") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Discount">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("discount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("discount_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="School Fee">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("final_total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Final Total">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("schoolfee") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Downpayment">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("downpayment") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Schedule">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("schedule") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Status">
        <EditItemTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("status") %>' Style="font-size: 20px">
                <asp:ListItem>Paid</asp:ListItem>
                <asp:ListItem>Unpaid</asp:ListItem>
                <asp:ListItem>Pending</asp:ListItem>
            </asp:DropDownList>
        </EditItemTemplate>
        <ItemTemplate>
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("status") %>' Style="font-size: 20px"></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ShowEditButton="True" />
</Columns>
<EditRowStyle BackColor="lightblue" ForeColor="black"></EditRowStyle>
<HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Size="22px" Height="35px"/>
    </asp:GridView>
         </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
