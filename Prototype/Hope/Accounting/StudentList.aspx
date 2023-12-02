<%@ Page Title="" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="Prototype.Hope.Accounting.StudentList" %>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            left: -112px;
            top: -7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
       <div style="padding-left: 50px; padding-top: 20px;">
       <asp:LinkButton ID="btnBack" runat="server" OnClientClick="window.location.href='Dashboard.aspx'; return false;">
   <img src="../../Library/Images/left-arrow.png"   height="50" alt="Back" />
       </asp:LinkButton>
   </div>

   <div class="auto-style1" style="margin: 120px; margin-bottom:20px; margin-top:0; padding: 20px">
   <div class="auto-style1" style="background-color: ghostwhite; margin: 20px; padding: 20px">
       <div class="row">
           <div class="col">
               <h3>Student List</h3>
           </div>
       </div>
       <table border="1" width="100%" class="table caption-top" id="mytable">
           <tr style="text-align: center">
               <th>Student ID</th>
               <th>Name</th>
               <th>Grade</th>
               <th>Status</th>
               <th>Address</th>
               <th>Contact</th>
               <th>Email</th>
           </tr>
           <asp:Repeater ID="ReportRepeater" runat="server" OnItemDataBound="ReportRepeater_ItemDataBound">
               <ItemTemplate>
                  <tr style="text-align: center" class="selectable-row" data-student-id='<%# Eval("student_id") %>'>
                       <td><%# Eval("student_id") %></td>
                       <td><%# Eval("name") %></td>
                       <td><%# Eval("grade_level") %></td>
                       <td><%# Eval("status") %></td>
                       <td><%# Eval("address") %></td>
                       <td><%# Eval("contact_no") %></td>
                       <td><%# Eval("email") %></td>
                   </tr>
               </ItemTemplate>
           </asp:Repeater>
       </table>
   </div>
       <script>
    // JavaScript function to handle row selection
    function handleRowSelection(studentId) {
        // Redirect to the dashboard with the selected student ID
        window.location.href = 'StudentDetail.aspx?studentId=' + studentId;
    }

    // Attach click event to each selectable row
    document.addEventListener('DOMContentLoaded', function () {
        var rows = document.querySelectorAll('.selectable-row');
        rows.forEach(function (row) {
            row.addEventListener('click', function () {
                var studentId = row.getAttribute('data-student-id');
                handleRowSelection(studentId);
            });
        });
    });
       </script>
</asp:Content>

