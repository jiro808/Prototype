<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentCreate.aspx.cs" Inherits="Prototype.Hope.StudentCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Create Account</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
     <style>
        .form-control-border {
            border-radius: .25rem;
            border: 1px solid #ced4da;
        }
        .profile-picture-placeholder {
            background-color: #dee2e6;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px auto;
            font-size: 2.5rem;
            color: #adb5bd;
        }
        .btn-upload {
            background-color: #e9ecef;
            color: #495057;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container mt-5">
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <div class="text-center mb-4">
                    <h1>Create Account</h1>
                </div>
                    <div class="form-group">
                        <input type="text" id="name" name="name" class="form-control form-control-border" placeholder="Full Name" required="required"/>
                    </div>
                    <div class="form-group">
                        <input type="email" id="email" name="email" class="form-control form-control-border" placeholder="Email" required="required" />
                    </div>
                    <div class="form-group">
                        <input type="text" id="username" name="username" class="form-control form-control-border" placeholder="Username" required="required" />
                    </div>
                    <div class="form-group">
                        <input type="password" id="password" name="password" class="form-control form-control-border" placeholder="Password" required="required" />
                    </div>
                    <div class="form-group">
                        <input type="password" id="password2" name="password2" class="form-control form-control-border" placeholder="Re-type Password" required="required" />
                    </div>
                    <div class="form-group text-center">
                        <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Confirm" OnClick="Button1_Click" OnClientClick="return validatePasswords();"/>
                        <asp:Button ID="Button2"  class="btn btn-secondary" runat="server" Text="Cancel" OnClick="Button2_Click" />
                    </div>
                <div class="text-center">
                    Already have an account? <a href="StudentLogin.aspx" class="text-primary">Sign In</a>
                </div>
            </div>
        </div>
    </div>
<script>
    function validatePasswords() {
        var pass = document.getElementById("password");
        var pass2 = document.getElementById("password2");
        var password = pass.value;
        var password2 = pass2.value;

        if (password !== password2) {
            swal('Error', 'Passwords do not match.', 'error');
            return false; // Prevent form submission
        }

        // Passwords match, continue with form submission
        return true;
    }
</script>
    <!-- Optional: Include the jQuery library -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <!-- Include Bootstrap JS from a CDN -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </div>
    </form>
</body>
</html>
