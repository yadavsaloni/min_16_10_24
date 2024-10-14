<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Miniproject.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link  href="css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
     #rc1 {
            min-height: 70px;
            width: 270px;
        }

        .bg1 {
            background-image:url('images/stucs.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="col-sm-3">
                <img src="images/icondigi.png" id="rc1" />
            </div>
            <div class="col-sm-4"></div>
            <div class="col-sm-5">
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
                                            <hr class="dropdown-divider">
                                        </li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li>

                            </ul>
                           
                        </div>
                    </div>
                </nav></div>
            
     
           
<!--end menu-->
        <div class="container-fluid bg">
            <div class="row" style="height: 500px;">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 pt-3">
                    <div class="card">
                        <div class="card-header">
                            <marquee behavior="alternate">

                       <p style="text-shadow:2px 3px 4px black;"> Forget password Form</p>
                            </marquee>

                        </div>
                        <div class="card-body p-2 f2" style="box-shadow: 2px 5px 4px gray;">
                            Enter Your Email
                 <div>
                     <asp:TextBox runat="server" ID="email" CssClass="form-control"></asp:TextBox>
                    
                 </div>
                            <br /><br />
                            <!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
                            <asp:Button ID="btn10" runat="server" CssClass="btn btn-success" OnClick="btn10_Click" Text="Verify Email" />
                        </div>
                        <br /><br />
                    
                    </div>
                    <div class="col-sm-3"></div>
                </div>
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
