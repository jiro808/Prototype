<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Prototype.Hope.Student.Payment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
                                                    <img src="../../Library/Images/user.png" id="userimage" style="height: 200px; border: solid 2px gray;" class="rounded-circle avatar-lg img-thumbnail userimage" alt="user-profile-image">
                                                    <input id="profileinput" type="file" class="profileinput" accept="image/png, image/jpeg">
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
                                    <div class="school-fees-container">
                                        <h2>School Fees</h2>
                                        <div id="school-fees-form">
                                            <div class="form-section">
                                                <h3>Schedule of Fees</h3>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="20%">
                                                    <asp:ListItem>Partial Payment</asp:ListItem>
                                                    <asp:ListItem>Full Payment</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="form-section">
                                                <h3>Payment Method</h3>
                                                <select name="payment_method" id="payment-method-select" required="">
                                                    <option value="" disabled selected>Select Payment Method</option>
                                                    <option value="Cash">Cash</option>
                                                    <option value="Gcash">Gcash</option>
                                                </select>
                                                <div class="invalid-feedback">Please Select Payment Method</div>
                                            </div>
                                            <div class="fee-details">
                                                <div class="detail">
                                                    <label for="tuition">Tuition:</label>
                                                    <input type="number" id="tuition" name="tuition" readonly="readonly">
                                                </div>
                                                <div class="detail">
                                                    <label for="miscellaneous">Miscellaneous & Other Fees:</label>
                                                    <input type="number" id="miscellaneous" name="miscellaneous" readonly="readonly">
                                                </div>
                                                <div class="total">
                                                    <label for="total">Total:</label>
                                                    <input type="number" id="total" name="total" placeholder="Total Amount" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-section">
                                                <h3>Discount Offers</h3>
                                                <select name="discount_offers" id="discount-offers-select" required="" onchange="updateDiscountPercent()">
                                                    <option value="" disabled selected>Select Discount Offers</option>
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
                                                <div class="invalid-feedback">Please Select Discount Offer</div>
                                            </div>
                                            <div class="discount-details">
                                                <div class="detail">
                                                    <label for="discount_percent">Discount Percent:</label>
                                                    <input type="number" id="discount_percent" name="discount_percent" readonly="readonly">
                                                </div>
                                                <div class="detail">
                                                    <label for="additional_discount">Other Additional Discount:</label>
                                                    <input type="text" id="additional_discount" name="additional_discount" placeholder="Administrator should complete this section." readonly="readonly">
                                                </div>
                                                <div class="total">
                                                    <label for="total_discount">Total Amount of Discount:</label>
                                                    <input type="number" id="total_discount" name="total_discount" placeholder="Administrator should complete this section." readonly="readonly">
                                                </div>
                                                <div class="total">
                                                    <label for="total_final">Final Amount:</label>
                                                    <input type="number" id="total_final" name="total_final" readonly="readonly">
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
            var tuition3Input = document.getElementById("total");
            var discountPercentInput = document.getElementById("discount_percent");
            var totalFinalInput = document.getElementById("total_final");
            // Default tuition and miscellaneous values
            var tuition = 0;
            var miscellaneous = 15800;
            var fee = 9100;
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
            var mis = miscellaneous + 7900;
            // Calculate total with miscellaneous
            var total1 = tuition + miscellaneous + fee;
            // Get discount percentage
            var discountPercent = parseFloat(discountPercentInput.value) || 0;
            // Calculate discounted tuition
            var discountedTuition = (total1 - (total1 * (discountPercent / 100)));
            // Format and update input values
            tuitionInput.value = tuition.toFixed();
            tuition2Input.value = mis.toFixed();
            tuition3Input.value = total1.toFixed();
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
            var discountOffersSelect = document.getElementById("discount-offers-select");
            var discountPercentInput = document.getElementById("discount_percent");
            // Set the discount_percent based on the selected option
            switch (discountOffersSelect.value) {
                case "New Student":
                    discountPercentInput.value = 5;
                    break;
                case "Old Student":
                    discountPercentInput.value = 10;
                    break;
                case "PWD Student":
                    discountPercentInput.value = 10;
                    break;
                case "Solo Parent Student":
                    discountPercentInput.value = 10;
                    break;
                case "Returning Student":
                    discountPercentInput.value = 10;
                    break;
                case "Church Endorsement":
                    discountPercentInput.value = 10;
                    break;
                case "Academic Exellence":
                    discountPercentInput.value = 50;
                    break;
                case "Sibling Student":
                    discountPercentInput.value = 10;
                    break;
                case "Employee":
                    discountPercentInput.value = 10;
                    break;
                // Add cases for other options
                default:
                    // Set a default value or clear the input if needed
                    discountPercentInput = 0;
                    break;
            }
            // Trigger the setTuition function to recalculate with the new discount
            setTuition();
        }
        // Get the current date and time
        var currentDate = new Date();
        var currentDateString = currentDate.toISOString().split('T')[0];

        // Set the min attribute for the date input
        document.getElementById('appointmentDate').min = currentDateString;

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
        // Initial display
        showStep(currentStep);
    </script>
</asp:Content>
