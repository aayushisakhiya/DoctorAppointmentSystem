<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="medinova_masterproject.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

        <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"
                        style="border-color: rgba(256, 256, 256, .3) !important;">Welcome To Medinova</h5>
                    <h1 class="display-1 text-white mb-md-4">Best Healthcare Solution In Your City</h1>
                    <div class="pt-2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Find Doctor" CssClass="btn btn-light rounded-pill py-md-3 px-md-5 mx-2" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Appointment" CssClass="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->




    <%--<!-- About Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="row gx-5">
                            <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                                <div class="position-relative h-100">
                                    <img class="position-absolute w-100 h-100 rounded" src="img/about.jpg"
                            style="object-fit: cover; top: 149px; left: 15px;">
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="mb-4">
                                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">About Us</h5>
                                    <h1 class="display-4">Best Medical Care For Yourself and Your Family</h1>
                                </div>
                                <p>
                                    Tempor erat elitr at rebum at at clita aliquyam consetetur. Diam dolor diam ipsum et, tempor
                        voluptua sit consetetur sit. Aliquyam diam amet diam et eos sadipscing labore. Clita erat ipsum
                        et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor consetetur
                        takimata eirmod, dolores takimata consetetur invidunt magna dolores aliquyam dolores dolore.
                        Amet erat amet et magna</p>
                                <div class="row g-3 pt-3">
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                            <h6 class="mb-0">Qualified<small class="d-block text-primary">Doctors</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                            <h6 class="mb-0">Emergency<small class="d-block text-primary">Services</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                            <h6 class="mb-0">Accurate<small class="d-block text-primary">Testing</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                            <h6 class="mb-0">Free<small class="d-block text-primary">Ambulance</small></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- About End -->


    <!-- Services Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Services</h5>
                            <h1 class="display-4">Excellent Medical Services</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-user-md text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Emergency Care</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-procedures text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Operation & Surgery</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-stethoscope text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Outdoor Checkup</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-ambulance text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Ambulance Service</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-pills text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Medicine & Pharmacy</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-microscope text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Blood Testing</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Services End -->


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
                        Sea dolore sanctus sed et. Takimata takimata sanctus sed.</p>
                                <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="#!">Find Doctor</a> <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="#!">Read More</a>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-white text-center rounded p-5">
                                    <h1 class="mb-4">Book An Appointment</h1>
                                    <div>
                                        <div class="row g-3">
                                            <div class="col-12 col-sm-6">
                                                <select class="form-select bg-light border-0" style="height: 55px;">
                                                    <option selected>Choose Department</option>
                                                    <option value="1">Department 1</option>
                                                    <option value="2">Department 2</option>
                                                    <option value="3">Department 3</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <select class="form-select bg-light border-0" style="height: 55px;">
                                                    <option selected>Select Doctor</option>
                                                    <option value="1">Doctor 1</option>
                                                    <option value="2">Doctor 2</option>
                                                    <option value="3">Doctor 3</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <input type="text" class="form-control bg-light border-0" placeholder="Your Name"
                                        style="height: 55px;">
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <input type="email" class="form-control bg-light border-0" placeholder="Your Email"
                                        style="height: 55px;">
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <div class="date" id="date" data-target-input="nearest">
                                                    <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                            placeholder="Date" data-target="#date" data-toggle="datetimepicker"
                                            style="height: 55px;">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <div class="time" id="time" data-target-input="nearest">
                                                    <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                            placeholder="Time" data-target="#time" data-toggle="datetimepicker"
                                            style="height: 55px;">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100 py-3" type="button" onclick="location.href='Appointment.aspx'">
                                                    Make An
                                        Appointment
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Appointment End -->


    <!-- Pricing Plan Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Medical Packages</h5>
                            <h1 class="display-4">Awesome Medical Programs</h1>
                        </div>
                        <div class="owl-carousel price-carousel position-relative" style="padding: 0 45px 45px 45px;">
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-1.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Pregnancy Care</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>49<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-2.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Health Checkup</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>99<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-3.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Dental Care</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>149<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-4.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Operation & Surgery</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>199<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Pricing Plan End -->


    <!-- Team Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Our Doctors</h5>
                            <h1 class="display-4">Qualified Healthcare Professionals</h1>
                        </div>
                        <div class="owl-carousel team-carousel position-relative">
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-1.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-2.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-3.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Team End -->


    <!-- Search Start -->
                <div class="container-fluid bg-primary my-5 py-5">
                    <div class="container py-5">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Find A Doctor</h5>
                            <h1 class="display-4 mb-4">Find A Healthcare Professionals</h1>
                            <h5 class="text-white fw-normal">Duo ipsum erat stet dolor sea ut nonumy tempor. Tempor duo lorem eos
                    sit sed ipsum takimata ipsum sit est. Ipsum ea voluptua ipsum sit justo</h5>
                        </div>
                        <div class="mx-auto" style="width: 100%; max-width: 600px;">
                            <div class="input-group">
                                <select class="form-select border-primary w-25" style="height: 60px;">
                                    <option selected>Department</option>
                                    <option value="1">Department 1</option>
                                    <option value="2">Department 2</option>
                                    <option value="3">Department 3</option>
                                </select>
                                <input type="text" class="form-control border-primary w-50" placeholder="Keyword">
                                <button class="btn btn-dark border-0 w-25" type="button" onclick="location.href='Find%20Doctor.aspx'">
                                    Search
                                </button>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Search End -->


    <!-- Testimonial Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Testimonial</h5>
                            <h1 class="display-4">Patients Say About Our Services</h1>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="owl-carousel testimonial-carousel">
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-1.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-2.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-3.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Testimonial End -->


    <!-- Blog Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Blog Post</h5>
                            <h1 class="display-4">Our Latest Medical Blog Posts</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-3.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Blog End -->
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <title>MEDINOVA - Hospital Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid py-2 border-bottom d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-decoration-none text-body pe-3" href="#!"><i
                                class="bi bi-telephone me-2"></i>+012
                            345 6789</a> <span class="text-body">|</span> <a class="text-decoration-none text-body px-3" href="#!"><i
                                class="bi bi-envelope me-2"></i>info@example.com</a>
                        </div>
                    </div>
                    <div class="col-md-6 text-center text-lg-end">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-body px-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-twitter"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-linkedin-in"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-instagram"></i></a><a class="text-body ps-2" href="#!"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
                    <div class="container-fluid sticky-top bg-white shadow-sm">
                        <div class="container">
                            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
                                <a href="Index.aspx" class="navbar-brand">
                                    <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i>Medinova</h1>
                                </a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarCollapse">
                                    <div class="navbar-nav ms-auto py-0">
                                        <a href="Index.aspx" class="nav-item nav-link">Home</a>
                                        <a href="About.aspx" class="nav-item nav-link">About</a>
                                        <a href="Services.aspx" class="nav-item nav-link">Service</a>
                                        <a href="Pricing.aspx" class="nav-item nav-link">Pricing</a>
                                        <div class="nav-item dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                            <div class="dropdown-menu m-0">
                                                <a href="Blog.aspx" class="dropdown-item">Blog Grid</a>
                                                <a href="Detail.aspx" class="dropdown-item">Blog Detail</a>
                                                <a href="Team.aspx" class="dropdown-item">The Team</a>
                                                <a href="Testimonial.aspx" class="dropdown-item">Testimonial</a>
                                                <a href="Appointment.aspx" class="dropdown-item">Appointment</a>
                                                <a href="Search.aspx" class="dropdown-item">Search</a>
                                            </div>
                                        </div>
                                        <a href="Appointment.aspx" class="nav-item nav-link">Appointment</a>
                                        <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <script>
                        var pageName = location.pathname.split("/").pop().toLowerCase();
                        if (pageName == "") { pageName = "index.aspx"; }
                        var navLinks = document.querySelectorAll("#navbarCollapse a");
                        for (var n = 0; n < navLinks.length; n++) {
                            if (navLinks[n].getAttribute("href").toLowerCase() == pageName) {
                                navLinks[n].classList.add("active");
                                if (navLinks[n].classList.contains("dropdown-item")) {
                                    navLinks[n].parentNode.parentNode.querySelector(".dropdown-toggle").classList.add("active");
                                }
                            }
                        }
                    </script>
    <!-- Navbar End -->--%>


   <%-- <!-- Hero Start -->
    <div class="container-fluid hero-section">

        <div class="container">
            <div class="row align-items-center">

                <div class="col-lg-7 hero-content">

                    <h5>WELCOME TO MEDINOVA</h5>

                    <h1>Best Healthcare<br />

                        Solution In Your City
                    </h1>

                    <div class="hero-buttons">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Find Doctor" Width="120px"  CssClass="auth-btn" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Appointment" Width="120px"  CssClass="auth-btn" />
                    </div>

                </div>

            </div>
        </div>

    </div>
    <!-- Hero End -->--%>




    <%-- <!-- Hero Start -->
                <div class="container-fluid bg-primary py-5 mb-5 hero-header">
                    <div class="container py-5">
                        <div class="row justify-content-start">
                            <div class="col-lg-8 text-center text-lg-start">
                                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"
                        style="border-color: rgba(256, 256, 256, .3) !important;">Welcome To Medinova</h5>
                                <h1 class="display-1 text-white mb-md-4">Best Healthcare Solution In Your City</h1>
                                <div class="pt-2">
                                    <a href="#!" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2">Find Doctor</a> <a href="#!" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2">Appointment</a>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Hero End -->


    <!-- About Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="row gx-5">
                            <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                                <div class="position-relative h-100">
                                    <img class="position-absolute w-100 h-100 rounded" src="img/about.jpg"
                            style="object-fit: cover;">
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="mb-4">
                                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">About Us</h5>
                                    <h1 class="display-4">Best Medical Care For Yourself and Your Family</h1>
                                </div>
                                <p>
                                    Tempor erat elitr at rebum at at clita aliquyam consetetur. Diam dolor diam ipsum et, tempor
                        voluptua sit consetetur sit. Aliquyam diam amet diam et eos sadipscing labore. Clita erat ipsum
                        et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor consetetur
                        takimata eirmod, dolores takimata consetetur invidunt magna dolores aliquyam dolores dolore.
                        Amet erat amet et magna</p>
                                <div class="row g-3 pt-3">
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                            <h6 class="mb-0">Qualified<small class="d-block text-primary">Doctors</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                            <h6 class="mb-0">Emergency<small class="d-block text-primary">Services</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                            <h6 class="mb-0">Accurate<small class="d-block text-primary">Testing</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-6">
                                        <div class="bg-light text-center rounded-circle py-4">
                                            <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                            <h6 class="mb-0">Free<small class="d-block text-primary">Ambulance</small></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- About End -->


    <!-- Services Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Services</h5>
                            <h1 class="display-4">Excellent Medical Services</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-user-md text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Emergency Care</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-procedures text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Operation & Surgery</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-stethoscope text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Outdoor Checkup</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-ambulance text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Ambulance Service</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-pills text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Medicine & Pharmacy</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div
                        class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="service-icon mb-4">
                                        <i class="fa fa-2x fa-microscope text-white"></i>
                                    </div>
                                    <h4 class="mb-3">Blood Testing</h4>
                                    <p class="m-0">
                                        Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo
                            elitr dolor amet sit</p>
                                    <a class="btn btn-lg btn-primary rounded-pill" href="#!"><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Services End -->


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
                        Sea dolore sanctus sed et. Takimata takimata sanctus sed.</p>
                                <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="#!">Find Doctor</a> <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="#!">Read More</a>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-white text-center rounded p-5">
                                    <h1 class="mb-4">Book An Appointment</h1>
                                    <form>
                                        <div class="row g-3">
                                            <div class="col-12 col-sm-6">
                                                <select class="form-select bg-light border-0" style="height: 55px;">
                                                    <option selected>Choose Department</option>
                                                    <option value="1">Department 1</option>
                                                    <option value="2">Department 2</option>
                                                    <option value="3">Department 3</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <select class="form-select bg-light border-0" style="height: 55px;">
                                                    <option selected>Select Doctor</option>
                                                    <option value="1">Doctor 1</option>
                                                    <option value="2">Doctor 2</option>
                                                    <option value="3">Doctor 3</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <input type="text" class="form-control bg-light border-0" placeholder="Your Name"
                                        style="height: 55px;">
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <input type="email" class="form-control bg-light border-0" placeholder="Your Email"
                                        style="height: 55px;">
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <div class="date" id="date" data-target-input="nearest">
                                                    <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                            placeholder="Date" data-target="#date" data-toggle="datetimepicker"
                                            style="height: 55px;">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <div class="time" id="time" data-target-input="nearest">
                                                    <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                            placeholder="Time" data-target="#time" data-toggle="datetimepicker"
                                            style="height: 55px;">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100 py-3" type="submit">
                                                    Make An
                                        Appointment
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Appointment End -->


    <!-- Pricing Plan Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Medical Packages</h5>
                            <h1 class="display-4">Awesome Medical Programs</h1>
                        </div>
                        <div class="owl-carousel price-carousel position-relative" style="padding: 0 45px 45px 45px;">
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-1.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Pregnancy Care</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>49<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-2.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Health Checkup</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>99<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-3.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Dental Care</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>149<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                            <div class="bg-light rounded text-center">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-4.jpg" alt="">
                                    <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                            style="background: rgba(29, 42, 77, .8);">
                                        <h3 class="text-white">Operation & Surgery</h3>
                                        <h1 class="display-4 text-white mb-0"><small class="align-top fw-normal"
                                    style="font-size: 22px; line-height: 45px;">$</small>199<small
                                    class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/
                                    Year</small> </h1>
                                    </div>
                                </div>
                                <div class="text-center py-5">
                                    <p>
                                        Emergency Medical Treatment</p>
                                    <p>
                                        Highly Experienced Doctors</p>
                                    <p>
                                        Highest Success Rate</p>
                                    <p>
                                        Telephone Service</p>
                                    <a href="#!" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Pricing Plan End -->


    <!-- Team Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Our Doctors</h5>
                            <h1 class="display-4">Qualified Healthcare Professionals</h1>
                        </div>
                        <div class="owl-carousel team-carousel position-relative">
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-1.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-2.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="team-item">
                                <div class="row g-0 bg-light rounded overflow-hidden">
                                    <div class="col-12 col-sm-5 h-100">
                                        <img class="img-fluid h-100" src="img/team-3.jpg" style="object-fit: cover;">
                                    </div>
                                    <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                        <div class="mt-auto p-4">
                                            <h3>Doctor Name</h3>
                                            <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                            <p class="m-0">
                                                Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum
                                    dolor</p>
                                        </div>
                                        <div class="d-flex mt-auto border-top p-4">
                                            <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-twitter"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#!"><i
                                        class="fab fa-facebook-f"></i></a><a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#!"><i
                                        class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Team End -->


    <!-- Search Start -->
                <div class="container-fluid bg-primary my-5 py-5">
                    <div class="container py-5">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Find A Doctor</h5>
                            <h1 class="display-4 mb-4">Find A Healthcare Professionals</h1>
                            <h5 class="text-white fw-normal">Duo ipsum erat stet dolor sea ut nonumy tempor. Tempor duo lorem eos
                    sit sed ipsum takimata ipsum sit est. Ipsum ea voluptua ipsum sit justo</h5>
                        </div>
                        <div class="mx-auto" style="width: 100%; max-width: 600px;">
                            <div class="input-group">
                                <select class="form-select border-primary w-25" style="height: 60px;">
                                    <option selected>Department</option>
                                    <option value="1">Department 1</option>
                                    <option value="2">Department 2</option>
                                    <option value="3">Department 3</option>
                                </select>
                                <input type="text" class="form-control border-primary w-50" placeholder="Keyword">
                                <button class="btn btn-dark border-0 w-25">
                                    Search
                                </button>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Search End -->


    <!-- Testimonial Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Testimonial</h5>
                            <h1 class="display-4">Patients Say About Our Services</h1>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="owl-carousel testimonial-carousel">
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-1.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-2.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                    <div class="testimonial-item text-center">
                                        <div class="position-relative mb-5">
                                            <img class="img-fluid rounded-circle mx-auto" src="img/testimonial-3.jpg" alt="">
                                            <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                                    style="width: 60px; height: 60px;">
                                                <i class="fa fa-quote-left fa-2x text-primary"></i>
                                            </div>
                                        </div>
                                        <p class="fs-4 fw-normal">
                                            Dolores sed duo clita tempor justo dolor et stet lorem kasd labore
                                dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor
                                erat. Erat dolor rebum sit ipsum.</p>
                                        <hr class="w-25 mx-auto">
                                        <h3>Patient Name</h3>
                                        <h6 class="fw-normal text-primary mb-3">Profession</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Testimonial End -->


    <!-- Blog Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Blog Post</h5>
                            <h1 class="display-4">Our Latest Medical Blog Posts</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6">
                                <div class="bg-light rounded overflow-hidden">
                                    <img class="img-fluid w-100" src="img/blog-3.jpg" alt="">
                                    <div class="p-4">
                                        <a class="h3 d-block mb-3" href="#!">Dolor clita vero elitr sea stet dolor justo diam</a>
                                        <p class="m-0">
                                            Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                                    </div>
                                    <div class="d-flex justify-content-between border-top p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt=""> <small>John Doe</small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small> <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <!-- Blog End -->--%>
