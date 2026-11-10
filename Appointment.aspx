<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="medinova_masterproject.appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <!-- Appointment Start -->
    <div class="container-fluid bg-primary my-5 py-5">
        <div class="container py-5">
            <div class="row gx-5">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Appointment</h5>
                        <h1 class="display-4">Make An Appointment For Your Family</h1>
                    </div>
                    <p class="text-white mb-5">
                        Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum.
                        Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea invidunt voluptua. Eos vero
                        eos vero ea et dolore eirmod et. Dolores diam duo invidunt lorem. Elitr ut dolores magna sit.
                        Sea dolore sanctus sed et. Takimata takimata sanctus sed.
                    </p>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Find Doctor" CssClass="btn btn-dark rounded-pill py-3 px-5 me-3" />
                    <asp:Button ID="Button3" runat="server" Text="Read More" OnClick="Button3_Click" CssClass="btn btn-outline-dark rounded-pill py-3 px-5" />
                </div>
                <div class="col-lg-6">
                    <div class="bg-white text-center rounded p-5 appointment-form">
                        <h1 class="mb-4">Book An Appointment</h1>

                        <asp:Label ID="lbldept" runat="server" Text="Choose Department" AssociatedControlID="drpdept"></asp:Label>
                        <asp:DropDownList runat="server" ID="drpdept">
                            <asp:ListItem>--Choose Department--</asp:ListItem>
                            <asp:ListItem>Department1</asp:ListItem>
                            <asp:ListItem>Department2</asp:ListItem>
                            <asp:ListItem>Department3</asp:ListItem>
                            <asp:ListItem>Department4</asp:ListItem>
                            <asp:ListItem>Department5</asp:ListItem>
                        </asp:DropDownList>

                        <asp:Label ID="lbldoc" runat="server" Text="Select Doctor" AssociatedControlID="drpdoc"></asp:Label>
                        <asp:DropDownList ID="drpdoc" runat="server" OnSelectedIndexChanged="drpdoc_SelectedIndexChanged">
                            <asp:ListItem>--Select Doctor--</asp:ListItem>
                            <asp:ListItem>Dr.Aayushi</asp:ListItem>
                            <asp:ListItem>Dr.Mansi</asp:ListItem>
                            <asp:ListItem>Dr.Grecy</asp:ListItem>
                            <asp:ListItem>Dr.Tanvi</asp:ListItem>
                            <asp:ListItem>Dr.Sneha</asp:ListItem>
                        </asp:DropDownList>

                        <asp:Label ID="lblnm" runat="server" Text="Your Name" AssociatedControlID="txtname"></asp:Label>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Enter your name"></asp:TextBox>

                        <asp:Label ID="lbleml" runat="server" Text="Email" AssociatedControlID="txteml"></asp:Label>
                        <asp:TextBox ID="txteml" runat="server" placeholder="Enter your email"></asp:TextBox>

                        <asp:Label ID="lblpass" runat="server" Text="Password" AssociatedControlID="txtpass"></asp:Label>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>

                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="lbldate" runat="server" Text="Date" AssociatedControlID="txtdate"></asp:Label>
                                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lbltime" runat="server" Text="Time" AssociatedControlID="txttime"></asp:Label>
                                <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server" CssClass="auth-message" ForeColor="Green"></asp:Label>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Appointment End -->

    <!-- Appointment List Start -->
    <div class="container pb-5">
        <div class="grid-box">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Appointments</h5>
            <h3>Booked Appointments</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-table" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No appointments booked yet.">
                <Columns>
                    <asp:BoundField DataField="Choose Department" HeaderText="Department" />
                    <asp:BoundField DataField="Select Doctor" HeaderText="Doctor" />
                    <asp:BoundField DataField="Your Name" HeaderText="Patient Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                    <asp:BoundField DataField="Time" HeaderText="Time" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <!-- Appointment List End -->

</asp:Content>
