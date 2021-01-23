<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumuneGonder.aspx.cs" Inherits="MAdmin.NumuneGonder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Mass | Fiyat Teklifleri</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <%--<link href="css/sb-admin-2.min.css" rel="stylesheet">--%>
    <link href="css/sb-admin-2.css" rel="stylesheet" />
</head>
<body id="page-top">
    <form id="form1" runat="server">
        <div>
            
          
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Anasayfa.aspx">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-flask"></i>
                </div>
                <div class="sidebar-brand-text mx-3">MASS Portal</div>
            </a>
           
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
             <br />
            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
            <a class="nav-link" href="Anasayfa.aspx"><i class="fas fa-fw fa-home"></i>
            Anasayfa</a>
            </li>

            <li class="nav-item active">
             <a class="nav-link" href="NumuneGonder.aspx"><i class="fas fa-fw fa-flask"></i> Numune Gönder</a></li>
            
                     
            <li class="nav-item ">                      
             <a class="nav-link" href="Teklif.aspx"> <i class="fas fa-fw fa-envelope-open"></i> Teklifler</a></li>
               

             <li class="nav-item">
             <a class="nav-link" href="Raporlar.aspx"><i class="fas fa-fw fa-university"></i> Raporlar</a></li>
             
            <br />
            
            <br />
                        
            <!-- Sidebar Message -->
            <div class="sidebar-card">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="">
                <p class="text-center mb-2"><strong>MASS Portal</strong> ile talep oluşturabilir, tekliflerinize ve raporlarınıza ulaşabilirsiniz!</p>
                <a class="btn btn-success btn-sm" href="#">Bize Ulaşın !</a>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                  
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">                   
                   

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Label ID="Lbl_ad" runat="server" class="mr-2 d-none d-lg-inline text-gray-600 small" Text="Label"></asp:Label>
                                
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                                 <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Analiz Talep Çizelgesi</h6>
                                </div>
                                <div class="card-body">
                                    <p>Raporlama işleminin sorunsuz gerçekleşmesi için numuneniz ile ilgili aşağıdaki formu doldurmanız gerekmektedir.</p>
                                </div>
                            </div>
             

                          <!-- Collapsable Card1 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample" data-target="#demo">
                                    <h6 class="m-0 font-weight-bold text-primary">Raporlandırılacak Firma Bilgileri</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo">
                                    <div class="card-body">
    <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Firma Adı:</span> </div>  
    <asp:TextBox id="txtarama"  class="form-control"  runat="server" /> </div>

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="TextBox1"  class="form-control"  runat="server" /> </div>

    <div class="input-group mb-3">  
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Yetkili:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span> </div>  
    <asp:TextBox id="TextBox2"  class="form-control"  runat="server" /> </div>
    
     <div class="input-group mb-3">  
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">İletişim:&nbsp;&nbsp;&nbsp;&nbsp; </span> </div>  
    <asp:TextBox id="TextBox3"  class="form-control"  runat="server" /> </div>
                                   


                                    </div>
                                </div>
                            </div>
                    
                    <!-- Collapsable Card1 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample" data-target="#demo7">
                                    <h6 class="m-0 font-weight-bold text-primary">Raporlama Bilgileri</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo7">
                                    <div class="card-body">

                                        <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Karar Kuralı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> </div>
                                    <select class="custom-select" id="inputGroupSelect01">  
                                    <option selected>Seçiniz...</option>
                                    <option value="1">Pozitif Yönde Uygulansın</option>
                                    <option value="2">Negatif Yönde Uygulansın</option>
                                    <option value="3">Belirsizlik Dikkate Alınmasın</option>
                                    </select></div>
                                      
                                        <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Raporlama Dili:</label> </div>
                                    <select class="custom-select" id="inputGroupSelect01">  
                                    <option selected>Seçiniz...</option>
                                    <option value="1">Türkçe</option>
                                    <option value="2">İngilizce</option>
                                    <option value="3">Hem Türkçe Hem İngilizce</option>
                                    </select></div>
                                
                                            <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">İade Numune:&nbsp;&nbsp;&nbsp;</label> </div>
                                    <select class="custom-select" id="inputGroupSelect01">  
                                    <option selected>Seçiniz...</option>
                                    <option value="1">Evet</option>
                                    <option value="2">Hayır</option>
                                    </select></div>

                                            <div class="input-group mb-3">   <div class="input-group-prepend">                   
    <span class="input-group-text" id="basic-addon1">Üretici Firma:&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="TextBox4"  class="form-control"  runat="server" /> </div>

                                        <div class="input-group mb-3"><div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Varsa Notunuz:&nbsp;</span> </div>  
    <asp:TextBox id="TextBox5"  class="form-control"  runat="server" /> </div>

                                    </div>
                                </div>
                            </div>
                    

                          <!-- Collapsable Card2 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Faturalandırılacak Firma Bilgileri</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="collapseCardExample">
                                    <div class="card-body">
                                     
                                           <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Firma Adı:</span> </div>  
    <asp:TextBox id="TextBox6"  class="form-control"  runat="server" /> </div>

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="TextBox7"  class="form-control"  runat="server" /> </div>

   <div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">Vergi Dairesi - Vergi/TC No:</span>
  </div>
  <input type="text" aria-label="Vergi Dairesi" class="form-control">
  <input type="text" aria-label="Last name" class="form-control">
