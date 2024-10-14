<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminChangePassword.aspx.cs" Inherits="Miniproject.admin.AdminChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            background-image:url('../images/profpic2.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
        .btn {
            min-height:50px;
            width:120px;
            border:1px solid white;
            font-size:20px;
           
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
                    <h1 style="text-align: center; background-image: linear-gradient( lightblue,white,gray);">
                        <marquee behavior="alternate" direction="right"><p style="text-shadow:2px 3px 4px white;">Admin Panel</p></marquee>
                    </h1>
                    <br />
                    <!--try card-->
                    <div class="card p-3  m-5" style="max-width: 540px; box-shadow: 2px 5px white; background-color: #E5E4E2">
                        <div class="row g-0">
                            
                            <div class="col-md-12">
                                <div class="card-body" style="background-color: #F8F8FF">
                                    <asp:TextBox runat="server" ID="op1" placeholder=" Enter old password" TextMode="Password" CssClass="form-control"></asp:TextBox><br />
                                    <asp:TextBox runat="server" ID="np1" placeholder="Enter New password" TextMode="Password" CssClass="form-control"></asp:TextBox><br />
                                     <asp:TextBox runat="server" ID="cp1" placeholder="Please Enter confirm Password" TextMode="Password" CssClass="form-control"></asp:TextBox><b />
                                    <br />
                                    <asp:Button  ID="changepass" runat="server" OnClick="changepass_Click"  Text="Change" CssClass="btn btn-primary"/>



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