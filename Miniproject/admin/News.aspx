<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Miniproject.admin.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> admin News</title>
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
       <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="../js/custom.js"></script>
    <script src="../js/news.js"></script>

  
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
                    <h1 style="text-align: center; background: linear-gradient( blue,white,gray); font-size:30px; min-height:70px; font-weight:bold; text-shadow:2px 3px 4px blue;">
                        Admin Panel &emsp; &emsp;&emsp; &emsp; 
                                           <a href="AdminProfile.aspx"> <img src="../images/user.png" style="min-height:30px; width:60px;"/></a>
                                           <a href="Dashborad.aspx?action=logout"><img src="../images/switch.png" style="min-height:30px; width:55px;"/></a>
                    </h1>
                    <br />
                          <!--add modal-->
                    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Add News
</button><br /><br />
        <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered" style="border:1px solid black;" id="myTable">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Photo</th>
                                    <th>IMAGE</th>
                                   
                                     <th>STATUS </th>
                                     <th>Datetime</th>
                                    <th>Delete</th>

                                </tr>
                                    </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="newsrepeater">
                                        <ItemTemplate>

                                            <tr>
                                                <td><%# Eval("id") %></td>
                                            <td><img src='../uploads/<%# Eval("photo") %>' style="height:100px;" /></td>      
                                                <td><%# Eval("description") %></td>
                                                <td><%# Eval("status") %></td>
                                                <td><%# Eval("datetime") %></td>
                                               <td><a href="#" onclick='deletenews(<%# Eval("id") %>)' class="btn btn-outline-info">Delete</a></td>


                                            </tr>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                </tbody>
                            </table>
                        </div>
                    </div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Add New News</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <asp:FileUpload runat="server" ID="photo" CssClass="form-control" ></asp:FileUpload><br />
          <asp:TextBox runat="server" ID="desc1" CssClass="form-control" TextMode="MultiLine" placeholder="Description"></asp:TextBox><br />
          <asp:Button ID="newsadd1" runat="server" OnClick="newsadd1_Click" Text="Add news" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
                    <!--end modal-->
          
                   

                </div>
            </div>
        </div>
    </form>
</body>
</html>