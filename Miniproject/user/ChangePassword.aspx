<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Miniproject.user.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
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
         .cg2 {
            background-image:url('../images/secondpicdef.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
     .btn {
         height:40px;
         width:120px;
         color:white;
         border:1px solid white;
        
     } 
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container cg2">

    <div class="row" style="border-right-bottom:2px solid; height:570px;">
        <div class="col-sm-3" style="border:2px solid; box-shadow:2px 5px 5px gray;">
                <img src="../images/icondigi.png" id="rc1" />
            <!--try navbar-->
              <ul class="nav flex-column">
  <li class="nav-item">
    <a class="nav-link active fs-5 text-dark" aria-current="page" href="userprofile.aspx">My profile</a>
  </li><hr />
  <li class="nav-item">
    <a class="nav-link fs-5 text-dark" href="Editprofile.aspx">Edit Profile</a>
  </li><hr />
  <li class="nav-item">
    <a class="nav-link fs-5 text-dark" href="ChangePassword.aspx">Change Password</a>
  </li><hr />
  <li class="nav-item">
      <a class="nav-link fs-5 text-dark" href="userprofile.aspx?action=logout">Logout</a>

  </li><hr />
</ul>

            <!--try navbar-->   

            <!--try navbar-->   
            <!--try navbar-->      

        </div>
        <div class="col-sm-9">
      <h1 style="text-align:center;background-image: linear-gradient( white,gray,skyblue );"><marquee  behavior="alternate" direction="right"><p style="text-shadow:2px 3px 4px white;">Change Password</p></marquee></h1>
            <br />
            <!--try card-->
            <div class="card p-3  m-5" style="max-width: 540px; box-shadow:2px 5px; background-color:#D5D6EA">
  <div class="row g-0">
    
    <div class="col-md-12">
      <div class="card-body">
          <center>
        <h5 class="card-text" style="text-shadow:2px 3px 4px white; font-size:24px;"> Edit Profile Form</h5><b />
              </center>
      <asp:TextBox runat="server" ID="op" placeholder="Enter Your Old Password" TextMode="Password" CssClass="form-control" ></asp:TextBox>
          <br />
       <asp:TextBox runat="server" ID="np" placeholder="Enter Your New Password" TextMode="Password" CssClass="form-control" ></asp:TextBox>
          <br />
       <asp:TextBox runat="server" ID="cnp" placeholder="Enter Your confirm Password" TextMode="Password" CssClass="form-control" ></asp:TextBox>
          <br />
          <asp:Button runat="server" ID="btn3" Text="Save" OnClick="btn3_Click" CssClass="bg-primary btn"></asp:Button>

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