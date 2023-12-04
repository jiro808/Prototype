<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Prototype.Hope.Student.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="layout-wrapper landing">
        <section class="section pb-0 hero-section" id="hero">
            <div class="container" style="margin: 50px; display:flex;">
                <div class="row justify-content-left">
                    <div class="col-lg-7 col-sm-12">
                        <div class="mt-lg-12 pt-5">
                            <h1 class="display-6 fw-bold mb-3 lh-base" style="font-size:80px">Welcome</h1>
                            <p class="lead text-muted lh-base">Please check your inbox for payment updates and schedule regarding the pre-registration process for the school year 2023-2024.</p>
                            <br />
                            <a href="Inbox.aspx" class="btn btn-primary" style="font-size: 30px; display: flex; width: 350px; align-items: center; height: 140px; gap: 77px; padding-left: 40px">
                                <img src="../../Library/Images/mail.png" height="80" />INBOX</a>
                            <br />
                            <a href="Payment.aspx" class="btn btn-danger" style="font-size: 25px; display: flex; width: 350px; align-items: center; height: 140px; gap: 20px; padding-left: 40px;">
                                <img src="../../Library/Images/reg.png" height="80" />
                                PAYMENT REGISTRATION
                            </a>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="../../Library/Images/NEW%20STUDENT%20BILLING%20SYSTEM%20%20USER%20LEVEL%20(2).png" height="650"/>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
