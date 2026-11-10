<%@ Page Title="Logout"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Logout.aspx.cs"
    Inherits="medinova_masterproject.Logout" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">
</asp:Content>


<asp:Content ID="Content3"
    ContentPlaceHolderID="ContentPlaceHolder2"
    runat="server">
</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder3"
    runat="server">

    <!-- Logout Message Start -->

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">

        <div class="container py-5">

            <div class="row justify-content-center">

                <div class="col-lg-8 text-center">

                    <h5 class="d-inline-block text-white text-uppercase border-bottom border-5"
                        style="border-color: rgba(256, 256, 256, .3) !important;">
                        Goodbye
                    </h5>

                    <h1 class="display-3 text-white mb-0">
                        You Have Been Logged Out
                    </h1>

                </div>

            </div>

        </div>

    </div>

    <!-- Logout Message End -->


    <!-- Logout Content Start -->

    <div class="container-fluid py-5">

        <div class="container text-center">

            <p class="fs-4">
                You have successfully logged out of your Medinova account.
            </p>


            <a href="Login.aspx"
               class="btn btn-primary rounded-pill py-3 px-5 mx-2">
                Login Again
            </a>


            <a href="Home.aspx"
               class="btn btn-outline-primary rounded-pill py-3 px-5 mx-2">
                Go To Home
            </a>

        </div>

    </div>

    <!-- Logout Content End -->

</asp:Content>




<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="medinova_masterproject.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <!-- Logout Message Start -->
    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"
                        style="border-color: rgba(256, 256, 256, .3) !important;">Goodbye</h5>
                    <h1 class="display-3 text-white mb-0">You Have Been Logged Out</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid py-5">
        <div class="container text-center">
            <p class="fs-4">You have successfully logged out of your Medinova account.</p>
            <a href="Login.aspx" class="btn btn-primary rounded-pill py-3 px-5 mx-2">Login Again</a>
            <a href="WebForm1.aspx" class="btn btn-outline-primary rounded-pill py-3 px-5 mx-2">Go To Home</a>
        </div>
    </div>
    <!-- Logout Message End -->

</asp:Content>
--%>
