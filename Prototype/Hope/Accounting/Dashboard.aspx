<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Prototype.Views.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row" style="height: 400px">
            <div class="col-sm-7" style=""></div>
            <div class="col-sm-5" style="">
            </div>
        </div>




        <div class="row" style="height: 300px">
            <div class="col-sm" style="display: flex; align-items: center">
                <div class="row g-2">
                    <div class="col-6">
                        <div class="p-3 border bg-light" style="border-radius: 20px">
                            <a class="inner-div" href="Balance.aspx">
                                <div>
                                    <img src="../../Library/Images/calendar.png" style="width: 100px; height: 100px" />
                                </div>
                                <div style="display: flex; justify-content: center; width: 100%;">
                                    <h4>Due Balance</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="p-3 border bg-light" style="border-radius: 20px">
                            <a class="inner-div" href="Report.aspx">
                                <div>
                                    <img src="../../Library/Images/report.png" style="width: 100px; height: 100px" />
                                </div>
                                <div style="display: flex; justify-content: center; width: 100%;">
                                    <h4>Collection of Report</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="p-3 border bg-light" style="border-radius: 20px">
                            <a class="inner-div" href="Announcement.aspx">
                                <div>
                                    <img src="../../Library/Images/megaphone.png" style="width: 100px; height: 100px" />
                                </div>
                                <div style="display: flex; justify-content: center; width: 100%;">
                                    <h4>Announcement</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="p-3 border bg-light" style="border-radius: 20px">
                            <a class="inner-div" href="Calendar.aspx">
                                <div>
                                    <img src="../../Library/Images/calendar.png" style="width: 100px; height: 100px" />
                                </div>
                                <div style="display: flex; justify-content: center; width: 100%;">
                                    <h4>Calendar</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>




            <div class="col-sm" style="background-color: ghostwhite; padding: 20px; padding-bottom: 0; border-radius: 20px">
                <h3>Recent</h3>
                <a class="inner-div" href="Transaction.aspx" >
                    <table border="1" width="100%" class="table caption-top">
                        <tr style="text-align: center">
                            <th>Date of Transaction</th>
                            <th>Student ID</th>
                            <th>Student Name</th>
                        </tr>
                        <asp:Repeater ID="ReportRepeater" runat="server">
                            <ItemTemplate>
                                <tr style="text-align: center">
                                    <td><%# Eval("date") %></td>
                                    <td><%# Eval("student_id") %></td>
                                    <td><%# Eval("student_name") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </a>
            </div>
        </div>
    </div>
</asp:Content>
