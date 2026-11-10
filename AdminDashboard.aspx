<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="medinova_masterproject.AdminDashboard" %>

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

    <!-- Admin Dashboard Start -->
    <div class="container py-5">
        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Admin Panel</h5>
            <h1 class="display-4">Dashboard</h1>
        </div>
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa fa-3x fa-calendar-check text-primary mb-3"></i>
                    <h1 class="display-4 text-primary">
                        <asp:Label ID="lblapp" runat="server" Text="0"></asp:Label></h1>
                    <h5 class="mb-4">Appointments</h5>
                    <a href="AdminAppointment.aspx" class="btn btn-primary rounded-pill py-2 px-4">Manage</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa fa-3x fa-envelope text-primary mb-3"></i>
                    <h1 class="display-4 text-primary">
                        <asp:Label ID="lblcnt" runat="server" Text="0"></asp:Label></h1>
                    <h5 class="mb-4">Contact Messages</h5>
                    <a href="AdminContact.aspx" class="btn btn-primary rounded-pill py-2 px-4">Manage</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa fa-3x fa-users text-primary mb-3"></i>
                    <h1 class="display-4 text-primary">
                        <asp:Label ID="lblusr" runat="server" Text="0"></asp:Label></h1>
                    <h5 class="mb-4">Registered Users</h5>
                    <a href="AdminUsers.aspx" class="btn btn-primary rounded-pill py-2 px-4">Manage</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                    <h1 class="display-4 text-primary">
                        <asp:Label ID="lbldct" runat="server" Text="0"></asp:Label></h1>
                    <h5 class="mb-4">Doctors</h5>
                    <a href="AdminDoctor.aspx" class="btn btn-primary rounded-pill py-2 px-4">Manage</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Admin Dashboard End -->

</asp:Content>
