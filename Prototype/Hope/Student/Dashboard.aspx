<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Prototype.Hope.Student.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <!-- Begin page -->
    <div class="layout-wrapper landing">
        <!-- start hero section -->
        <style>
            .hero-section {
                background: url("images/bgdashboard.png") no-repeat center center;
                background-size: cover;
                padding: 60px 0; /* Adjust the padding as needed */
            }


            #hero {
                height: 90.8vh; /* Set the height to 100% of the viewport height */
                margin: 0; /* Remove margin */
                padding: 0; /* Remove padding */
            }

            .btn.btn {
                width: 275px;
                height: 100px;
                text-align: center; /* Horizontally center the content within the element */
                display: inline-flex;
                justify-content: left; /* Alternative way to center content horizontally */
                align-items: center;
            }
        </style>
        <section class="section pb-0 hero-section" id="hero">
            <div class="container">
                <div class="row justify-content-left">
                    <div class="col-lg-7 col-sm-12">
                        <div class="mt-lg-12 pt-5">
                            <h1 class="display-6 fw-semibold mb-3 lh-base">Welcome</h1>
                            <p class="lead text-muted lh-base">Please check your inbox for payment updates and schedule regarding the pre-registration process for the school year 2023-2024.</p>
                            <br />
                            <a href="Inbox.aspx" class="btn btn-primary" style="font-size: 25px;"><i class="ri-mail-fill align-middle ms-1 me-5" style="font-size: 3rem;"></i>INBOX</a>
                            <div class="gap-3 mt-2">
                                <asp:HyperLink runat="server" ID="paymentLink" NavigateUrl="Payment.aspx" CssClass="btn btn-danger" Style="font-size: 25px;">
                                        <i class="ri-coins-fill align-middle ms-1" style="font-size: 3rem;"></i>
                                            PAYMENT<br />REGISTRATION
                                </asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
