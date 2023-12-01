<%@ Page Title="Announcement" Language="C#" MasterPageFile="~/Hope/Accounting/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="Prototype.Hope.Accounting.Annoucement" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid" style="padding: 20px; padding-top: 50px; display: flex; gap: 20px; flex-direction: column;">
        <div class="container-fluid" style="background-color: ghostwhite; padding: 20px; display: flex; justify-content: space-between">

            <div style="display: flex; align-items: center">
                <div style="padding-right: 50px">
                    <asp:LinkButton ID="btnBack" runat="server" OnClientClick="window.location.href='Dashboard.aspx'; return false;">
<img src="../../Library/Images/left-arrow.png"   height="50" alt="Back" />
                    </asp:LinkButton>
                </div>
                <img src="../../Library/Images/megaphone.png" style="width: 100px; height: 100px" />
                <div style="margin-left: 30px">
                    <h4>ANNOUNCEMENT</h4>
                    <h6>Post Updates and Important Information Here</h6>
                </div>
            </div>
            <div style="margin-right: 30px; display: flex; align-items: center;">
                <asp:Button ID="Button1" runat="server" Text="+ Add New Announcement" OnClick="Button1_Click" BackColor="#0d6efd" ForeColor="White" BorderColor="#0d6efd" />
            </div>
        </div>
        <div class="container-fluid" style="padding: 20px; padding-left: 0px; gap: 20px; display: flex">
            <div style="display: flex; background-color: ghostwhite; flex-direction: column; padding: 20px;" class="col-8">
                <div>
                    <h4>New Announcement</h4>
                </div>
                <div style="display: flex; flex-direction: column; margin-left: 50px; margin-right: 50px; gap: 15px">
                    <div style="display: flex; gap: 60px;">
                        <span id="Body_Label1">To</span>
                        <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
                    </div>
                    <div style="display: flex; gap: 24px;">
                        <span id="Body_Label2">Subject</span>
                        <asp:TextBox ID="textbox" runat="server" Width="50%"></asp:TextBox>
                    </div>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Style="width: 100%; height: 30vh; padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;"></asp:TextBox>
                </div>
                <div style="display: flex; justify-content: flex-end; gap: 20px; padding: 20px;">
                    <asp:Button ID="Button2" runat="server" Text="Save as Draft" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Announce" OnClick="Button3_Click" />
                </div>
            </div>
            <div style="padding: 20px; display: flex; justify-content: center; background-color: cornflowerblue" class="col-4">
                <div>
                    <h4>Recent Announcement</h4>
                </div>
                <div>
                    <asp:Table runat="server">
                    </asp:Table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>