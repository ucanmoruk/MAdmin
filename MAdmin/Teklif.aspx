<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teklif.aspx.cs" Inherits="MAdmin.PageTeklif" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

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

            <li class="nav-item ">
             <a class="nav-link" href="NumuneGonder.aspx"><i class="fas fa-fw fa-flask"></i> Numune Gönder</a></li>
            
                     
            <li class="nav-item active">                      
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
                                    Profil
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
                                    <h6 class="m-0 font-weight-bold text-primary">Fiyat Teklifimiz</h6>
                                </div>
                                <div class="card-body">
                                    <p>31.12.2021 tarihine kadar geçerli size özel fiyatlarımızı aşağıdaki tabloda bulabilirsiniz.</p>
                                    <p class="mb-0">Listede yer almayan analizler ve özel talepleriniz için bize ulaşabilirsiniz.</p>
                                </div>
                            </div>

                     <div class="d-sm-flex align-items-center justify-content-between mb-4">     
                         <h1 class="h3 mb-0 text-gray-800"></h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Teklif İndir</a>
                    </div>

               

                          <!-- Collapsable Card1 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample" data-target="#demo">
                                    <h6 class="m-0 font-weight-bold text-primary">Fiyat Tekliflerim</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo">
                                    <div class="card-body">

                                        <asp:GridView ID="GridView1" class="table table-bordered" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Tarih">
                                              <ItemTemplate>
                                                       <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Tarih","{0:dd.mm.yyyy}") %>'></asp:Literal>  
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                     <asp:TemplateField  HeaderText="Teklif No">  
                                                    <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("TeklifNo") %>'></asp:Literal>    
                                                    </ItemTemplate>   
                                                    <ItemStyle  VerticalAlign="Middle"></ItemStyle>
                                                </asp:TemplateField>
                                                
                                                <asp:TemplateField  HeaderText="Teklifi Veren">  
                                                    <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("TeklifiVeren") %>'></asp:Literal>    
                                                    </ItemTemplate>   
                                                    <ItemStyle  VerticalAlign="Middle"></ItemStyle>
                                                </asp:TemplateField>

                                                    <asp:TemplateField  HeaderText="Durum">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Btn_Onayla" runat="server" CausesValidation="false" 
                                                        class="btn btn-success btn-sm" Text="Onayla" CommandName="Delete" CommandArgument='<%# Eval("Yol") %>' />  
                                                    </ItemTemplate>   
                                                    <ItemStyle  VerticalAlign="Middle"></ItemStyle>
                                                </asp:TemplateField>

                                                    <asp:TemplateField  HeaderText="İndir">
                                                    <ItemTemplate>
  <asp:LinkButton ID="Btn_Sil" runat="server" CausesValidation="false" 
                                                        class="btn btn-danger btn-sm" Text="İndir" CommandName="Delete" CommandArgument='<%# Eval("Yol") %>' />  
                                                    </ItemTemplate>   
                                                    <ItemStyle  VerticalAlign="Middle"></ItemStyle>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>

                                    </div>
                                </div>
                            </div>
                    

                         
                  

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
