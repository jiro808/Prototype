<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Prototype.Hope.Student.Payment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid">
        <style>
            .hero-section {
                background: url("images/bgdashboard.png") no-repeat center center;
                background-size: cover;
                padding: 60px 0; /* Adjust the padding as needed */
            }

                .hero-section .container {
                    background: rgba(255, 255, 255, 0.0); /* Add a semi-transparent white background to the container */
                    padding: 20px;
                }

            #hero {
                height: 90.8vh; /* Set the height to 100% of the viewport height */
                margin: 0; /* Remove margin */
                padding: 0; /* Remove padding */
            }
            /* Add a new CSS class to style the active tab as green */
            .green-tab {
                background-color: #4CAF50; /* Green color */
                color: #fff; /* Text color */
            }
        </style>
        <section class="section pb-0 hero-section" id="hero">
            <div class="col-xl-11.5" style="padding: 5%;">
                <div class="card">
                    <div class="card-body">
                        <div action="#" class="form-steps" autocomplete="off">
                            <div class="step-arrow-nav mb-4">
                                <ul class="nav nav-pills custom-nav nav-justified" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="steparrow-gen-info-tab" type="button" role="tab" aria-controls="steparrow-gen-info" aria-selected="true" data-position="0" disabled>Student Information</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="steparrow-description-info-tab" type="button" role="tab" aria-controls="steparrow-description-info" aria-selected="false" data-position="1" tabindex="-1" disabled>School Fees</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="steparrow-appointment-info-tab" type="button" role="tab" aria-controls="steparrow-appointment-info" aria-selected="false" data-position="1" tabindex="-1" disabled>Appointment Schedule</button>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="steparrow-gen-info" role="tabpanel" aria-labelledby="steparrow-gen-info-tab">
                                    <div class="row">
                                        <div class="col-lg-9">
                                            <h4 style="border-bottom: solid gray 2px; padding-bottom: 15px;">STUDENT DETAILS</h4>
                                            <div class="row">
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_name">Name</label>
                                                    <input type="text" class="form-control" id="stud_name" name="stud_name" placeholder="Last Name, First Name" required="">
                                                    <div class="invalid-feedback">Please enter a Name</div>
                                                </div>
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_grade_level">Grade Level</label>
                                                    <select id="grade_level" name="grade_level" type="text" class="form-control" required="">
                                                        <option value="" disabled selected>Select Your Grade Level</option>
                                                        <option value="Nursery">Nursery</option>
                                                        <option value="Kinder">Kinder</option>
                                                        <option value="Grade 1">Grade 1</option>
                                                        <option value="Grade 2">Grade 2</option>
                                                        <option value="Grade 3">Grade 3</option>
                                                        <option value="Grade 4">Grade 4</option>
                                                        <option value="Grade 5">Grade 5</option>
                                                        <option value="Grade 6">Grade 6</option>
                                                        <option value="Grade 7">Grade 7</option>
                                                        <option value="Grade 8">Grade 8</option>
                                                        <option value="Grade 9">Grade 9</option>
                                                        <option value="Grade 10">Grade 10</option>
                                                    </select>
                                                    <div class="invalid-feedback">Please Select a Grade Level</div>
                                                </div>
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_status">Status</label>
                                                    <select id="stud_status" name="stud_status" type="text" class="form-control" required="">
                                                        <option value="" disabled selected>Select Your Status</option>
                                                        <option value="New Student">New Student</option>
                                                        <option value="Old Student">Old Student</option>
                                                        <option value="Trasferee">Transferee Student</option>
                                                    </select>
                                                    <div class="invalid-feedback">Please Select a Status</div>
                                                </div>
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_home_add">Home Address</label>
                                                    <input type="text" class="form-control" id="stud_home_add" name="stud_home_add" placeholder="Home Address" required="">
                                                    <div class="invalid-feedback">Please enter a Home Address</div>
                                                </div>
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_contact_no">Contact Number</label>
                                                    <input type="text" class="form-control" id="stud_contact_no" name="stud_contact_no" placeholder="09123456789" required="" maxlength="11" pattern="09[0-9]{9}" title="Please enter a valid Contact Number">
                                                    <div class="invalid-feedback">Please enter a Valid Contact Number</div>
                                                </div>
                                                <div class="mb-4 col-lg-4">
                                                    <label class="form-label" for="stud_email_add">Email Address</label>
                                                    <input type="email" class="form-control" id="stud_email_add" name="stud_email_add" placeholder="name@email.com" required="">
                                                    <div class="invalid-feedback">Please enter a Email Address</div>
                                                </div>
                                            </div>
                                            <h4 style="border-bottom: solid gray 2px; padding-bottom: 15px; padding-top: 15px">PARENTS / GUARDIAN DETAILS</h4>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="text-center">
                                                <div class="mb-3">
                                                    <img src="../../Library/Images/user.png" style="height: 200px; border: solid 2px gray;" class="rounded-circle avatar-lg img-thumbnail userimage" alt="user-profile-image" />
                                                    <input id="profileinput" type="file" class="profileinput" accept="image/png, image/jpeg" required="" />
                                                    <div class="invalid-feedback">Please choose a valid image</div>
                                                    <script>
                                                        $(document).ready(function () {
                                                            // Add change event listener to the file input
                                                            $("#profileinput").change(function () {
                                                                // Get the selected file
                                                                var file = this.files[0];
                                                                if (file) {
                                                                    // Read the file as a data URL
                                                                    var reader = new FileReader();

                                                                    reader.onload = function (e) {
                                                                        // Set the image source to the data URL
                                                                        $(".userimage").attr("src", e.target.result);
                                                                    };
                                                                    reader.readAsDataURL(file);
                                                                }
                                                            });
                                                        });
                                                    </script>
                                                </div>
                                                <p class="fs-12">File format accepted: jpg, png</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_name">Name of Father</label>
                                            <input type="text" class="form-control" id="fth_name" name="fth_name" placeholder="Last Name, First Name" required="">
                                            <div class="invalid-feedback">Please enter a Name of Father</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="fth_occupation" name="fth_occupation" placeholder="Type Here..." required="">
                                            <div class="invalid-feedback">Please enter a Occupation</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="fth_contact_no" name="fth_contact_no" placeholder="09123456789" required="" maxlength="11" pattern="09[0-9]{9}" title="Please enter a valid Contact Number">
                                            <div class="invalid-feedback">Please enter a Contact Number</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="fth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="fth_email_add" name="fth_email_add" placeholder="name@email.com" required="">
                                            <div class="invalid-feedback">Please enter a Email Address</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_name">Name of Mother</label>
                                            <input type="text" class="form-control" id="mth_name" name="mth_name" placeholder="Last Name, First Name" required="">
                                            <div class="invalid-feedback">Please enter a Name of Mother</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="mth_occupation" name="mth_occupation" placeholder="Type Here..." required="">
                                            <div class="invalid-feedback">Please enter a Occupation</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="mth_contact_no" name="mth_contact_no" placeholder="09123456789" required="" maxlength="11" pattern="09[0-9]{9}" title="Please enter a valid Contact Number">
                                            <div class="invalid-feedback">Please enter a Contact Number</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="mth_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="mth_email_add" name="mth_email_add" placeholder="name@email.com" required="">
                                            <div class="invalid-feedback">Please enter a Email Address</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_name">Name of Guardian</label>
                                            <input type="text" class="form-control" id="grd_name" name="grd_name" placeholder="Last Name, First Name" required="">
                                            <div class="invalid-feedback">Please enter a Name of Guardian</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_occupation">Occupation</label>
                                            <input type="text" class="form-control" id="grd_occupation" name="grd_occupation" placeholder="Type Here..." required="">
                                            <div class="invalid-feedback">Please enter a Occupation</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_contact_no">Contact Number</label>
                                            <input type="text" class="form-control" id="grd_contact_no" name="grd_contact_no" placeholder="09123456789" required="" maxlength="11" pattern="09[0-9]{9}" title="Please enter a valid Contact Number">
                                            <div class="invalid-feedback">Please enter a Contact Number</div>
                                        </div>
                                        <div class="mb-3 col-lg-3">
                                            <label class="form-label" for="grd_email_add">Email Address</label>
                                            <input type="email" class="form-control" id="grd_email_add" name="grd_email_add" placeholder="name@email.com" required="">
                                            <div class="invalid-feedback">Please enter a Email Address</div>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-start gap-3 mt-4">
                                        <a href="Dashboard.aspx" type="button" class="btn btn-light btn-label previestab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray;">
                                            <img src="../../Library/Images/backgray.png" height="21" width="21" />Back to Dashboard</a>
                                        <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="steparrow-description-info-tab" style="display: flex; align-items: center; gap: inherit; background-color: #31ad74;">Nest Step<img src="../../Library/Images/image.png" height="21" width="21" /></button>
                                    </div>
                                </div>
                                <!-- end tab pane -->
                                <div class="tab-pane fade" id="steparrow-description-info" role="tabpanel" aria-labelledby="steparrow-description-info-tab">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="row" style="display: flex">
                                                <div style="display: flex; margin-left: 50px">
                                                    <h3 class="col-lg-5">SCHEDULE OF FEES</h3>
                                                </div>
                                                <div style="padding-left: 75px">
                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Size="x-Large" Width="100%" CssClass="form-check form-check-inline">
                                                         <asp:ListItem>Partial Payment</asp:ListItem>
                                                    <asp:ListItem>Full Payment</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                                <div style="display: flex; margin-left: 50px; margin-top: 20px">
                                                    <h3 class="col-lg-5">PAYMENT METHOD</h3>
                                                </div>
                                                <div style="padding-left: 75px; display: flex; gap: 15px;">
                                                    <select name="payment_method" id="payment_method" class="col-lg-6" style="background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem; font-size: 25px; text-align: center; height: 50px;" onchange="toggleQrButton()">
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
                                                                <img src="../../Library/Images/qr.jpg"  alt="Gcash QR Code" class="img-fluid">
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
                                                        <input type="number" id="miscellaneous" name="miscellaneous" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                    </div>
                                                    <div style="display: flex; margin-left: 50px; margin-top: 10px">
                                                        <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                        <input type="number" id="total" name="total" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6" style="">
                                            <div>
                                                <div style="margin-left: 50px; margin-bottom: 20px; display: flex; justify-content: space-between;">
                                                    <h4>DISCOUNT</h4>
                                                    <button type="button" class="btn btn-info" onclick="otherFeesButton" id="otherFeesButton">Other School Fees</button>
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
                                                    <script>
                                                        var modal = document.getElementById("otherFeesModal");
                                                        var btn = document.getElementById("otherFeesButton");
                                                        var span = document.getElementsByClassName("close")[0];
                                                        // When the user clicks the button, open the modal 
                                                        btn.onclick = function () {
                                                            modal.style.display = "block";
                                                        }

                                                        // When the user clicks on <span> (x), close the modal
                                                        span.onclick = function () {
                                                            modal.style.display = "none";
                                                        }


                                                        // When the user clicks anywhere outside of the modal, close it
                                                        window.onclick = function (event) {
                                                            if (event.target == modal) {
                                                                modal.style.display = "none";
                                                            }
                                                        }
                                                        // Placeholder function for submitting the form
                                                        function submitOtherFeesForm() {
                                                            // TODO: Add form submission logic
                                                            swal("Good job!", "You clicked the button!", "success"); // Placeholder alert
                                                            modal.style.display = "none";// Close the modal
                                                        }
                                                    </script>
                                                </div>
                                                <div style="margin-left: 70px; margin-bottom: 20px">
                                                    <select name="discount_offers" id="discount_offers" class="col-lg-6" style="background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem; font-size: 25px; text-align: center; height: 50px;" onchange="updateDiscountPercent()">
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
                                                    <h5 class="col-lg-4" style="font-weight: normal">School Fees :</h5>
                                                    <input type="number" id="schoolf" name="schoolf" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" />
                                                </div>
                                                <div style="display: flex; margin-left: 90px; margin-top: 10px">
                                                    <h5 class="col-lg-4" style="font-weight: normal">Total :</h5>
                                                    <input type="number" id="total_final" name="total_final" readonly="readonly" class="col-lg-6" style="font-size: x-large; text-align: center; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;" placeholder="EVALUATION IN PROCESS" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-start gap-3 mt-4">
                                        <button type="button" class="btn btn-light btn-label previestab" data-previous="steparrow-gen-info-tab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray">
                                            <img src="../../Library/Images/backgray.png" height="21" width="21" />Back to Student Information</button>
                                        <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="pills-appointmen-tab" style="display: flex; align-items: center; gap: inherit; background-color: #31ad74">Next Step<img src="../../Library/Images/image.png" height="21" width="21" /></button>
                                    </div>
                                </div>
                                <!-- end tab pane -->
                                <div class="tab-pane fade" id="steparrow-appointment-info" role="tabpanel" aria-labelledby="steparrow-appointment-info-tab">
                                    <div class="container mt-5" style="display: flex; justify-content: space-between">
                                        <div class="mt-3">
                                            <label for="appointmentDate">Select Date:</label>
                                            <input type="date" id="appointmentDate" name="appointmentDate" required="required" />
                                            <label for="appointmentTime">Select Time:</label>
                                            <input type="time" id="appointmentTime" name="appointmentTime" min="8:00" max="14:00" required="required" />
                                        </div>
                                        <div>
                                            <img src="../../Library/Images/appside.jpg" height="420" width="420" />
                                        </div>
                                    </div>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.bundle.min.js"></script>
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.10.0/main.min.js"></script>
                                    <script src="script.js"></script>
                                    <div class="d-flex align-items-start gap-3 mt-4">
                                        <button type="button" class="btn btn-light btn-label previestab" data-previous="steparrow-gen-info-tab" style="display: flex; align-items: center; gap: inherit; border: solid 1px; border-color: gray">
                                            <img src="../../Library/Images/backgray.png" height="21" width="21" />Back to School Fees</button>
                                        <asp:Button ID="Button1" class="btn btn-success btn-label right ms-auto" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    </div>
                                </div>
                                <!-- end tab pane -->
                            </div>
                        <!-- end tab content -->
                        </div>
                    </div>
                    <!-- end card body -->
                </div>
                <!-- end card -->
            </div>
        </section>
    </div>
    <!-- end layout wrapper -->
    <!-- Your HTML structure remains the same -->
    <script>
        // Get the form and step buttons
        const form = document.querySelector(".form-steps");
        const stepButtons = document.querySelectorAll(".nav-link");
        let currentStep = 0;
        // Function to show the current step and hide the others
        function showStep(stepIndex) {
            const stepPanes = document.querySelectorAll(".tab-pane");
            stepPanes[currentStep].classList.remove("active", "show");
            stepButtons[currentStep].classList.remove("active", "green-tab"); // Remove the green color from the previous active tab
            stepPanes[stepIndex].classList.add("active", "show");
            stepButtons[stepIndex].classList.add("active", "green-tab"); // Add the green color to the active tab
            currentStep = stepIndex;
        }
        // Add click event listeners to the step buttons
        stepButtons.forEach((button, index) => {
            button.addEventListener("click", () => {
                if (validateStep(currentStep)) {
                    showStep(index);
                }
            });
        });
        // Add click event listeners to "Next" and "Previous" buttons
        const nextButtons = document.querySelectorAll(".nexttab");
        const prevButtons = document.querySelectorAll(".previestab");
        nextButtons.forEach((button) => {
            button.addEventListener("click", () => {
                if (validateStep(currentStep)) {
                    showStep(currentStep + 1);
                }
            });
        });
        prevButtons.forEach((button) => {
            button.addEventListener("click", () => {
                showStep(currentStep - 1);
            });
        });
        // Function to validate the current step
        function validateStep(stepIndex) {
            const currentStepPane = document.querySelectorAll(".tab-pane")[stepIndex];
            const inputFields = currentStepPane.querySelectorAll("input, select, textarea");
            for (let i = 0; i < inputFields.length; i++) {
                const inputField = inputFields[i];
                if (!inputField.checkValidity()) {
                    inputField.classList.add("is-invalid");
                    inputField.addEventListener("input", () => {
                        if (inputField.checkValidity()) {
                            inputField.classList.remove("is-invalid");
                        }
                    });
                    return false;
                }
            }
            return true;
        }
        function addAppointment() {
            // Get the selected values
            var selectedDate = document.getElementById("appointmentDate").value;
            var selectedTime = document.getElementById("appointmentTime").value;
            // Perform further actions with the selected values
            console.log("Selected Date: " + selectedDate);
            console.log("Selected Time: " + selectedTime);
            // You can send the values to the server, update the UI, etc.
        }
        // Function to set tuition based on selected grade level
        function setTuition() {
            var gradeLevel = document.getElementById("grade_level").value;
            var tuitionInput = document.getElementById("tuition");
            var tuition2Input = document.getElementById("miscellaneous");
            var scfee = document.getElementById("schoolf");
            var tuition3Input = document.getElementById("total");
            var discountPercentInput = document.getElementById("discount_percent");
            var totalFinalInput = document.getElementById("total_final");
            // Default tuition and miscellaneous values
            var tuition = 0;
            var miscellaneous = 15800;
            var fee = 7900;
            // Set tuition based on grade level
            switch (gradeLevel) {
                case "Nursery":
                    tuition = 25860;
                    break;
                case "Kinder":
                    tuition = 31397;
                    break;
                case "Grade 1":
                    tuition = 31330;
                    break;
                case "Grade 2":
                    tuition = 31330;
                    break;
                case "Grade 3":
                    tuition = 31330;
                    break;
                case "Grade 4":
                    tuition = 33596;
                    break;
                case "Grade 5":
                    tuition = 33596;
                    break;
                case "Grade 6":
                    tuition = 33740;
                    break;
                case "Grade 7":
                    tuition = 31109;
                    break
                case "Grade 8":
                    tuition = 31109;

                    break;
                case "Grade 9":
                    tuition = 34456;
                    break;
                case "Grade 10":
                    tuition = 41012;
                    break;
                // Add more cases for other grade levels if needed
                // Default case (if grade level is not specified)
                default:
                    tuition = 0; // Set the default tuition value
                    break;
            }
            // Calculate total with miscellaneous
            var total = tuition + miscellaneous;
            var total1 = tuition + miscellaneous + fee;
            // Get discount percentage
            var discountPercent = parseFloat(discountPercentInput.value) || 0;
            var formattedDiscountPercent = discountPercent + '%';
            // Calculate discounted tuition
            var discountedTuition = (total1 - (total1 * (discountPercent / 100)));
            // Format and update input values
            tuitionInput.value = tuition.toFixed();
            tuition2Input.value = miscellaneous.toFixed();
            tuition3Input.value = total.toFixed();
            scfee.value = fee.toFixed();
            // Display the total with discount in the "total_final" element
            totalFinalInput.value = discountedTuition.toFixed();
        }
        // Attach the setTuition function to the onchange event of the grade level select
        document.getElementById("grade_level").onchange = setTuition;
        // Attach the updateDiscountPercent function to the onchange event of the discount offers select
        document.getElementById("discount-offers-select").onchange = updateDiscountPercent;
        // Attach the setTuition function to the onchange event of the discount percentage input
        document.getElementById("discount_percent").oninput = setTuition;
        function updateDiscountPercent() {
            // Get the dropdown and input elements
            var discountOffersSelect = document.getElementById("discount_offers");
            var discountPercentInput = document.getElementById("discount_percent");
            // Set the discount_percent based on the selected option
            switch (discountOffersSelect.value) {
                case "New Student":
                    discount = 5;
                    break;
                case "Old Student":
                    discount = 10;
                    break;
                case "PWD Student":
                    discount = 10;
                    break;
                case "Solo Parent Student":
                    discount = 10;
                    break;
                case "Returning Student":
                    discount = 10;
                    break;
                case "Church Endorsement":
                    discount = 10;
                    break;
                case "Academic Exellence":
                    discount = 50;
                    break;
                case "Sibling Student":
                    discount = 10;
                    break;
                case "Employee":
                    discount = 10 + "%";
                    break;
                // Add cases for other options
                default:
                    // Set a default value or clear the input if needed
                    discount = 0;
                    break;
            }
            discountPercentInput.value = discount;
            // Trigger the setTuition function to recalculate with the new discount
            setTuition();
        }
        // Get the current date and time
        var currentDate = new Date();
        var currentDateString = currentDate.toISOString().split('T')[0];
        // Set the min attribute for the date input
        document.getElementById('appointmentDate').min = currentDateString;
        // Initial display
        showStep(currentStep);
        function toggleQrButton() {
            // Get the selected payment method
            var paymentMethod = document.getElementById('payment_method').value;

            // Get the QR button
            var qrButton = document.getElementById('qrCodeButton');

            // Show or hide the QR button based on the payment method
            if (paymentMethod === 'Gcash') {
                qrButton.style.display = 'block';
            } else {
                qrButton.style.display = 'none';
            }
        }
    </script>
</asp:Content>
