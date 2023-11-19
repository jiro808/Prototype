<%@ Page Title="Balance" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="Prototype.Hope.Accounting.Balances" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid" style="padding: 20px; padding-top: 50px">
        <div class="container-fluid" style="background-color: ghostwhite; padding: 20px">
            <div class="col">
                <h4>Overdue Balance</h4>
            </div>
            <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 50%; margin: 20px">
                <asp:RadioButtonList ID="rblFilter" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFilter_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectionMode="Single" EditRowStyle-BackColor="#0d6efd" EditRowStyle-ForeColor="White" DataKeyNames="invoice_no">
                <Columns>
                    <asp:BoundField DataField="invoice_no" HeaderText="invoice_no" ReadOnly="True" SortExpression="invoice_no" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="due" HeaderText="due" SortExpression="due" ItemStyle-Width="14.28%"></asp:BoundField>
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" ItemStyle-Width="14.28%"></asp:BoundField>
                </Columns>

<EditRowStyle BackColor="#0D6EFD" ForeColor="White"></EditRowStyle>

                <HeaderStyle BackColor="#0d6efd" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SIA_BILLINGConnectionString %>" SelectCommand="SELECT OB.invoice_no, S.student_id, OB.date, OB.total, OB.due, OB.status FROM OverdueBalance AS OB INNER JOIN Student AS S ON OB.student_id = S.student_id">
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>