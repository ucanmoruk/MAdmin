﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analiztalebi.aspx.cs" Inherits="MAdmin.analiztalebi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MASS Portal | Analiz Talep Formu</title>

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
<body id="page-top">
    <form id="form1" runat="server">
        <div>

             <div id="wrapper">
          
  <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Anasayfa.aspx">
            <img class="logosidebar" src="img/logo-beyaz.png" />
            </a>
           
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
             <br />
            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
            <a class="nav-link" href="Anasayfa.aspx"><i class="fas fa-fw fa-home"></i>
            Anasayfa</a>
            </li>

            <li class="nav-item">
             <a class="nav-link" href="NumuneGonder.aspx"><i class="fas fa-fw fa-flask"></i> Numune Gönder</a></li>
            
                     
            <li class="nav-item">                      
             <a class="nav-link" href="Teklif.aspx"> <i class="fas fa-fw fa-envelope-open"></i> Teklifler</a></li>
               

             <li class="nav-item">
             <a class="nav-link" href="Raporlar.aspx"><i class="fas fa-fw fa-university"></i> Raporlar</a></li>
             
            <br />
            
            <br />
                        
             <!-- Sidebar Message -->
            <div class="sidebar-card">
<%--                <img class="sidebar-card-illustration mb-2" src="img/favicon.png" alt="">--%>
                <p class="text-center mb-2"><strong>MASS Portal</strong> ile talep oluşturabilir, tekliflerinize ve raporlarınıza ulaşabilirsiniz!</p>
                <a class="btn btn-success btn-sm" target="_blank" href="https://www.masslab.com.tr/">Bize Ulaşın !</a>
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


                    <ul class="navbar-nav ml-auto">


                     <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Label ID="Lbl_ad" runat="server" Text="Label" class="mr-2 d-none d-lg-inline text-gray-600 small"></asp:Label>
                               
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profil.aspx">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profil Bilgileri
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Çıkış Yap
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
                                    <div class="paragraf">Seçim yaptığınız analiz talebi ile ilgili detayları burada görebilirsiniz. 
                                        </div>
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
    <asp:TextBox id="txt_rfirma"  class="form-control"  runat="server" /> </div>

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon2">Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="txt_radres"  class="form-control"  runat="server" /> </div>

    <div class="input-group mb-3">  
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon3">Yetkili:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span> </div>  
    <asp:TextBox id="txt_ryetkili"  class="form-control"  runat="server" /> </div>
    
     <div class="input-group mb-3">  
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon4">İletişim:&nbsp;&nbsp;&nbsp;&nbsp; </span> </div>  
    <asp:TextBox id="txt_riletisim"  class="form-control"  runat="server" /> </div>
                                   


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
    <span class="input-group-text" id="basic-addon5">Firma Adı:</span> </div>  
    <asp:TextBox id="txt_ffirma"  class="form-control"  runat="server" /> </div>

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon6">Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="txt_fadres"  class="form-control"  runat="server" /> </div>

   <div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">Vergi Dairesi - Vergi/TC No:</span>
  </div>
       <asp:TextBox ID="txt_vd" runat="server" class="form-control" ></asp:TextBox>
       <asp:TextBox ID="txt_vn" runat="server" class="form-control" ></asp:TextBox>
</div>

             <br />                           
     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon7">Muhasebe Mail Adresi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="txt_fmail"  TextMode="Email" class="form-control"  runat="server" /> </div>
                                  
                                    </div>
                                </div>
                            </div>

                       <!-- Collapsable Card3 -->
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
                                 <asp:TextBox id="Txt_karar"  class="form-control"  runat="server" />
                                        </div>
                                      
                                        <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Raporlama Dili:&nbsp;</label> </div>
                                   <asp:TextBox id="txt_dil"  class="form-control"  runat="server" /></div>
                                
                                            <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">İade Numune:&nbsp;&nbsp;&nbsp;</label> </div>
                                    <asp:TextBox id="txt_iade"  class="form-control"  runat="server" /></div>

                                            <div class="input-group mb-3">   <div class="input-group-prepend">                   
    <span class="input-group-text" id="basic-addon8">Üretici Firma:&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox id="txt_uretici"  class="form-control"  runat="server" /> </div>

                                        <div class="input-group mb-3"><div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon9">Varsa Notunuz:&nbsp;</span> </div>  
    <asp:TextBox id="txt_not"  class="form-control"  runat="server" /> </div>

                                    </div>
                                </div>
                            </div>
                   
                       <!-- Collapsable Card4 -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" data-target="#demo3"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Numune Detayları</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="demo3">
                                    <div class="card-body">
                                                   
                                     

  <asp:GridView ID="GridView1" runat="server" ShowFooter="true"  class="table table-bordered" AutoGenerateColumns="false">
                <Columns>
                    
                    <asp:TemplateField HeaderText="Numune Adı">
                        <ItemTemplate>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Numune") %>'></asp:Literal> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Marka/Model/Artikel Vb.">
                        <ItemTemplate>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Ozellik") %>'></asp:Literal> 
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Analiz">
                        <ItemTemplate>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Analiz") %>'></asp:Literal> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Metot">
                        <ItemTemplate>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Metot") %>'></asp:Literal> 
                        </ItemTemplate>
                      
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


                                    </div>
                                </div>
                            </div>


                     

                    <!-- Collapsable Card6 -->
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
  <div class="input-group-prepend"> <div class="input-group-test">
      <asp:CheckBox ID="CheckBox1" runat="server"  /> &nbsp;&nbsp;&nbsp;
      <a href="#" data-toggle="modal" data-target="#logoutsoz">Analiz talep sözleşmenizi</a> &nbsp; okudum, onayladım.
    
        
      <%--<input type="checkbox" aria-label="Checkbox for following text input">--%>
    </div> 
      
  </div>
                                            
  <%--<input type="text" class="form-control" aria-label="Text input with checkbox" placeholder="Numune gönderim sözleşmenizi okudum ve onaylıyorum.">--%>                                          
</div> 
                                   
                                  
                                    </div>
                                </div>                                   
                            </div>
                  
                    
                 <%--   <div class="card shadow mb-4">
                        <asp:Button ID="Btn_Ekle" runat="server" class="btn btn-primary" Text="Analiz Talep Oluştur" OnClick="Btn_Ekle_Click" />            
                    <br /> </div>--%>

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
                    

             <!-- Sözleşme Modal-->
    <div class="modal fade" id="logoutsoz" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modallabel">Hizmet Sözleşmesi</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body-soz">hizmet sözleşme şartları burada yer almaktadır.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Kapat</button>                    
                </div>
            </div>
        </div>
    </div>

     <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Çıkış Yapıyorsunuz ?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Oturumunuzu sonlandırmak için "Çıkış Yap" butonuna basabilirsiniz.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Vazgeç</button>
                    <a class="btn btn-primary" href="giris.aspx">Çıkış Yap</a>
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
            
   </div>


        </div>
    </form>
</body>
</html>