<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="MAdmin.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MASS Portal | Anasayfa</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <%--<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">--%>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">

    <!-- Custom styles for this template-->
<%--    <link href="css/sb-admin-2.min.css" rel="stylesheet">--%>
    <link href="css/sb-admin-2.css" rel="stylesheet" />
</head>
<body class="giris">
    <form id="form1" runat="server">
        <div>
              <div>


             <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <%--<div class="col-xl-10 col-lg-12 col-md-9">--%><div>

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body-giris p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                           <%-- <div class="col-lg-6 welcome"></div>--%>
                            <%--<div class="col-lg-6">--%> <div>
                                <div class="p-5">
                                    <div class="text-center">
                                        <img class="logo" src="img/logo.png" alt="">
                                    </div>
                                     <hr>
                                    <form class="user">
                                        <div class="form-group"  runat="server">

                                <asp:TextBox ID="txt_kod" type="text" class="form-control  " runat="server" placeholder="Kullanıcı Kodu"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txt_parola" type="password" class="form-control" runat="server" placeholder="Parola"></asp:TextBox>
                                        </div>


                          <asp:Button ID="btn_giris" runat="server" class="btn btn-primary btn-user btn-block" Text="Giriş Yap" OnClick="btn_giris_Click"  />  
                                        
                                    </form>

  
                                    <hr>
                                   
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
                           
        </div>
        <div runat="server" id="theDiv">
<div class="alert alert-warning alert-dismissible fade show">
<%--    <center><button type="button" class="close" data-dismiss="alert">&times</button>--%>
<asp:Button ID="Btn_kapat" runat="server" class="close"  Text="x" OnClick="Btn_kapat_Click"></asp:Button>
    <center><strong>Kullanıcı adı veya parolanız hatalı!</strong> </center>
  </div> </div>
        </div>
    </form>
</body>
</html>
