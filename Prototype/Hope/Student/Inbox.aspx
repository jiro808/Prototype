<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Prototype.Hope.Student.Inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    body {
        font-family: 'Segoe UI', Arial, sans-serif;
        color: #333;
    }
    .container-fluid {
        padding: 0;
    }
    .container-fluid .bg-light,
    .row .bg-light,
    .col-md-5.bg-light,
    .col-lg-4.bg-light {
        background-color: #ffffff !important;
    }
    .border-right {
        border-right: 1px solid #dee2e6 !important; 
    }
    .d-flex {
        display: flex;
        align-items: center;
    }
    .justify-content-between {
        justify-content: space-between;
    }
    .align-items-center {
        align-items: center;
    }
    .border-bottom {
        border-bottom: 1px solid #dee2e6;
    }
    .p-3 {
        padding: 1rem !important;
    }
    .mb-0, .mb-1 {
        margin-bottom: 0 !important;
        margin-bottom: 0.25rem !important;
    }
    .list-group-item-action:hover {
        background-color: #ffffff; 
    }
    .list-group-item {
        border: none; 
        border-radius: 0; 
    }
    h5, h6, h4 {
        font-weight: 600;
        color: #343a40; 
    }
    .btn-outline-secondary {
        border-color: #6c757d;
        color: #6c757d;
    }
    .btn-outline-secondary:hover {
        background-color: #6c757d;
        color: #fff;
    }
    .btn-sm {
        padding: .25rem .5rem;
        font-size: .875rem;
        line-height: 1.5;
        border-radius: .2rem;
    }
    .overflow-auto {
        overflow-y: auto;
    }
    
    @media (max-width: 768px) {
        .col-md-5, .col-md-7 {
            flex: 0 0 100%;
            max-width: 100%;
        }
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid h-100 bg-light">
        <div class="row h-100">
            <!-- Left Column for Email List -->
            <div class="col-md-5 col-lg-4 border-right overflow-auto">
                 <!-- Email list header with Back Button -->
                <div class="d-flex justify-content-between align-items-center border-bottom p-3">
                    <!-- Back Button -->
                    <asp:Button ID="btnBack" runat="server" CssClass="btn btn-outline-secondary btn-sm" PostBackUrl="~/Hope/Student/Dashboard.aspx" Text="← Back to Dashboard" />
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
