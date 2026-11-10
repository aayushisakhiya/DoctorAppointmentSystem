<%@ Page Title="Admin Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="medinova_masterproject.AdminContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="container pt-5">
        <div class="d-flex flex-wrap justify-content-center">
            <a href="AdminDashboard.aspx" class="btn btn-primary rounded-pill py-2 px-4 m-1">Dashboard</a>
            <a href="AdminAppointment.aspx" class="btn btn-primary rounded-pill py-2 px-4 m-1">Appointments</a>
            <a href="AdminContact.aspx" class="btn btn-primary rounded-pill py-2 px-4 m-1">Contact Messages</a>
            <a href="AdminUsers.aspx" class="btn btn-primary rounded-pill py-2 px-4 m-1">Users</a>
            <a href="AdminDoctor.aspx" class="btn btn-primary rounded-pill py-2 px-4 m-1">Doctors</a>
            <a href="Logout.aspx" class="btn btn-outline-dark rounded-pill py-2 px-4 m-1">Logout</a>
        </div>
    </div>

    <!-- Admin Contact Start -->
    <div class="container py-5">
        <div class="grid-box">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Contact</h5>
            <h3>Contact Messages</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-table" GridLines="None" OnRowCommand="GridView1_RowCommand" EmptyDataText="No messages received yet.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Your Name" HeaderText="Name" />
                    <asp:BoundField DataField="Your Email" HeaderText="Email" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                    <asp:BoundField DataField="Message" HeaderText="Message" />
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_dlt" Text="Delete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure you want to delete?');"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" CssClass="auth-message" ForeColor="Green"></asp:Label>
        </div>
    </div>
    <!-- Admin Contact End -->

</asp:Content>
