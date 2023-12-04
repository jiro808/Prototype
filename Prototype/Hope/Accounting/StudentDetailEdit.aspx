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
