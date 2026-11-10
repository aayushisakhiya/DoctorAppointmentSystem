<%@ Page Title="Admin Users" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="medinova_masterproject.AdminUsers" %>

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

    <!-- Admin Users Start -->
    <div class="container py-5">
        <asp:Panel ID="pnledit" runat="server" Visible="false">
            <div class="bg-white rounded p-5 appointment-form shadow-sm mb-5">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Admin</h5>
                <h1 class="mb-4">Edit User</h1>

                <div class="row">
                    <div class="col-md-6">
                        <label>Name</label>
                        <asp:TextBox ID="txtnm" runat="server" placeholder="Enter name"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label>Email</label>
                        <asp:TextBox ID="txteml" runat="server" placeholder="Enter email"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label>Mobile</label>
                        <asp:TextBox ID="txtmbl" runat="server" placeholder="Enter mobile number"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label>City</label>
                        <asp:DropDownList ID="drpct" runat="server">
                            <asp:ListItem>--Select City--</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6">
                        <label>Address</label>
                        <asp:TextBox ID="txtadd" runat="server" placeholder="Enter address"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label>Gender</label>
                        <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal" CssClass="auth-radio">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
            </div>
        </asp:Panel>

        <div class="grid-box">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Users</h5>
            <h3>Registered Users</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-table" GridLines="None" OnRowCommand="GridView1_RowCommand" EmptyDataText="No users registered yet.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="60" Height="60" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:Label ID="Label1" runat="server" CssClass="auth-message" ForeColor="Green"></asp:Label>
        </div>
    </div>
    <!-- Admin Users End -->

</asp:Content>
