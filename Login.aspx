<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="medinova_masterproject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <!-- Login Start -->
    <div class="auth-section">
        <div class="container">
            <div class="row g-0 auth-card">
                <div class="col-lg-6 auth-image">
                    <div>
                        <h2>Welcome Back</h2>
                        <p>Login to book your appointment and take care of your family health.</p>
                    </div>
                </div>
                <div class="col-lg-6 auth-form">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Login</h5>
                    <h1 class="display-6">Login To Your Account</h1>
                    <p class="auth-sub">Enter your email and password to continue.</p>

                    <label>Email</label>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>

                    <label>Password</label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auth-btn" OnClick="Button1_Click" />
                    <asp:Label ID="lblMsg" runat="server" CssClass="auth-message" ForeColor="Red"></asp:Label>

                    <div class="auth-link">
                        Don't Have an account?
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login End -->

</asp:Content>
