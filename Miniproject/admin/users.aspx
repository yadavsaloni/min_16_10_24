W<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Miniproject.admin.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>users</title>
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
   <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="../js/custom.js"></script>



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
                        Admin User &emsp; &emsp;&emsp; &emsp; 
                                           <a href="AdminProfile.aspx"> <img src="../images/user.png" style="min-height:30px; width:60px;"/></a>
                                           <a href="Dashborad.aspx?action=logout"><img src="../images/switch.png" style="min-height:30px; width:55px;"/></a>
                    </h1>
                    <br />
                 
                    <div class="row">
                        <div class="col-sm-12 table-responsive">
                            <table  class="table table-bordered" style="border:1px solid black; " id="myTable">
                                <thead>
                                    
                                <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                 <th>EMAIL</th>
                                <th>MOBILE</th>
                                <th>GENDER</th>
                                <th>PHOTO</th>
                                <th>STATUS</th>
                                <th>DATETIME</th>
                                 <th>DELETE</th>
                               

                                    </tr>
                                        
                                    </thead>
                                <tbody>
                                   <asp:Repeater runat="server" ID="usersrepeater">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("id") %> </td>
                                                <td><%#Eval("name") %> </td>
                                                <td><%#Eval("email") %> </td>
                                                <td><%#Eval("mobile") %> </td>
                                                <td><%#Eval("gender") %> </td>
                                            <td><img src='../uploads/<%# Eval("photo") %>' style="height:100px;" /></td>      
                                                <td><%#Eval("status").ToString()=="false"?"Blocked":"Active" %> 
                                                <asp:LinkButton runat="server" ID="statuschange" Text='<%#Eval("status").ToString()=="true"?"Block":"Unblock" %>' OnClick="statuschange_Click" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                                </td>
                                                <td><%#Eval("datetime") %> </td>
                                                <td><a href="#" class="btn btn-danger" onclick="deleteuser('<%#Eval("id") %>')" >Delete</a></td
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>                                            
                            </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

