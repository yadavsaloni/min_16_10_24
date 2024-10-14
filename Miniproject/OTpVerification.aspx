<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTpVerification.aspx.cs" Inherits="Miniproject.OTpVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OTP Verification</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.css"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        #rc1 {
            min-height: 70px;
            width: 270px;
        }

        .bg2 {
            background-image:url('images/stucs.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="background-color:#EAF2F8">
            <div class="col-sm-3">
                <img src="images/icondigi.png" id="rc1" />
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-8">
                <!--start menu-->
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="Default.aspx">Home</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="Registration.aspx">Registration</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="admin/Dashborad.aspx">Admin</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li>
                                            <hr class="dropdown-divider"/>
                                        </li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li>

                            </ul>
                           
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <!--end menu-->
        <div class="container-fluid bg2">
            <div class="row" style="height: 500px;">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 p-3 mt-5">
                    <div class="card" style="box-shadow: 2px 5px 4px gray;">
                        <div class="card-header" style="background-color:gray;">
                            <marquee behavior="alternate">

                       <p style="text-shadow:2px 3px 4px blue; font-size:25px;"> OTP Varification</p>
                            </marquee>

                        </div>
                        <div class="card-body f2" >
                            Enter your OTP
                 <div>
                     <asp:TextBox runat="server" ID="Txtotp1" CssClass="form-control w-25 float-start"></asp:TextBox>
                     <asp:TextBox runat="server" ID="Txtotp2" CssClass="form-control w-25 float-start"></asp:TextBox>
                     <asp:TextBox runat="server" ID="Txtotp3" CssClass="form-control  w-25 float-start"></asp:TextBox>
                     <asp:TextBox runat="server" ID="Txtotp4" CssClass="form-control w-25 float-start"></asp:TextBox>

                 </div>
                            <br /><br />
                            <!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
                            <asp:Button ID="btn4" runat="server" CssClass="btn btn-primary" OnClick="btn4_Click" Text="Verify OTP" />
                        </div>
                        <br />
                        <asp:LinkButton ID="btn5" runat="server"  OnClick="btn5_Click" Style="height: 40px;">Resend OTP</asp:LinkButton>
                    </div>
                    <div class="col-sm-3"></div>
                </div>//
            </div>
        </div>
        <!-- start footer-->
        <div class="row bg-primary " style="height: 300px; box-shadow: 5px 2px 4px gray;">
            <div class="col-sm-4">
                <h3 class="text-light">About us project
                    
                </h3>
                <p class="justify-content-center">
                    ASP.NET web forms contain various web pages and GUI 
                    applications such as text box, data grid, label, checkbox,
                     hyperlink, etc. It provides flexibility to web pages at run time as
                     well as design time. It also provides a feature to write code in a separate
                     file from the controls. In ASP.NET, web pages can present information to users in any browser or device.

                </p>
            </div>
            <div class="col-sm-4 fs-1 text-light">
                <h3 class="text-light">Social media</h3>
                <i class="fa-brands fa-instagram"></i>
                <br />
                <i class="fa-brands fa-twitter"></i>
                <br />
                <i class="fa-brands fa-whatsapp"></i>
                <br />
                <i class="fa-brands fa-linkedin"></i>

            </div>
            <div class="col-sm-4 text-light" style="font-family: Calibri;">
                <h3 class="text-light">Subscribe to..</h3>
                <br />
                <i class="fa-solid fa-envelope">&nbsp;saloniy433@gamil.com</i><br />
                <i class="fa-solid fa-phone">&nbsp;6578823498</i><br />
                <i class="fa-solid fa-address-book">&nbsp;Amethi(up)</i><br />
                + <i class="fa-solid fa-user">Welcome..</i><br />
                <textarea placeholder="please enter your any comments " style="border: none;"></textarea>
            </div>

        </div>
        <!--end footer-->
    </form>
</body>
</html>
