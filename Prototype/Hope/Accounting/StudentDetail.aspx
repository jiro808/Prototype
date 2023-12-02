<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="Prototype.Hope.Accounting.StudentDetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid">
        <style>
            .hero-section {
                background: url("images/bgdashboard.png") no-repeat center center;
                background-size: cover;
                padding: 60px 0;
            }
                .hero-section .container {
                    background: rgba(255, 255, 255, 0.0);
                    padding: 20px;
                }
            #hero {
                height: 90.8vh;
                margin: 0;
                padding: 0;
            }
            .green-tab {
                background-color: #4CAF50;
                color: #fff;
            }
        </style>
        <section class="section pb-0 hero-section" id="hero">
            <div class="col-xl-11.5" style="padding: 5%;">
                <div class="card">
                    <div class="card-body">
                        <div action="#" class="form-steps" autocomplete="off">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="steparrow-gen-info-tab" role="tabpanel" aria-labelledby="steparrow-gen-info-tab">
                                    <div class="row">
                                        <div class="col-lg-9">
                                            <div class="row">
                                                <div style="margin-bottom: 10px; padding: 10px; border-bottom: solid; border-width: 2px; border-color: gray; padding-left: 30px;">
                                                    <h3>STUDENT DETAILS</h3>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_name">Name</label>
                                                    <input type="text" class="form-control" id="stud_name" name="stud_name">
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_grade_level">Grade Level</label>
                                                     <input type="text" class="form-control" id="grade_level" name="grade_level">
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_status">Status</label>
                                                    <input type="text" class="form-control" id="stud_status" name="stud_status">
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_home_add">Home Address</label>
                                                    <input type="text" class="form-control" id="stud_home_add" name="stud_home_add">
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_contact_no">Contact Number</label>
                                                    <input type="text" class="form-control" id="stud_contact_no" name="stud_contact_no">
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_email_add">Email Address</label>
                                                    <input type="email" class="form-control" id="stud_email_add" name="stud_email_add">
                                                </div>
                                                <div style="margin-bottom: 10px; padding: 10px; padding-bottom:0; border-bottom: solid; border-width: 2px; border-color: gray; padding-left: 30px;">
                                                    <h5>PARENT'S / GUARDIAN'S DETAILS</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3" style="padding-top: 50px">
                                            <div class="text-center">
                                                <div class="profile-user position-relative d-inline-block mx-auto mb-3">
                                                    <img src="../../Library/Images/user.png" style="height: 200px; border: solid 2px gray;" class="rounded-circle avatar-lg img-thumbnail user-profile-image" alt="user-profile-image">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_name">Name of Father</label>
                                            <input type="text" class="form-control" id="fth_name" name="fth_name">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="fth_occupation" name="fth_occupation">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="fth_contact_no" name="fth_contact_no">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="fth_email_add" name="fth_email_add">

                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_name">Name of Mother</label>
                                            <input type="text" class="form-control" id="mth_name" name="mth_name">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="mth_occupation" name="mth_occupation">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="mth_contact_no" name="mth_contact_no">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="mth_email_add" name="mth_email_add">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_name">Name of Guardian</label>
                                            <input type="text" class="form-control" id="grd_name" name="grd_name">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="grd_occupation" name="grd_occupation">
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="grd_contact_no" name="grd_contact_no">
                                            <div class="invalid-feedback">Please enter a Contact Number</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="grd_email_add" name="grd_email_add">
                                        </div>
                                    </div>
                                    <div style="display: flex; justify-content: flex-end">
                                    <div class="d-flex align-items-start gap-3 mt-4">
                                        <a href="Dashboard.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray;">
                                            <img src="../../Library/Images/backgray.png" height="21" width="21" />Back to Dashboard</a>
                                        <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="steparrow-description-info-tab" style="display: flex; align-items: center; gap: inherit; background-color: #31ad74;">Nest Step<img src="../../Library/Images/image.png" height="21" width="21" /></button>
                                    </div>
                                        </div>
                                </div>
                                <!-- end tab pane -->
                                <div class="tab-pane fade" id="steparrow-description-info-tab" role="tabpanel" aria-labelledby="steparrow-description-info-tab">
                                    <div class="school-fees-container">
                                        <h2>School Fees</h2>
                                        <div id="school-fees-form">
                                            <div class="form-section">
                                                <h3>Schedule of Fees</h3>
                                                <input type="text" id="RadioButtonList1" readonly/>
                                            </div>
                                            <div class="form-section">
                                                <h3>Payment Method</h3>
                                                <input type="text" id="payment_method" name="payment-method-select" readonly/>
                                            </div>
                                            <div class="fee-details">
                                                <div class="detail">
                                                    <label for="tuition">Tuition:</label>
                                                    <input type="number" id="tuition" name="tuition" readonly/>
                                                </div>
                                                <div class="detail">
                                                    <label for="miscellaneous">Miscellaneous & Other Fees:</label>
                                                    <input type="number" id="miscellaneous" name="miscellaneous" readonly/>
                                                </div>
                                                <div class="total">
                                                    <label for="total">Total:</label>
                                                    <input type="number" id="total" name="total" readonly/>
                                                </div>
                                            </div>
                                            <div class="form-section">
                                                <h3>Discount Offers</h3>
                                                <input type="text" id="discount-offers-select" name="discount_offers" readonly/>
                                            </div>
                                            <div class="discount-details">
                                                <div class="detail">
                                                    <label for="discount_percent">Discount Percent:</label>
                                                    <input type="number" id="discount_percent" name="discount_percent" readonly />
                                                </div>
                                                <div class="detail">
                                                    <label for="additional_discount">Other Additional Discount:</label>
                                                    <input type="text" id="additional_discount" name="additional_discount" readonly/>
                                                </div>
                                                <div class="total">
                                                    <label for="total_discount">Total Amount of Discount:</label>
                                                    <input type="number" id="total_discount" name="total_discount" readonly/>
                                                </div>
                                                <div class="total">
                                                    <label for="total_final">Final Amount:</label>
                                                    <input type="number" id="total_final" name="total_final" readonly/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="display: flex; justify-content: flex-end">
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <button type="button" class="btn btn-light btn-label previestab" data-previous="steparrow-gen-info-tab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray"><img src="../../Library/Images/backgray.png" height="21" width="21"/>Back</button>
                                            <input id="Submit1" class="btn btn-success btn-label right ms-auto" runat="server" OnClick="editbttn_Click" type="submit" value="Edit" />
                                            <asp:Button ID="Button2" class="btn btn-success btn-label right ms-auto nexttab nexttab" runat="server" OnClick="savebttn_Click" Text="Save"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
   <script type="text/javascript">
       document.addEventListener("DOMContentLoaded", function () {
           // Add click event listener to 'Next Step' buttons
           document.querySelectorAll('.nexttab').forEach(function (button1) {
               button1.addEventListener('click', function () {
                   var nextTab = button1.getAttribute('data-nexttab');
                   switchTab(nextTab);
               });
           });

           // Add click event listener to 'Back' buttons
           document.querySelectorAll('.previestab').forEach(function (button1) {
               button1.addEventListener('click', function () {
                   var prevTab = button1.getAttribute('data-previous');
                   switchTab(prevTab);
               });
           });
           function switchTab(tabId) {
               // Hide all tabs
               document.querySelectorAll('.tab-pane').forEach(function (tab) {
                   tab.classList.remove('active', 'show');
               });

               // Show the selected tab
               var activeTab = document.getElementById(tabId);
               if (activeTab) {
                   activeTab.classList.add('active', 'show');
               }
           }
       });
   </script>
</asp:Content>