<%@ Page Title="Report" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Prototype.Hope.Accounting.Report" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div style="padding-left: 50px; padding-top: 20px;">
        <asp:LinkButton ID="btnBack" runat="server" OnClientClick="window.location.href='Dashboard.aspx'; return false;">
    <img src="../../Library/Images/left-arrow.png"   height="50" alt="Back" />
        </asp:LinkButton>
    </div>

    <div class="auto-style1" style="margin: 120px; margin-bottom:20px; margin-top:0; padding: 20px">
        <div class="row">
            <div class="col">
                <div class="p-3 border bg-light" style="border-radius: 20px">
                    <a class="inner-div" href="#">
                        <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                            <h5>Bills Awaiting Payment</h5>
                             <h4 runat="server" id="h4pending">Loading...</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-3 border bg-light" style="border-radius: 20px">
                    <a class="inner-div" href="#">
                        <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                            <h5>Total of Awaiting Payment</h5>
                            <h4 runat="server" id="h4total">####</h4>
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
                        <input type="radio"  class="btn-check" name="btnradio3" id="btnradio7" autocomplete="off" checked style="width: 20px">
                        <label class="btn btn-outline-primary" for="btnradio7" style="border-radius: 20px 0 0 20px">Daily Transaction</label>
                        <input type="radio" class="btn-check" name="btnradio3" id="btnradio8"  autocomplete="off">
                        <label class="btn btn-outline-primary" for="btnradio8" style="border-radius: 0 20px 20px 0">Past Transaction</label>
                    </div>
                </div>
                <div class="input-group mb-3" style="left: 0px; top: 0px">
                    <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Filter by Student ID or Name" Width="80%"></asp:TextBox>
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
                        <asp:ListItem Text="Partial Payment" Value="Partial Payment" />
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
                    <tr style="text-align: center" class='<%# Eval("method","schedule")%>'>
                        <td><%# Eval("date", "{0:MM-dd-yyyy}") %></td>
                        <td><%# Eval("student_id") %></td>
                        <td><%# Eval("name") %></td>
                        <td><%# Eval("method") %></td>
                        <td><%# Convert.ToDecimal(Eval("tuition")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("miscellaneous")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("total")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("discount")).ToString("0") + "%" %></td>
                        <td><%# Eval("discount_type") %></td>
                        <td><%# Convert.ToDecimal(Eval("schoolfee")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("final_total")).ToString("N2") %></td>
                        <td><%# Convert.ToDecimal(Eval("downpayment")).ToString("N2") %></td>
                        <td><%# Eval("schedule") %></td>
                        <td><%# Eval("status") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
