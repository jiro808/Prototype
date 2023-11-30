<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Prototype.Hope.Accounting.Transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="student_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="student_id" HeaderText="student_id" InsertVisible="False" ReadOnly="True" SortExpression="student_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="method" HeaderText="method" SortExpression="method" />
            <asp:BoundField DataField="tuition" HeaderText="tuition" SortExpression="tuition" />
            <asp:BoundField DataField="miscellaneous" HeaderText="miscellaneous" SortExpression="miscellaneous" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
            <asp:BoundField DataField="discount_type" HeaderText="discount_type" SortExpression="discount_type" />
            <asp:BoundField DataField="schoolfee" HeaderText="schoolfee" SortExpression="schoolfee" />
            <asp:BoundField DataField="final_total" HeaderText="final_total" SortExpression="final_total" />
            <asp:BoundField DataField="downpayment" HeaderText="downpayment" SortExpression="downpayment" />
            <asp:BoundField DataField="schedule" HeaderText="schedule" SortExpression="schedule" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SIA_BILLINGConnectionString %>" SelectCommand="SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id"></asp:SqlDataSource>
</asp:Content>
