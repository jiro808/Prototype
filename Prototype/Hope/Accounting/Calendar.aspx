<%@ Page Title="Calendar" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Prototype.Hope.Accounting.Calendar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <link href="../../Assets/StyleSheet2.css" rel="stylesheet" />
    <div class="container-fluid" style="background-color: ghostwhite">
        <div class="row">
            <div class="col-8">
                <div class="calendar-container" style="height:720px; gap:20px; display:flex; flex-direction: column; border-width: 0px;">
                    <div class="calendar-header" style="border-radius: 10px; border:solid; border-width: 1px">
                        <h3>Calendar</h3>
                    </div>
                    <div style="text-align:center; cursor: default">
                        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" Width="100%" height="645px" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black" NextPrevFormat="ShortMonth" BorderWidth="1px" DayNameFormat="Full" ShowGridLines="True" BackColor="GhostWhite">
                            <DayHeaderStyle Font-Bold="True" Font-Size="12pt" ForeColor="black" Height="12pt" BorderStyle="Solid" BorderWidth="1px" BackColor="#CEE7FF" />
                            <DayStyle BackColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
                            <NextPrevStyle Font-Bold="True" Font-Size="12pt" ForeColor="black" />
                            <OtherMonthDayStyle ForeColor="black" />
                            <SelectedDayStyle BackColor="#D3E7F1" ForeColor="White" />
                            <TitleStyle BackColor="GhostWhite" BorderStyle="Solid" Font-Bold="True" Font-Size="14pt" ForeColor="black" Height="20pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-4" style="background-color: ghostwhite">
                <div style="padding: 20px">
                    <div class="col">
                        <h3>Upcoming</h3>
                    </div>
                    <div class="col">
                        <h5>Today</h5>

                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5>Bills Awaiting Payment</h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5>Bills Awaiting Payment</h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <h5>Tomorrow</h5>

                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5>Bills Awaiting Payment</h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col" style="margin: 10px">
                            <div class="p-3 border bg-light" style="border-radius: 20px">
                                <a class="inner-div" href="#">
                                    <div style="display: flex; width: 100%; height: 100px; flex-direction: column; align-items: center; gap: 20px;">
                                        <h5>Bills Awaiting Payment</h5>
                                        <h4>####</h4>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
