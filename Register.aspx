<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="medinova_masterproject.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <!-- Register Start -->
    <div class="auth-section">
        <div class="container">
            <div class="row g-0 auth-card">
                <div class="col-lg-5 auth-image">
                    <div>
                        <h2>Join Medinova</h2>
                        <p>Create your account and get the best healthcare for you and your family.</p>
                    </div>
                </div>
                <div class="col-lg-7 auth-form">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Register</h5>
                    <h1 class="display-6">Registration Form</h1>
                    <p class="auth-sub">Fill the details below to create your account.</p>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Name</label>
                            <asp:TextBox ID="txtnm" runat="server" placeholder="Enter your name"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label>Email</label>
                            <asp:TextBox ID="txteml" runat="server" placeholder="Enter your email"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label>Password</label>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
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
                            <asp:TextBox ID="txtadd" runat="server" placeholder="Enter your address"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="Gender :"></asp:Label>
                            <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal" CssClass="auth-radio">
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-md-6">
                            <label>Image</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div>

                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="auth-btn" OnClick="Button1_Click" />

                    <div class="auth-link">
                        Already have an account? <a href="Login.aspx">Login</a>
                    </div>
                </div>
            </div>

            <div class="grid-box">
                <h3>Registered Users</h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="cmd_edt" CssClass="grid-table" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ID") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100" Height="100" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cmd_edt" Text="Edit" CommandArgument='<%# Eval("ID") %>'> </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_dlt" Text="Delete" CommandArgument='<%# Eval("ID") %>'> </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
            </div>
        </div>
    </div>
    <!-- Register End -->

</asp:Content>
