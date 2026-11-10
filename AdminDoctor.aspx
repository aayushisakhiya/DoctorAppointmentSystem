<%@ Page Title="Admin Doctor" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDoctor.aspx.cs" Inherits="medinova_masterproject.AdminDoctor" %>

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

    <!-- Admin Doctor Start -->
    <div class="container py-5">
        <div class="bg-white rounded p-5 appointment-form shadow-sm">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Admin</h5>
            <h1 class="mb-4">Manage Doctor</h1>

            <div class="row">
                <div class="col-md-6">
                    <label>Choose Department</label>
                    <asp:DropDownList ID="drpdept" runat="server">
                        <asp:ListItem>--Choose Department--</asp:ListItem>
                        <asp:ListItem>Cardiology</asp:ListItem>
                        <asp:ListItem>Neurology</asp:ListItem>
                        <asp:ListItem>Dental Care</asp:ListItem>
                        <asp:ListItem>Orthopedics</asp:ListItem>
                        <asp:ListItem>General Medicine</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <label>Select Doctor</label>
                    <asp:DropDownList ID="drpdoc" runat="server">
                        <asp:ListItem>--Select Doctor--</asp:ListItem>
                        <asp:ListItem>Dr.Aayushi</asp:ListItem>
                        <asp:ListItem>Dr.Mansi</asp:ListItem>
                        <asp:ListItem>Dr.Grecy</asp:ListItem>
                        <asp:ListItem>Dr.Tanvi</asp:ListItem>
                        <asp:ListItem>Dr.Sneha</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <label>Doctor Name</label>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter Doctor Name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label>Specialization</label>
                    <asp:TextBox ID="txtspecial" runat="server" placeholder="Enter Specialization"></asp:TextBox>
                </div>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="auth-message" ForeColor="Green"></asp:Label>
        </div>

        <div class="grid-box">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Doctors</h5>
            <h3>Doctor List</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-table" GridLines="None" OnRowCommand="GridView1_RowCommand" EmptyDataText="No doctors added yet.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="C_Department" HeaderText="Department" />
                    <asp:BoundField DataField="S_Doctor" HeaderText="Doctor" />
                    <asp:BoundField DataField="D_Name" HeaderText="Doctor Name" />
                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmd_edt" Text="Edit" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_dlt" Text="Delete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure you want to delete?');"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <!-- Admin Doctor End -->

</asp:Content>
