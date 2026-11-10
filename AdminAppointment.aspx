<%@ Page Title="Admin Appointment" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAppointment.aspx.cs" Inherits="medinova_masterproject.AdminAppointment" %>

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

    <!-- Admin Appointment Start -->
    <div class="container py-5">
        <div class="bg-white rounded p-5 appointment-form shadow-sm">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Admin</h5>
            <h1 class="mb-4">Manage Appointment</h1>

            <div class="row">
                <div class="col-md-6">
                    <label>Choose Department</label>
                    <asp:DropDownList runat="server" ID="drpdept">
                        <asp:ListItem>--Choose Department--</asp:ListItem>
                        <asp:ListItem>Department1</asp:ListItem>
                        <asp:ListItem>Department2</asp:ListItem>
                        <asp:ListItem>Department3</asp:ListItem>
                        <asp:ListItem>Department4</asp:ListItem>
                        <asp:ListItem>Department5</asp:ListItem>
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
                    <label>Your Name</label>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter your name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label>Email</label>
                    <asp:TextBox ID="txteml" runat="server" placeholder="Enter your email"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label>Password</label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Date</label>
                    <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Time</label>
                    <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox>
                </div>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="auth-message" ForeColor="Green"></asp:Label>
        </div>

        <div class="grid-box">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Appointments</h5>
            <h3>Booked Appointments</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-table" GridLines="None" OnRowCommand="GridView1_RowCommand" EmptyDataText="No appointments booked yet.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Choose Department" HeaderText="Department" />
                    <asp:BoundField DataField="Select Doctor" HeaderText="Doctor" />
                    <asp:BoundField DataField="Your Name" HeaderText="Patient Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                    <asp:BoundField DataField="Time" HeaderText="Time" />
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
    <!-- Admin Appointment End -->

</asp:Content>