</asp:Content>

<%--<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <title>MEDINOVA - Hospital Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid py-2 border-bottom d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-decoration-none text-body pe-3" href="#!"><i
                                class="bi bi-telephone me-2"></i>+012
                            345 6789</a> <span class="text-body">|</span> <a class="text-decoration-none text-body px-3" href="#!"><i
                                class="bi bi-envelope me-2"></i>info@example.com</a>
                        </div>
                    </div>
                    <div class="col-md-6 text-center text-lg-end">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-body px-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-twitter"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-linkedin-in"></i></a><a class="text-body px-2" href="#!"><i class="fab fa-instagram"></i></a><a class="text-body ps-2" href="#!"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
                    <div class="container-fluid sticky-top bg-white shadow-sm">
                        <div class="container">
                            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
                                <a href="Index.aspx" class="navbar-brand">
                                    <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i>Medinova</h1>
                                </a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarCollapse">
                                    <div class="navbar-nav ms-auto py-0">
                                        <a href="Index.aspx" class="nav-item nav-link">Home</a>
                                        <a href="About.aspx" class="nav-item nav-link">About</a>
                                        <a href="Services.aspx" class="nav-item nav-link">Service</a>
                                        <a href="Pricing.aspx" class="nav-item nav-link">Pricing</a>
                                        <div class="nav-item dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                            <div class="dropdown-menu m-0">
                                                <a href="Blog.aspx" class="dropdown-item">Blog Grid</a>
                                                <a href="Detail.aspx" class="dropdown-item">Blog Detail</a>
                                                <a href="Team.aspx" class="dropdown-item">The Team</a>
                                                <a href="Testimonial.aspx" class="dropdown-item">Testimonial</a>
                                                <a href="Appointment.aspx" class="dropdown-item">Appointment</a>
                                                <a href="Search.aspx" class="dropdown-item">Search</a>
                                            </div>
                                        </div>
                                        <a href="Appointment.aspx" class="nav-item nav-link">Appointment</a>
                                        <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <script>
                        var pageName = location.pathname.split("/").pop().toLowerCase();
                        if (pageName == "") { pageName = "index.aspx"; }
                        var navLinks = document.querySelectorAll("#navbarCollapse a");
                        for (var n = 0; n < navLinks.length; n++) {
                            if (navLinks[n].getAttribute("href").toLowerCase() == pageName) {
                                navLinks[n].classList.add("active");
                                if (navLinks[n].classList.contains("dropdown-item")) {
                                    navLinks[n].parentNode.parentNode.querySelector(".dropdown-toggle").classList.add("active");
                                }
                            }
                        }
                    </script>
    <!-- Navbar End -->
</asp:Content>
--%>

