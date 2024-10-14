<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Miniproject.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration page</title>
     <link  href="css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <script src="js/custom.js"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        #rc1 {
            min-height: 70px;
            width: 270px;
        }
        .bg {
            background-image:url('images/regipic2.jpg');
            background-repeat:no-repeat;
            background-size:cover;
            
        }
        .btn {
            width:120px;
        }

    </style>
</head>
<body>
    <form id="form1"  runat="server">
        <!--start menu-->
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
                                            <hr class="dropdown-divider">
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

        <div class="container-fluid bg">
            <div class="row rc1">
            </div>
            <br />

            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <center>
       <u> <h2>Registration form</h2></u>
                    </center>
                    <p>Enter Name:</p>
                    <asp:TextBox runat="server" ID="T1" CssClass="form-control" placeholder="Enter your Name"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="T1" ForeColor="Red"></asp:RequiredFieldValidator>


                    <p>Enter Email:</p>
                    <asp:TextBox runat="server" ID="T2" CssClass="form-control" TextMode="Email" placeholder="Enter your Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="emailValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="T2" ForeColor="Red"></asp:RequiredFieldValidator>


                    <p>Enter Mob:</p>
                    <asp:TextBox runat="server" ID="T3" CssClass="form-control" TextMode="Number" placeholder="Enter your mob"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="MobValidator1" runat="server" ErrorMessage="Mob is required" ControlToValidate="T3" ForeColor="Red"></asp:RequiredFieldValidator>

                    <p>Gender</p>
                    <asp:RadioButtonList runat="server" ID="radio1">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <p>Password</p>
                    <asp:TextBox runat="server" ID="T5" CssClass="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="passwordValidator1" runat="server" ErrorMessage="Password is required" ControlToValidate="T5" ForeColor="Red"></asp:RequiredFieldValidator>


                    <p>Upload Photo:</p>
                    <asp:FileUpload runat="server" ID="f1" /><br />
                     <asp:RequiredFieldValidator ID="photoValidation" runat="server" ErrorMessage="upload photo is required" ControlToValidate="f1" ForeColor="Red"></asp:RequiredFieldValidator>
                    <input  type="checkbox" required="required" />I agree to terms and conditions

                    <center>
            <asp:Button runat="server" ID="btn" Text="Register" OnClick="btn_Click" CssClass="bg-success text-bg-light btn"/>
                    </center>
                </div>

                <div class="col-sm-3"></div> 
            </div>
        </div>

    </form>
</body>
</html>