</div>

             <br />                           
     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Muhasebe Mail Adresi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="TextBox8"  class="form-control"  runat="server" /> </div>
                                  
                                    </div>
                                </div>
                            </div>

                         <!-- Collapsable Card3 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" data-target="#demo3"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Numune Bilgileri</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo3">
                                    <div class="card-body">
                                                                                                                        
                                    <div class="input-group"><div class="input-group-prepend"> </div> 
                                      <input type="text" placeholder="Numune Adı" class="form-control">                                        
                                      <input type="text" placeholder="Marka/Model/Artikel Vb." class="form-control">
                                      <input type="text" placeholder="Analiz" class="form-control">
                                      <input type="text" placeholder="Metot" class="form-control">
                                    </div>
                                        <div class="input-group"><div class="input-group-prepend"> </div> 
                                      <input type="text" placeholder="Numune Adı" class="form-control">                                        
                                      <input type="text" placeholder="Marka/Model/Artikel Vb." class="form-control">
                                      <input type="text" placeholder="Analiz" class="form-control">
                                      <input type="text" placeholder="Metot" class="form-control">
                                    </div>
                                        <div class="input-group"><div class="input-group-prepend"> </div> 
                                      <input type="text" placeholder="Numune Adı" class="form-control">                                        
                                      <input type="text" placeholder="Marka/Model/Artikel Vb." class="form-control">
                                      <input type="text" placeholder="Analiz" class="form-control">
                                      <input type="text" placeholder="Metot" class="form-control">
                                    </div>
                                        <div class="input-group"><div class="input-group-prepend"> </div> 
                                      <input type="text" placeholder="Numune Adı" class="form-control">                                        
                                      <input type="text" placeholder="Marka/Model/Artikel Vb." class="form-control">
                                      <input type="text" placeholder="Analiz" class="form-control">
                                      <input type="text" placeholder="Metot" class="form-control">
                                    </div>
                                        <div class="input-group"><div class="input-group-prepend"> </div> 
                                      <input type="text" placeholder="Numune Adı" class="form-control">                                        
                                      <input type="text" placeholder="Marka/Model/Artikel Vb." class="form-control">
                                      <input type="text" placeholder="Analiz" class="form-control">
                                      <input type="text" placeholder="Metot" class="form-control">
                                    </div>

                                    </div>
                                </div>
                            </div>

                       <!-- Collapsable Card3 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" data-target="#demo5"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Numune Gönderim Bilgisi</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo5">
                                    <div class="card-body">
                                               
                                         <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Numune Gönderim Türü:&nbsp;&nbsp;</label> </div>
                                    <select class="custom-select" id="inputGroupSelect01">  
                                    <option selected>Seçiniz...</option>
                                    <option value="1">Kargo</option>
                                    <option value="2">Elden Teslim</option>
                                    </select></div>
                                  
                                         <div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">Kargo Firması - Takip No:&nbsp;</span>
  </div>
  <input type="text" aria-label="Vergi Dairesi" class="form-control">
  <input type="text" aria-label="Last name" class="form-control">
</div>

                                    </div>
                                </div>
                            </div>

                    <!-- Collapsable Card3 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" data-target="#demo4"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Sözleşme Bilgisi</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo4">
                                    <div class="card-body">
                                      
                                        <div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="checkbox" aria-label="Checkbox for following text input">
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Text input with checkbox" placeholder="Numune gönderim sözleşmenizi okudum ve onaylıyorum.">
</div> <a href="">Analiz Talep Sözleşmesi</a>
                                  
                                    </div>
                                </div>                                   
                            </div>
                  
                    
                                <div class="card shadow mb-4"><button type="button" class="btn btn-success">Analiz Talep Oluştur</button></div>
                    <br />

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Tüm Hakları Saklıdır. &copy; Mass Laboratuvar ve Danışmanlık Hizmetleri A.Ş.</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>




        </div>
    </form>
</body>
</html>
