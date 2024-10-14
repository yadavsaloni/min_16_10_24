<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Miniproject.user.user_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> profile pages</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="../js/custom.js"></script>

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
        .profilepic {
            width:120px;
            height:120px;
            margin:20px;
            border:5px dotted gray;
            border-radius:50%;
            position:relative;

        }
        .pic
        {
            width:110px;
            height:110px;
            border-radius:50%;
        }
        .uploadicon {
            width:30px;
            height:30px;
            position: absolute;
            right:0px;
            bottom:0px;
            cursor:pointer;
            border:2px solid lime;

        }
        #cardrepeater_profile_0 {
            display:none;
        }
        #cardrepeater_btnpicupload_0 {
            display:none;
        }
        .removeicon {
            width:20px;
            height:20px;
            left:0px;
            bottom:0px;
            position:absolute;
            cursor:pointer;
        }


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container cg1">

    <div class="row" style="border-right-bottom-top:2px solid; height:570px;">
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
      <a class="nav-link fs-5 text-dark" href="userprofile.aspx?action=logout">logout</a>

  </li><hr />
</ul>

            <!--try navbar-->      

        </div>
        <div class="col-sm-9">
      <h1 style="text-align:center;background-image: linear-gradient( gray,white, blue);"><marquee  behavior="alternate" direction="right"><p style="text-shadow:2px 3px 4px white;">My Profile</p></marquee></h1>
            <br />
            <!--try card-->
            <asp:Repeater runat="server" ID="cardrepeater">

            <ItemTemplate>
                          
            <div class="card p-3  m-5" style="max-width: 540px; box-shadow:2px 5px gray; background-color:#D5D6EA">
     
  <div class="row g-0">
    <div class="col-md-4">
        <div class="profilepic">

      <img src='../uploads<%#Eval("photo") %>' class="pic">
            <img src="../images/camera1.jpg"  class="uploadicon" id="uploadicon"/>
            <img src="../images/remove.png" class="removeicon"/>
            <asp:FileUpload  runat="server" ID="profile" onchange="uploadpic(this)" />
            <asp:Button  runat="server" ID="btnpicupload" Text="upload pic" OnClick="btnpicupload_Click"/>
    </div>
        </div>
    <div class="col-md-8">
      <div class="card-body" style="background-color:#F8F8FF">
          
      <p class="card-text">Name: <%# Eval("name") %></p>
       <p class="card-text">Email:  <%# Eval("email") %></p>
       <p class="card-text">Gender:  <%# Eval("gender") %></p>
                 <p class="card-text">Mobile No: <%# Eval("mobile") %></p>


        
      </div>
    </div>
  </div>
                    </ItemTemplate>
            </asp:Repeater>

</div>
            <!--end card-->
        </div>
      

    
    </div>
          
    </form>
</body>
</html>
