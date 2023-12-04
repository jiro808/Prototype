<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Prototype.Hope.Student.Inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid h-100">
        <div class="row h-100">
            <!-- Left Column for Email List -->
            <div class="col-md-5 col-lg-4 bg-light border-right overflow-auto">
                <!-- Email list header -->
                <div class="d-flex justify-content-between align-items-center border-bottom p-3">
                    <h5 class="mb-0">Inbox</h5>
                    <div>
                        <button class="btn btn-sm btn-outline-secondary">Unread</button>
                        <button class="btn btn-sm btn-outline-secondary">All Archive Messages</button>
                    </div>
                </div>
                <!-- Email items -->
                <div class="list-group list-group-flush">
                    <!-- ListView control for displaying emails -->
                    <asp:ListView ID="EmailListView" runat="server">
                        <ItemTemplate>
                            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1"><%# Eval("Subject") %></h6>
                                    <small><%# Eval("Date", "{0:g}") %></small>
                                </div>
                                <p class="mb-1"><%# Eval("Body") %></p>
                                <small>From: <asp:Label runat="server" Text='<%# Eval("Sender") %>' /></small>
                            </a>
                        </ItemTemplate>
                    </asp:ListView>
                    <!-- End of ListView control -->
                </div>
            </div>
            <!-- Right Column for Email Content -->
            <div class="col-md-7 col-lg-8">
                <div class="d-flex justify-content-between align-items-center border-bottom p-3">
                    <h4 class="mb-0">Subject: New Student Appointment Schedule Pending Approval</h4>
                    <div>
                        <button class="btn btn-outline-secondary btn-sm">Archive</button>
                        <button class="btn btn-outline-secondary btn-sm">Mark as read</button>
                        <button class="btn btn-outline-secondary btn-sm">Delete</button>
                    </div>
                </div>
                <div class="p-3">
                    <!-- Email content here -->
                    <p>Dear Jane Doe,</p>
                    <p>We hope this message finds you well. Thank you for choosing Hope Integrated School for your education...</p>
                    <!-- The rest of the email content goes here -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
