<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prototype.WebForm1" %>

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
                                        <div class="col-lg-6">
                                            <div class="row" style="display: flex">
                                                <div style="display: flex; margin-left: 50px">
                                                    <h3 class="col-lg-5">SCHEDULE OF FEES</h3>
                                                </div>
                                                <div style="padding-left: 75px">
                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Size="x-Large" Width="100%" CssClass="form-check form-check-inline">
                                                        <asp:ListItem Text="Partial Payment" Value="Partial" />
                                                        <asp:ListItem Text="Full Payment" Value="Full" />
                                                    </asp:RadioButtonList>
                                                </div>
                                                <div style="display: flex; margin-left: 50px; margin-top: 20px">
                                                    <h3 class="col-lg-5">PAYMENT METHOD</h3>
                                                </div>
                                                <div style="padding-left: 75px; display: flex; gap: 15px;">
                                                    <select name="payment_method" id="payment-method-select" class="col-lg-6" style="background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem; font-size: 25px; text-align: center; height: 50px;" onchange="toggleQrButton()">
                                                        <option value="option1" disabled selected>Select Payment Method</option>
                                                        <option value="Cash">Cash</option>
                                                        <option value="Gcash">Gcash</option>
                                                    </select>
                                                    <button type="button" id="qrCodeButton" class="btn btn-info mt-2" style="display: none;" data-bs-toggle="modal" data-bs-target="#qrCodeModal">Show QR</button>
                                                </div>
                                                <!-- The Modal for QR Code -->
                                                <div class="modal fade" id="qrCodeModal" tabindex="-1" aria-labelledby="qrCodeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="qrCodeModalLabel">Gcash QR Code</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <img src="../../Library/Images/qr.jpg" alt="Gcash QR Code" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div style="margin-top: 50px; display: flex; gap: 10px; flex-direction: column;">
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Tuition :</h5>
                                                        <input type="number" id="tuition" name="tuition" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Miscellaneous :</h5>
                                                        <input type="number" id="miscellaneous" name="tuition" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                        <input type="number" id="total" name="tuition" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6" style="">
                                            <div>
                                                <div style="margin-left: 50px; margin-bottom: 20px; display: flex; justify-content: space-between;">
                                                    <h4>DISCOUNT</h4>
                                                    <!-- Other School Fees Button -->
                                                    <button type="button" class="btn btn-info" id="otherFeesButton">Other School Fees</button>
                                                    <!-- Other School Fees Modal -->
                                                    <div id="otherFeesModal" class="modal" style="display: none;">
                                                        <div class="modal-content">
                                                            <span class="close">&times;</span>
                                                            <h2>Other School Fees</h2>
                                                            <!-- School Events -->
                                                            <div class="form-group">
                                                                <label>SCHOOL EVENTS: (Optional)</label>
                                                                <div class="checkbox-group">
                                                                    <input type="checkbox" id="fieldtrip" name="event" value="fieldtrip">
                                                                    <label for="fieldtrip">Fieldtrip</label>
                                                                    <input type="checkbox" id="jsprom" name="event" value="jsprom">
                                                                    <label for="jsprom">JS Prom</label>
                                                                    <input type="checkbox" id="retreat" name="event" value="retreat" />
                                                                    <label for="retreat">Retreat</label>
                                                                    <input type="checkbox" id="graduation" name="event" value="graduation" />
                                                                    <label for="graduation">Graduation</label>

                                                                    <!-- Add more checkboxes as needed -->
                                                                </div>
                                                            </div>
                                                            <!-- Other Fees -->
                                                            <div class="form-group">
                                                                <label>OTHER SCHOOL FEES: (Optional)</label>
                                                                <div class="checkbox-group">
                                                                    <input type="checkbox" id="schoolUniform" name="other_fees" value="schoolUniform">
                                                                    <label for="schoolUniform">School Uniform</label>
                                                                    <input type="checkbox" id="peuniform" name="other_fees" value="peuniform">
                                                                    <label for="schoolUniform">PE Uniform</label>
                                                                    <input type="checkbox" id="foundationtshirt" name="other_fees" value="foundationtshirt">
                                                                    <label for="schoolUniform">Foundation T-shirt</label>
                                                                    <input type="checkbox" id="girlscoutuniform" name="other_fees" value="girlscoutuniform">
                                                                    <label for="schoolUniform">Girl Scout Uniform</label>
                                                                    <input type="checkbox" id="boyscoutuniform" name="other_fees" value="boyscoutuniform">
                                                                    <label for="schoolUniform">Boy Scout Uniform</label>
                                                                    <input type="checkbox" id="books" name="other_fees" value="books">
                                                                    <label for="schoolUniform">Books</label>
                                                                    <!-- Add more checkboxes as needed -->
                                                                </div>
                                                            </div>
                                                            <!-- Shirt Sizes -->
                                                            <div class="form-group">
                                                                <label for="shirtSizes">SELECT THE SHIRT SIZES</label>
                                                                <select id="shirtSizes" name="shirtSizes">
                                                                    <option value="xs">Extra Small (XS)</option>
                                                                    <option value="s">Small (S)</option>
                                                                    <option value="m">Medium (M)</option>
                                                                    <option value="l">Large (XS)</option>
                                                                    <option value="xl">Extra Large (XS)</option>
                                                                    <option value="2xl">2XL (Double Extra Large)</option>
                                                                    <option value="3xl">3XL (Triple Extra Large)</option>
                                                                    <option value="4xl">4XL (Quadruple Extra Large)</option>
                                                                </select>
                                                            </div>
                                                            <!-- Gender -->
                                                            <div class="form-group">
                                                                <label>GENDER:</label>
                                                                <input type="radio" id="male" name="gender" value="male">
                                                                <label for="male">Male</label>
                                                                <input type="radio" id="female" name="gender" value="female">
                                                                <label for="female">Female</label>
                                                            </div>
                                                            <button type="button" onclick="submitOtherFeesForm()">Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div style="margin-left: 70px; margin-bottom: 20px">
                                                    <select name="payment_method" id="discount-offers-select" class="col-lg-6" style="background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem; font-size: 25px; text-align: center; height: 50px;" onchange="updateDiscountPercent()">
                                                        <option value="option1" disabled selected>Select Discount Offers</option>
                                                        <option value="New Student">New Student Discount</option>
                                                        <option value="Old Student">Old Student Discount</option>
                                                        <option value="PWD Student">PWD Student Discount</option>
                                                        <option value="Solo Parent Student">Solo Parent Student Discount</option>
                                                        <option value="Returning Student">Returning Student Discount</option>
                                                        <option value="Church Endorsement">Church Endorsement Discount</option>
                                                        <option value="Academic Exellence">Academic Exellence Discount</option>
                                                        <option value="Sibling Student">Sibling Student Discount</option>
                                                        <option value="Employee">Employee Discount</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div style="margin-top: 50px; display: flex; flex-direction: column; gap: 10px;">
                                                <div style="display: flex; margin-left: 90px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Discount percentage :</h5>
                                                    <input type="number" id="discount_percent" name="discount_percent" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Other additional Discount :</h5>
                                                    <input type="number" id="additional_discount" name="additional_discount" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" placeholder="PENDING APPROVAL" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total Amount of Discount :</h5>
                                                    <input type="number" id="total_discount" name="total_discount" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" placeholder="EVALUATION IN PROCESS" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Miscellaneous :</h5>
                                                    <input type="number" id="miscellaneous" name="miscellaneous" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                    <input type="number" id="total_final" name="total_final" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Initial Payment :</h5>
                                                    <input type="number" id="initial_payment" name="initial_payment" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" placeholder="EVALUATION IN PROCESS" />
                                                </div>
                                            </div>
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
