<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Prototype.Hope.Accounting.Transaction" %>
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
               <h3>Transaction Report</h3>
           </div>
       </div>
       <table border="1" width="100%" class="table caption-top" id="mytable">
           <tr style="text-align: center">
               <th>Date of Transaction</th>
               <th>Student ID</th>
               <th>Student Name</th>
               <th>Mode of Payment</th>
               <th>Tuition Fee</th>
               <th>Miscellaneous</th>
               <th>Amount</th>
               <th>Discount</th>
               <th>Type</th>
               <th>School Fee</th>
               <th>Total Amount</th>
               <th>Downpayment</th>
               <th>Schedule of Fee</th>
               <th>Payment Status</th>
           </tr>
           <asp:Repeater ID="ReportRepeater" runat="server">
               <ItemTemplate>
                   <tr style="text-align: center" class='<%# Eval("method","schedule")%>'>
                       <td><%# Eval("date", "{0:MM-dd-yyyy}") %></td>
                       <td><%# Eval("student_id") %></td>
                       <td><%# Eval("name") %></td>
                       <td><%# Eval("method") %></td>
                       <td><%# Convert.ToDecimal(Eval("tuition")).ToString("N2") %></td>
                       <td><%# Convert.ToDecimal(Eval("miscellaneous")).ToString("N2") %></td>
                       <td><%# Convert.ToDecimal(Eval("total")).ToString("N2") %></td>
                       <td><%# Convert.ToDecimal(Eval("discount")).ToString("0") + "%" %></td>
                       <td><%# Eval("discount_type") %></td>
                       <td><%# Convert.ToDecimal(Eval("schoolfee")).ToString("N2") %></td>
                       <td><%# Convert.ToDecimal(Eval("final_total")).ToString("N2") %></td>
                       <td><%# Convert.ToDecimal(Eval("downpayment")).ToString("N2") %></td>
                       <td><%# Eval("schedule") %></td>
                       <td><%# Eval("status") %></td>
                   </tr>
               </ItemTemplate>
           </asp:Repeater>
       </table>
   </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            left: -112px;
            top: -7px;
        }
    </style>
</asp:Content>

