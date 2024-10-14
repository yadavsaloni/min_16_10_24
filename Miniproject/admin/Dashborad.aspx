<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashborad.aspx.cs" Inherits="Miniproject.admin.Dashborad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Admin Dashbord</title>
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
    
         #rc1 {
            min-height: 70px;
            width:200px;
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
                            <a class="nav-link active  text-dark" aria-current="page" href="Dashborad.aspx" style="box-shadow: 2px 4px gray;">Dashboard</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="users.aspx" style="box-shadow: 2px 4px gray;">Users</a>
                        </li>
                        <hr />

                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="sliders.aspx" style="box-shadow: 2px 4px gray;">Sliders</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="News.aspx" style="box-shadow: 2px 4px gray;">News</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="AdminProfile.aspx" style="box-shadow: 2px 4px gray;">Admin Profile</a>
                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="EditAdminProfile.aspx" style="box-shadow: 2px 4px gray;">Edit admin profile</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="AdminChangePassword.aspx" style="box-shadow: 2px 4px gray;">Change password</a>

                        </li>
                        <hr />
                        <li class="nav-item">
                            <a class="nav-link  text-dark" href="Dashborad.aspx?action=logout" style="box-shadow: 2px 4px gray;">Logout</a>

                        </li>
                        <hr />
                    </ul>
                    <!--try navbar-->

                </div>
                <div class="col-sm-9">
                    <h1 style="text-align: center; background: linear-gradient( blue,white,gray); font-size:30px; min-height:70px; font-weight:bold; text-shadow:2px 3px 4px blue;">
                        Admin Panel &emsp; &emsp;&emsp; &emsp; 
                                           <a href="AdminProfile.aspx"> <img src="../images/user.png" style="min-height:30px; width:60px;"/></a>
                                           <a href="Dashborad.aspx?action=logout"><img src="../images/switch.png" style="min-height:30px; width:55px;"/></a>
                    </h1>
                    <br />

                    <div class="row">
                        <div class="col-sm-4">
                            <a href="sliders.aspx">
                            <!--start card-->
                            <div class="card text-bg-primary mb-3" style="max-width: 18rem;">
                                <div class="card-header">Slider 1</div>
                                <div class="card-body">
                                    <h2 class="card-title"><asp:Label runat="server" ID="slidercount"></asp:Label></h2>
                           
                                </div>
                            </div>
                                </a>
                            <!--end card-->
                        </div>
                        <div class="col-sm-4">
                            <a href="users.aspx">
                            <div class="card text-bg-warning mb-3" style="max-width: 18rem;">
                                <div class="card-header">Users</div>
                                <div class="card-body">
                                  <h2 class="card-title"><asp:Label runat="server" ID="userscount"></asp:Label></h2>

                                </div>
                            </div>
                                </a>
                            <!--end card-->
                        </div>
                        <div class="col-sm-4">
                            <a href="News.aspx">
                            <div class="card text-bg-secondary mb-3" style="max-width: 18rem;">
                                <div class="card-header">News</div>
                                <div class="card-body">
                                 <h2 class="card-title"><asp:Label runat="server" ID="newscount"></asp:Label></h2>

                                </div>
                            </div>
                                </a>
                            <!--end card-->
                        </div>

                    </div>
                </div>
                
                
               
                
               
        




            </div>
        </div>
    </form>
</body>
</html>