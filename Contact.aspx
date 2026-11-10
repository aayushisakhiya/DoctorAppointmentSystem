<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="medinova_masterproject.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Any Questions?</h5>
                <h1 class="display-4">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
                        style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4"
                            style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">Medinova, Rajkot, Gujarat, India</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
                        style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4"
                            style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">+012 345 6789</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
                        style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4"
                            style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">info@example.com</h6>
                    </div>
                </div>
            </div>

            <!-- Map / Image -->
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-relative w-100 h-100"
                            src="img/Contact background.png"
                            alt="Medinova"
                            style="object-fit: cover;" />
                    </div>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0 contact-form">
                        <div class="row g-3">
                            <div class="col-12 col-sm-6">
                                <asp:TextBox ID="txtName"
                                    runat="server"
                                    CssClass="contact-input form-control bg-light border-0"
                                    placeholder="Your Name">
                                </asp:TextBox>
                            </div>
                            <div class="col-12 col-sm-6">
                                <asp:TextBox ID="txtEmail"
                                    runat="server"
                                    CssClass="contact-input form-control bg-light border-0"
                                    TextMode="Email"
                                    placeholder="Your Email">
                                </asp:TextBox>
                            </div>
                            <div class="col-12">
                                <asp:TextBox ID="txtSubject"
                                    runat="server"
                                    CssClass="contact-input form-control bg-light border-0"
                                    placeholder="Subject">
                                </asp:TextBox>
                            </div>
                            <div class="col-12">
                                <asp:TextBox ID="txtMessage"
                                    runat="server"
                                    CssClass="contact-message form-control bg-light border-0"
                                    TextMode="MultiLine"
                                    Rows="5"
                                    placeholder="Message">
                                </asp:TextBox>
                            </div>
                            <div class="col-12">
                                <asp:Button ID="btnSend"
                                    runat="server"
                                    Text="Send Message"
                                    CssClass="send-button btn btn-primary w-100 py-3"
                                    OnClick="btnSend_Click" />
                                <asp:Label ID="lblMessage"
                                    runat="server"
                                    CssClass="contact-message-label">
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>

