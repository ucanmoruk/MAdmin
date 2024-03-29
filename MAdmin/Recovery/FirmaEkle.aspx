﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirmaEkle.aspx.cs" Inherits="MAdmin.FirmaEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MASS Portal | Firma Ekleme</title>

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

            <li class="nav-item ">
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
                                     
                    <!-- Content Row -->
                    <div class="row">
                    
                            <!-- Approach -->
 <div class="card shadow mb-4">
 <div class="card-header py-3">
 <h6 class="m-0 font-weight-bold text-primary">Yeni Firma Kaydı Oluşturma</h6>
 </div>
 <div class="card-body">    

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" >Cari Kodu - Firma Türü:</span> </div>  
    <asp:TextBox ID="txt_firmakod" runat="server"  class="form-control" ></asp:TextBox>
     <asp:DropDownList ID="tur" class="form-control" runat="server">
     <asp:ListItem>Seçiniz..</asp:ListItem>
     <asp:ListItem>Müşteri</asp:ListItem>
     <asp:ListItem>Proje</asp:ListItem>
 </asp:DropDownList>
     </div>


    <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" >Firma Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
    <asp:TextBox ID="txt_firma" runat="server"  class="form-control" ></asp:TextBox></div>

      <div class="input-group mb-3">
<div class="input-group-prepend">
<label class="input-group-text" for="inputGroupSelect01">Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> </div>
<asp:TextBox ID="txt_adres" runat="server"  class="form-control" ></asp:TextBox></div>

     
    <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" >Vergi Dairesi - No:</span> </div>          
    <asp:TextBox ID="txt_vd" runat="server"  class="form-control" ></asp:TextBox>
    <asp:TextBox ID="txt_vn" runat="server" class="form-control"></asp:TextBox>
    </div>
    
    <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" >Telefon:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>          
    <asp:TextBox ID="txt_telefon" runat="server"  class="form-control" ></asp:TextBox>
    </div>

     <div class="input-group mb-3">                         
    <div class="input-group-prepend">
    <span class="input-group-text" >Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>          
    <asp:TextBox ID="Txt_mail" runat="server"  class="form-control" ></asp:TextBox>
    </div>



     <div class="input-group mb-3">                         
    <div class="input-group-prepend btn-right">
        <asp:Button ID="Btn_Firma"  class="btn btn-success btn-right" runat="server" Text="Firma Ekle" OnClick="Btn_Firma_Click"  />
    </div></div>
          <br />
         
          <div runat="server" id="Div1">
<div class="alert alert-warning alert-dismissible fade show">
<%--    <center><button type="button" class="close" data-dismiss="alert">&times</button>--%>
<asp:Button ID="Button1" runat="server" class="close"  Text="x" OnClick="Button1_Click"></asp:Button>
    <center><strong>
     " <asp:Label ID="lbl_firma" runat="server" Text="Label"></asp:Label> " firması MASS Portal Sistemine 
     " <asp:Label ID="lbl_kod" runat="server" Text="Label"></asp:Label> " kodu ve 
     " <asp:Label ID="lbl_parola" runat="server" Text="Label"></asp:Label> " şifresi ile kaydedilmiştir.</strong> </center>

  </div> </div>

</div></div></div>
                                 

                    
                            <!-- Approach -->
 <div class="card shadow mb-4">
 <div class="card-header py-3">
 <h6 class="m-0 font-weight-bold text-primary">Firmalar</h6>
 </div>
 <div class="card-body">    

                                         <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Arama yapabilirsiniz..</span>
  </div>
 <asp:TextBox id="txtarama"  class="form-control" placeholder="Firma Adı" runat="server" 
     OnTextChanged="txtarama_TextChanged" /> 
</div>

<hr />


 <asp:GridView ID="GridView1"  runat="server"
              class="table table-bordered"  AutoGenerateColumns="False"
      emptydatatext="Henüz veri bulunmuyor." >      
  <PagerSettings Mode="NumericFirstLast" FirstPageText="İlk" LastPageText="Son" />
     <pagerstyle backcolor="LightBlue" height="30px" verticalalign="Bottom" horizontalalign="Center"/>
     <pagersettings mode="Numeric"  position="Bottom" pagebuttoncount="10"/>                      
                                             <Columns>
                                                  <asp:TemplateField HeaderText="Kod">
                                                     <ItemTemplate>
                                                              <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Kod") %>'></asp:Literal>    
                                                     </ItemTemplate><ItemStyle Font-Size="Small"></ItemStyle>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Firma Adı">
                                                     <ItemTemplate>
                                                              <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Firma_Adi") %>'></asp:Literal>    
                                                     </ItemTemplate>
                                                     <ItemStyle Font-Size="Small"></ItemStyle>
                                                 </asp:TemplateField>
                                                 
                                                 <asp:TemplateField HeaderText="Vergi Dairesi">
                                                     <ItemTemplate>
                                                              <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Vergi_Dairesi") %>'></asp:Literal>    
                                                     </ItemTemplate><ItemStyle Font-Size="Small"></ItemStyle>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Vergi No">
                                                     <ItemTemplate>
                                                              <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Vergi_No") %>'></asp:Literal>    
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                                  
                                                   <asp:TemplateField HeaderText="Tür">
                                                     <ItemTemplate>
                                                              <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Tur") %>'></asp:Literal>    
                                                     </ItemTemplate><ItemStyle Font-Size="Small"></ItemStyle>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Düzenle">
                                                     <ItemTemplate>                                                             
                                                  <asp:LinkButton ID="Btn_Indir" runat="server" CausesValidation="false" 
                                                        class="btn btn-primary btn-sm" Text="Düzenle" CommandName="Open" CommandArgument='<%# Eval("Kod") %>' />                                                                                               
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Sil">
                                                     <ItemTemplate>                                                             
                                                  <asp:LinkButton ID="Btn_Sil" runat="server" 
                                                        class="btn btn-danger btn-sm" Text="Sil" CommandName="Delete" CommandArgument='<%# Eval("Kod") %>' />                                                                                               
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                             </Columns>
                                         </asp:GridView>

</div></div>

      
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
</div>
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Tüm Hakları Saklıdır. © Mass Laboratuvar ve Danışmanlık Hizmetleri A.Ş.</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        
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
    
           </div> 
    </form>
</body>
</html>
