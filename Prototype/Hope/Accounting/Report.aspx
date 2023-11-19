<%@ Page Title="Report" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Prototype.Hope.Accounting.Report" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="auto-style1" style="margin: 20px; padding: 20px">
        <div class="row">
            <div class="col">
                <div class="p-3 border bg-light" style="border-radius: 20px">
                    <a class="inner-div" href="#">
                        <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                            <h5>Bills Awaiting Payment</h5>
                            <h4>####</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-3 border bg-light" style="border-radius: 20px">
                    <a class="inner-div" href="#">
                        <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                            <h5>Total of Awaiting Payment</h5>
                            <h4>###,###,##</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-3 border bg-light" style="border-radius: 20px">
                    <a class="inner-div" href="#">
                        <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                            <h5>School Fee</h5>
                            <h4>####</h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="auto-style1" style="background-color: ghostwhite; margin: 20px; padding: 20px">
        <div class="row">
            <div class="col">
                <h3>Transaction Report</h3>
                <div style="margin-top: 80px; margin-bottom: 20px">
                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 100%">
                        <input type="radio" class="btn-check" name="btnradio3" id="btnradio7" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="btnradio7" style="border-radius: 20px 0 0 20px">Daily Transaction</label>
                        <input type="radio" class="btn-check" name="btnradio3" id="btnradio8" autocomplete="off">
                        <label class="btn btn-outline-primary" for="btnradio8" style="border-radius: 0 20px 20px 0">Past Transaction</label>
                    </div>
                </div>
                <div class="input-group mb-3" style="left: 0px; top: 0px">
                    <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Student ID or Name" Width="80%"></asp:TextBox>
                </div>
            </div>
            <div class="col">
                <h4>Payment Method</h4>
                <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 50%; margin: 20px">
                    <asp:RadioButtonList ID="rblFilter" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFilter_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem Text="All" Value="All" Selected="True" />
                        <asp:ListItem Text="Cash" Value="Cash" />
                        <asp:ListItem Text="Gcash" Value="Gcash" />
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="col">
                <h4>Shedule of Fee</h4>
                <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width: 90%; margin: 20px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem Text="Monthly" Value="Monthly" />
                        <asp:ListItem Text="Quarterly" Value="Quarterly" />
                        <asp:ListItem Text="Full Payment" Value="Full Payment" />
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
    <table border="1" width="100%" class="table caption-top" id="mytable">
            <tr style="text-align: center">
                <th>Date of Transaction</th>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Mode of Payment</th>
                <th>Tuition Fee</th>
                <th>Miscellaneous</th>
                <th>Amount</th>
                <th>Discount</th>
                <th>Type</th>
                <th>School Fee</th>
                <th>Total Amount</th>
                <th>Downpayment</th>
                <th>Schedule of Fee</th>
                <th>Payment Status</th>
            </tr>
            <asp:Repeater ID="ReportRepeater" runat="server">
                <ItemTemplate>
                    <tr style="text-align: center" class='<%# Eval("mode_of_payment","schedule_of_fees")%>'>
                        <td><%# Eval("date", "{0:MM-dd-yyyy}") %></td>
                        <td><%# Eval("student_id") %></td>
                        <td><%# Eval("student_name") %></td>
                        <td><%# Eval("mode_of_payment") %></td>
                        <td><%# Convert.ToDecimal(Eval("total_amount")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("miscellaneuos")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("amount")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("discount")).ToString("0") + "%" %></td>
                        <td><%# Eval("type") %></td>
                        <td><%# Convert.ToDecimal(Eval("school_fee")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("total_amount")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("downpayment")).ToString("N2") %></td>
                        <td><%# Eval("schedule_of_fees") %></td>
                        <td><%# Eval("payment_status") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
