<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentDetailEdit.aspx.cs" Inherits="Prototype.Hope.Accounting.StudentDetailEdit" %>
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
                                                    <input type="text" class="form-control" id="stud_name" readonly="readonly"/>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_grade_level">Grade Level</label>
                                                     <input type="text" class="form-control" id="grade_level" readonly="readonly"/>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_status">Status</label>
                                                    <input type="text" class="form-control" id="stud_status" readonly="readonly"/>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_home_add">Home Address</label>
                                                    <input type="text" class="form-control" id="stud_home_add" readonly="readonly"/>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_contact_no">Contact Number</label>
                                                    <input type="text" class="form-control" id="stud_contact_no" readonly="readonly"/>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_email_add">Email Address</label>
                                                    <input type="email" class="form-control" id="stud_email_add" readonly="readonly"/>
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
                                            <input type="text" class="form-control" id="fth_name" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="fth_occupation" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="fth_contact_no" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="fth_email_add" readonly="readonly"/>

                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_name">Name of Mother</label>
                                            <input type="text" class="form-control" id="mth_name" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="mth_occupation" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="mth_contact_no" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="mth_email_add" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_name">Name of Guardian</label>
                                            <input type="text" class="form-control" id="grd_name" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="grd_occupation" readonly="readonly"/>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="grd_contact_no" readonly="readonly"/>
                                            <div class="invalid-feedback">Please enter a Contact Number</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="grd_email_add" readonly="readonly"/>
                                        </div>
                                    </div>
                                    <div style="display: flex; justify-content: flex-end">
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <a href="StudentList.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray; background-color: #2e8fc5; border-radius: 10px; color: white; width: 120px">
                                                <img src="../../Library/Images/backad.png" height="21" width="21">BACK</a>
                                            <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="steparrow-description-info-tab" style="display: flex; align-items: center; justify-content: center; border-radius: 10px; background-color: #2e8fc5; width: 120px">NEXT</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- end tab pane -->
                                <div class="tab-pane fade" id="steparrow-description-info-tab" role="tabpanel" aria-labelledby="steparrow-description-info-tab">
                                    <div style="margin-bottom: 50px; padding: 10px; border-bottom: solid; border-width: 2px; border-color: gray; color: blue">
                                        <h2>PAYMENT FORM</h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="row" style="display: flex; gap: 40px">
                                                <div style="display: flex; margin-left: 50px">
                                                    <h3 class="col-lg-5">SCHEDULE OF FEES</h3>
                                                    <input type="text" class="col-lg-6" id="schedule" style="font-size: x-large; text-align: center;" readonly="readonly"/>
                                                </div>
                                                <div>
                                                    <div style="display: flex; margin-left: 50px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Payment Method :</h5>
                                                        <input type="text" class="col-lg-6" id="payment-method-select" style="font-size: larger; text-align: center;" readonly="readonly"/>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Tuition :</h5>
                                                        <input type="text" class="col-lg-6" id="tuition" style="font-size: larger; text-align: center;" readonly="readonly"/>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Miscellaneous :</h5>
                                                        <input type="text" class="col-lg-6" id="miscellaneous" style="font-size: larger; text-align: center;" readonly="readonly"/>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                        <input type="text" class="col-lg-6" id="total"" style="font-size: larger; text-align: center;" readonly="readonly"/>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 50px">
                                                        <h3 class="col-lg-4" style="font-weight: normal">Other school fees
                                                            <br />
                                                            and events :</h3>
                                                        <textarea class="col-lg-6" id="schoolfee" style="font-size: x-large; text-align: center; padding: 10px" readonly="readonly"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6" style="">
                                            <div>
                                                <div style="margin-left: 50px">
                                                    <h4>DISCOUNT</h4>
                                                </div>
                                                <div style="margin-left: 70px; margin-bottom: 20px">
                                                    <input type="text" id="discount-offers-select" name="discount_offers" class="col-lg-7" style="font-size: x-large; text-align: center;" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div style="margin-bottom: 40px">
                                                <div style="display: flex; margin-left: 90px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Discount percentage :</h5>
                                                    <input type="text" class="col-lg-3" id="discount_percent" name="grade_level" style="font-size: larger; text-align: center;" readonly="readonly">
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Other additional Discount :</h5>
                                                    <input type="text" class="col-lg-5" id="additional_discount" name="grade_level" style="font-size: larger; text-align: center;" readonly="readonly">
                                                </div>
                                            </div>
                                            <div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total Amount of Discount :</h5>
                                                    <input type="text" class="col-lg-6" id="total_discount" name="grade_level" style="font-size: larger; text-align: center;" readonly="readonly">
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Miscellaneous :</h5>
                                                    <input type="text" class="col-lg-6" id="schoolfeetotal" name="grade_level" style="font-size: larger; text-align: center;" readonly="readonly">
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                    <input type="text" class="col-lg-6" id="total_final" name="grade_level" style="font-size: larger; text-align: center;" readonly="readonly">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="display: flex; justify-content: flex-end">
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <button type="button" class="btn btn-light btn-label previestab" data-previous="steparrow-gen-info-tab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray"><img src="../../Library/Images/backgray.png" height="21" width="21"/>Back</button>
                                            <a href="StudentList.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray; background-color: #2e8fc5; border-radius: 10px; color: white; width: 120px">
                                                <img src="../../Library/Images/backad.png" height="21" width="21">EDIT</a>
                                            <a href="StudentList.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray; background-color: #2e8fc5; border-radius: 10px; color: white; width: 120px">
                                                <img src="../../Library/Images/backad.png" height="21" width="21">SAVE</a>
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
