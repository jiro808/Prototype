<%@ Page Title="Balance" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="Prototype.Hope.Accounting.Balances" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid" style="padding: 20px; padding-top: 50px">
        <div class="container-fluid" style="background-color: ghostwhite; padding: 20px">
            <div class="col">
                <h4>Overdue Balance</h4>
            </div>
            <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 50%; margin: 20px">
                <asp:RadioButtonList ID="rblFilter" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFilter_SelectedIndexChanged">
                    <asp:ListItem Text="All" Value="All" Selected="True" />
                    <asp:ListItem Text="Paid" Value="Paid" />
                    <asp:ListItem Text="Unpaid" Value="Unpaid" />
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="container-fluid" style="background-color: ghostwhite; margin-top: 10px; padding: 20px">
            <div class="input-group mb-3" style="left: 0px; top: 0px">
                <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Student ID or Name" Width="25%"></asp:TextBox>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectionMode="Single" EditRowStyle-BackColor="#0d6efd" EditRowStyle-ForeColor="White" DataKeyNames="invoice_number">
                <Columns>
                    <asp:BoundField DataField="invoice_number" HeaderText="invoice_number" InsertVisible="False" ReadOnly="True" SortExpression="invoice_number" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="student_id" HeaderText="student_id" ReadOnly="True" SortExpression="student_id" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="student_name" HeaderText="student_name" ReadOnly="True" SortExpression="student_name" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" ReadOnly="True" SortExpression="date" ItemStyle-Width="14.28%"  DataFormatString="{0:MM-dd-yyyy}"></asp:BoundField>
                    <asp:BoundField DataField="total_amount" HeaderText="total_amount" ReadOnly="True" SortExpression="total_amount" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="due_date" HeaderText="due_date" ReadOnly="True" SortExpression="due_date" ItemStyle-Width="14.28%" DataFormatString="{0:MM-dd-yyyy}"></asp:BoundField>
                    <asp:TemplateField HeaderText="status" SortExpression="status" ItemStyle-Width="14.28%">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Bind("status") %>'>
                                <asp:ListItem Text="Paid" Value="Paid" />
                                <asp:ListItem Text="Unpaid" Value="Unpaid" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ItemStyle-Width="14.28%" />
                </Columns>
                <HeaderStyle BackColor="#0d6efd" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrototypeConnectionString %>" SelectCommand="SELECT * FROM Balance" UpdateCommand="Update Balance SET status = @status WHERE invoice_number = @invoice_number">
                <UpdateParameters>
                    <asp:Parameter Name="status" />
                    <asp:Parameter Name="invoice_number" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>