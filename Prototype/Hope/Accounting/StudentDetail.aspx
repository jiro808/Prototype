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
                                                    <asp:TextBox ID="stud_name" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_grade_level">Grade Level</label>
                                                    <asp:TextBox ID="grade_level" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_status">Status</label>
                                                     <asp:TextBox ID="stud_status" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_home_add">Home Address</label>
                                                     <asp:TextBox ID="stud_home_add" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_contact_no">Contact Number</label>
                                                     <asp:TextBox ID="stud_contact_no" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="mb-3 col-lg-4">
                                                    <label class="form-label" for="stud_email_add">Email Address</label>
                                                    <asp:TextBox ID="stud_email_add" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
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
                                            <asp:TextBox ID="fth_name" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_occupation">Occupation</label>
                                            <asp:TextBox ID="fth_occupation" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_contact_no">Contact Number</label>
                                            <asp:TextBox ID="fth_contact_no" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_email_add">Email Address</label>
                                            <asp:TextBox ID="fth_email_add" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_name">Name of Mother</label>
                                           <asp:TextBox ID="mth_name" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_occupation">Occupation</label>
                                            <asp:TextBox ID="mth_occupation" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_contact_no">Contact Number</label>
                                            <asp:TextBox ID="mth_contact_no" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_email_add">Email Address</label>
                                            <asp:TextBox ID="mth_email_add" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_name">Name of Guardian</label>
                                            <asp:TextBox ID="grd_name" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_occupation">Occupation</label>
                                            <asp:TextBox ID="grd_occupation" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_contact_no">Contact Number</label>
                                            <asp:TextBox ID="grd_contact_no" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_email_add">Email Address</label>
                                            <asp:TextBox ID="grd_email_add" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
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
                                                    <asp:TextBox ID="schedule" runat="server" class="col-lg-6" Style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div>
                                                    <div style="display: flex; margin-left: 50px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Payment Method :</h5>
                                                        <asp:TextBox ID="method" runat="server" class="col-lg-6" Style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Tuition :</h5>
                                                        <asp:TextBox ID="tuition" runat="server" class="col-lg-6" Style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Miscellaneous :</h5>
                                                        <asp:TextBox ID="miscellaneous" runat="server" class="col-lg-6" Style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                        <asp:TextBox ID="total" runat="server" class="col-lg-6" Style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 50px">
                                                        <h3 class="col-lg-4" style="font-weight: normal">Other school fees
                                                            <br />
                                                            and events :</h3>
                                                        <textarea class="col-lg-6" id="schoolfeelist" runat="server" style="font-size: x-large; text-align: center; padding: 10px;  background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" readonly="readonly"></textarea>
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
                                                    <asp:TextBox ID="discount" runat="server" class="col-lg-7" style="font-size: x-large; text-align: center;  background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div style="margin-bottom: 40px">
                                                <div style="display: flex; margin-left: 90px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Discount percentage :</h5>
                                                    <asp:TextBox ID="percent" runat="server" class="col-lg-6" style="font-size: larger; text-align: center;  background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Other additional Discount :</h5>
                                                    <asp:TextBox ID="other" runat="server" class="col-lg-6" style="font-size: larger; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total Amount of Discount :</h5>
                                                    <asp:TextBox ID="totaldiscount" runat="server" class="col-lg-6" style="font-size: larger; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">School Fee :</h5>
                                                    <asp:TextBox ID="fee" runat="server" class="col-lg-6" style="font-size: larger; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                    <asp:TextBox ID="totalfinal" runat="server" class="col-lg-6" style="font-size: larger; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="display: flex; justify-content: flex-end">
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <button type="button" class="btn btn-light btn-label previestab" data-previous="steparrow-gen-info-tab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray"><img src="../../Library/Images/backgray.png" height="21" width="21"/>Back</button>
                                            <a href="StudentDetailEdit.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray; background-color: #2e8fc5; border-radius: 10px; color: white; width: 120px">
                                                <img src="../../Library/Images/backad.png" height="21" width="21">EDIT</a>
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