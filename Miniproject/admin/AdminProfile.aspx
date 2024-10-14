<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Miniproject.admin.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin profile</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.min.css"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style> 
    
         #rc1 {
            min-height: 70px;
            width:200px;
        }
    .cg1 {
            background-image:url('../images/studgirl.png');
            background-repeat: no-repeat;
            background-size: cover;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container cg1">

            <div class="row" style="border-right-bottom: 2px solid; height: 660px;">
                <div class="col-sm-3" style="border: 2px solid; box-shadow: 5px 3px 2px gray;">
                    <img src="../images/icondigi.png" id="rc1" />
                    <!--try navbar-->
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active  text-dark" aria-current="page" href="Dashborad.aspx"  style="box-shadow:2px 4px gray;">Dashboard</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="users.aspx" style="box-shadow:2px 4px gray;">Users</a>
                        </li>
                        <hr />

                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="sliders.aspx"  style="box-shadow:2px 4px gray;">Sliders</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="News.aspx"  style="box-shadow:2px 4px gray;">News</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="AdminProfile.aspx"  style="box-shadow:2px 4px gray;">Admin Profile</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="EditAdminProfile.aspx"  style="box-shadow:2px 4px gray;">Edit admin profile</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="AdminChangePassword.aspx"  style="box-shadow:2px 4px gray;">Change password</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="Dashborad.aspx?action=logout"  style="box-shadow:2px 4px gray;">Logout</a>

                        </li>
                        <hr />
                    </ul>
                    <!--try navbar-->

                </div>
                <div class="col-sm-9">
                    <h1 style="text-align: center; background-image: linear-gradient( purple,white,gray);">
                        <marquee  direction="right"><p style="text-shadow:2px 3px 4px white;">Admin Panel</p>
                            
                        </marquee>
                    </h1>
                    <br />
                    <!--try card-->
                    <div class="card p-3  m-5" style="max-width: 540px; box-shadow: 2px 5px white; background-color: #E5E4E2">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="../images/welcomepic.gif" style="min-height: 200px; width: 160px;" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body" style="background-color: #F8F8FF">
                                    <u>
                                        <p class="card-text">user name:<asp:Label runat="server" ID="username"></asp:Label></p>
                                    </u>
                                    <br />
                                   
                                    <u>
                                        <p class="card-text">Lastlogin:<asp:Label runat="server" ID="lastlogin"></asp:Label></p>
                                    </u></br>
                                    <u>
                                        <p class="card-text">Lastlogout<asp:Label runat="server" ID="lastlogout"></asp:Label></p>
                                    </u>



                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end card-->
                </div>



            </div>
        </div>
    </form>
</body>
</html>