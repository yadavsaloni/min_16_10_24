<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Miniproject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.bundle.js"></script>
    <script src="https://kit.fontawesome.com/ab6e5cf3d9.js" crossorigin="anonymous"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        #rc1 {
            min-height: 70px;
            width:230px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
     <div class="row" style="background-color:#98AFC7;">
           <div class="col-sm-3">
                <img src="images/icondigi.png" id="rc1" />
            </div>
            <div class="col-sm-3"></div>
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

                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="user/userprofile.aspx">users</a>
                                </li> 


                            </ul>                          
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!--end menu-->
        <!--start slider-->
        <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
      <asp:Repeater ID="sliderbutton" runat="server">
          <ItemTemplate>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to='<%# Container.ItemIndex %>' class='<%# Container.ItemIndex==0?"active":"" %>'></button>
              </ItemTemplate>
    </asp:Repeater>
  </div>
  <div class="carousel-inner">
   
      
 <asp:Repeater  runat="server" ID="sliderrepeater">
     <ItemTemplate>
          <div class="carousel-item active">
      <img src='uploads/<%#Eval("photoname") %>' style="background-size:cover; background-repeat:no-repeat; height:500px; width:100%;" class="d-block w-100" alt="...">
 
    </div>
     </ItemTemplate>

 </asp:Repeater>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        <!--end slider-->
        <div class="row" style="background: linear-gradient( gray,white,blue); height:400px;">
            <div class="col-sm-6">
                <marquee  direction="up">
                   
                    <asp:Repeater runat="server" ID="newsrepeater">
                        <ItemTemplate>
                            
                            <div class="card mb-3 w-100">
  <div class="row g-0">
    <div class="col-md-4">
      <img  src ='uploads/<%# Eval("photo") %>'  class="img-fluid rounded-start" alt=" "/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        
        <p class="card-text">
            <%#  Eval("description") %>
        </p>
      </div>
    </div>
  </div>
</div>

                        </ItemTemplate>

                    </asp:Repeater>

                <!--end card-->
                    </marquee>
            </div>
               <div class="col-sm-6">
                   <!-- start card-->
                   <div class="card mb-3"> 
<div class="card">
  <img src="images/futuregif.gif" class="card-img-bottom" alt="..."/>
</div>

                   <!--end card-->

               </div>

            </div>
        <!--footer start-->
         <!-- start footer-->
        <div class="row " style="height: 300px; box-shadow: 5px 2px 4px gray; background-color:#98AFC7;">
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
