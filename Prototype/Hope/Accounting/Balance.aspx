<%@ Page Title="Balance" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="Prototype.Hope.Accounting.Balances" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid" style="padding: 20px; padding-top: 50px">
        <div class="container-fluid" style="background-color: ghostwhite; padding: 20px">
            <div class="col">
                <h3>Overdue Balance</h3>
            </div>
            <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 50%; margin: 20px">
                <asp:RadioButtonList ID="rblFilter" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFilter_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%" Font-Size="20px">
                    <asp:ListItem Text="All" Value="All" Selected="True" />
                    <asp:ListItem Text="Paid" Value="Paid" />
                    <asp:ListItem Text="Unpaid" Value="Unpaid" />
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="container-fluid" style="background-color: ghostwhite; margin-top: 10px; padding: 20px">
            <div class="input-group mb-3" style="left: 0px; top: 0px">
                <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" Font-Size="20px" />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Student ID or Name" Width="25%" Font-Size="20px"></asp:TextBox>
            </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="invoice_no" Width="100%" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Invoice No.">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("invoice_no") %>' Style="font-size: 20px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student ID">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("student_id") %>' Style="font-size: 20px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' Style="font-size: 20px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("date", "{0:d}") %>' Style="font-size: 20px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("total", "{0:N2}") %>' Style="font-size: 20px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Due">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("due", "{0:d}") %>' Style="font-size: 20px"></asp:Label>
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
                <HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Size="22px" Height="35px" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
