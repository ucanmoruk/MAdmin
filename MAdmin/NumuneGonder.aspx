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
                 <!-- Page Wrapper -->
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

            <li class="nav-item active">
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
                                    <div class="paragraf">Raporlama ve faturalandırma işlemlerinin sorunsuz gerçekleşmesi için numuneleriniz ile ilgili aşağıdaki formu doldurmanız gerekmektedir.
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
                                        <div class="paragraf">
                                         Test raporunuzda yer alacak firma bilgilerini buraya yazabilirsiniz. <br /> 
                                         Sistem otomatik olarak üye girişi yaptığınız bilgileri getirecektir. Dilerseniz değişiklik yapabilirsiniz.
                                        </div>
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

                                        <div class="paragraf">
                                         Faturalandırma işleminin yapılacağı firma bilgilerini buraya yazabilirsiniz. <br /> 
                                         Sistem otomatik olarak üye girişi yaptığınız bilgileri getirecektir. Dilerseniz değişiklik yapabilirsiniz.
                                        </div>
                                     
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

                                        <div class="paragraf">
                                         Test raporunuz ile ilgili talepleri ve varsa ek notlarınızı buradan bize bildirebilirsiniz. <br /> 
                                        </div>


                                        <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Karar Kuralı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> </div>
                                     <asp:DropDownList ID="DropDownList1"  class="form-control"  runat="server">
                                         <asp:ListItem>Pozitif Y&#246;nde Uygulansın</asp:ListItem>
                                         <asp:ListItem>Negatif Y&#246;nde Uygulansın</asp:ListItem>
                                         <asp:ListItem Selected="True">Belirsizlik Dikkate Alınmasın</asp:ListItem>
                                     </asp:DropDownList>
                                   </div>
                                      
                                        <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Raporlama Dili:&nbsp;</label> </div>
                                            <asp:DropDownList ID="DropDownList2"  class="form-control" runat="server">
                                                <asp:ListItem Selected="True">Se&#231;iniz</asp:ListItem>
                                                <asp:ListItem>T&#252;rk&#231;e</asp:ListItem>
                                                <asp:ListItem>İngilizce</asp:ListItem>
                                                <asp:ListItem>Hem T&#252;rk&#231;e Hem İngilizce</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                
                                            <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">İade Numune:&nbsp;&nbsp;&nbsp;</label> </div>
                                                <asp:DropDownList ID="DropDownList3" class="form-control"  runat="server">
                                                    <asp:ListItem Selected="True">Se&#231;iniz</asp:ListItem>
                                                    <asp:ListItem>Evet</asp:ListItem>
                                                    <asp:ListItem>Hayır</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="input-group mb-3">   <div class="input-group-prepend">                   
    <span class="input-group-text" id="basic-addon8">Üretici Firma:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>  
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
                    <asp:BoundField DataField="RowNumber" HeaderText="No" />
                    <asp:TemplateField HeaderText="Numune Adı">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Marka/Model/Artikel Vb.">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Analiz">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" ></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Metot">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" ></asp:TextBox>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAdd" runat="server"  class="btn btn-danger btn-sm"  Text="Satır Ekle" OnClick="Btn_SatirEkle_Click" />
                        </FooterTemplate>
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
      <a href="#" data-toggle="modal" data-target="#logoutsoz">Analiz talep sözleşmenizi</a> &nbsp; okudum, onaylıyorum.
    
        
      <%--<input type="checkbox" aria-label="Checkbox for following text input">--%>
    </div> 
      
  </div>
                                            
  <%--<input type="text" class="form-control" aria-label="Text input with checkbox" placeholder="Numune gönderim sözleşmenizi okudum ve onaylıyorum.">--%>                                          
</div> 
                                        <div runat="server" id="theDiv">
<div class="alert alert-warning alert-dismissible fade show">
<%--    <center><button type="button" class="close" data-dismiss="alert">&times</button>--%>
<asp:Button ID="Btn_kapat" runat="server" class="close"  Text="x" OnClick="Btn_kapat_Click"></asp:Button>
    <center><strong>Lütfen sözleşmeyi onaylayınız.</strong> </center>
  </div> </div>
                                  
                                    </div>
                                </div>                                   
                            </div>
                  
                    
                    <div class="card shadow mb-4">
                        <asp:Button ID="Btn_Ekle" runat="server" class="btn btn-primary" Text="Analiz Talep Oluştur" OnClick="Btn_Ekle_Click" />            
                    <br /> </div>

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
            <div class="modal-content-soz">
                <div class="modal-header">
                    <h5 class="modal-title" id="modallabel">Hizmet Sözleşmesi</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body-soz"> 
1.	İşbu Sözleşmede Mass Laboratuvar ve Danışmanlık Hizmetleri A.Ş., bundan böyle MASS olarak; hizmet talep eden firma, kuruluş ve/veya kurum, bundan böyle Müşteri olarak tanımlanacaktır.
<br />2.	İşbu Sözleşmede verilen bilgilerin güncel, doğru ve yeterli olduğu taraflarca kabul edilmiştir. Bilgilerde ekleme, silme, düzeltme vb. değişiklik talepleri olması durumunda, bu talebin laboratuvar teste başlamadan önce e- posta, gönderildi teyidi alınmış faks, iadeli taahhütlü posta veya kargo yoluyla MASS’a yazılı olarak bildirilmelidir. Aksi halde Aksi halde değişikliklerin yapılmamasından MASS’ın bir sorumluluğu doğmayacaktır.
<br />3.	Taraflar bu Sözleşmenin şartlarına uygun çalışmayı peşinen kabul ederler. İşbu Sözleşmede belirtilen şartlarda, sadece MASS yetkili personeli tarafından imzalanmak kaydı ile değişiklik yapılabilir.
<br />4.	İşbu Sözleşmenin geçerli olabilmesi için Müşterinin bu Belgeyi, kaşelemesi ve yetkili imzalı olarak MASS’a teslim etmesi gerekir. Bu şekilde, Müşterinin analizlerin gerçekleştirilmesi konusunda MASS’a onay verdiği taraflarca kabul edilir.
<br />5.	MASS’ın müşterilerine sağladığı hizmete bağlı olarak, ürettiği tüm bilgiler ve belgeler (rapor, gözlem, telif hakkı dahil ve bununla sınırlı olmamak üzere her türlü bilgi) MASS tarafından saklanacaktır. Bunun istisnası ilgili T.C. Devlet kurum ve kuruluşları, T.C. Mahkemeleri ve TÜRKAK’dır. MASS, kanunen zorunlu olduğu veya sözleşmelerce yetkin kılındığı durumlarda, kanunen yasaklanmadıkça, müşteriyi veya ilgili şahsı açıklanacak bilgi konusunda yazılı olarak haberdar eder.
<br />6.	Müşteriye ait bilgiler (firma bilgileri, numune bilgileri, analiz sonuçları ve analiz raporları) sadece “Analiz Talep Formu”nda müşteri tarafından, “Raporun İletileceği Kişi” kısmında belirtilen kişiye gönderilir. Müşterinin yazılı onayı olmadan üçüncü şahıslara verilmez.
<br />7.	Müşteri, MASS Raporlarını, görüşlerini ve kendisine verilen diğer belgelerle bunların içeriklerini veya özetlerini MASS’ın onayını almadan çoğaltamaz, kopyalayamaz, yayımlayamaz, reklam amacıyla kullanamaz veya herhangi üçüncü bir tarafa ifşa edemez. Müşterinin çalışanları ve vekilleri de aynı şekilde, -müşteri ile iş akdi devam etsin veya etmesin- gizliliği koruyacaklarını ve MASS hizmetleri ile ilgili bilgileri yayınlamayacaklarını veya başka şekilde kullanmayacaklarını taahhüt ederler. 
<br />8.	Müşteri analiz yöntemini/ standartını belirtmediği takdirde, MASS rutin olarak kullandığı analiz yöntemini/ standartını uygular.
<br />9.	Analiz raporları, müşteri ile sözleşme aşamasında, Fiyat Teklif formunun, “Hizmet şartları”’na bağlı “İlave Şartlar” maddesi altında verilen karar kuralı beyanına uygun hazırlanmaktadır.
<br />10.	Analizler sonucunda düzenlenen raporlar, analiz sonuçlarını, gerektiği taktirde söz konusu numunelere ilişkin MASS’ın görüşlerini içerir. Fakat numunelerin alındığı yığın hakkında herhangi bir görüşü belirtmez. Verilen Raporda yer alan bilgiler, MASS’a teslim edilen numunelerin analiz sonuçları ile sınırlıdır.
<br />11.	Standart servislerde iptal talebi, Analiz Talep Formu’nun MASS’a iletilmesinden sonra 12 saat içinde, Ekspres servislerde 4 saat içinde yapılmalıdır. 24 Saat ve Aynı Gün servisler için iptal talebi kabul edilmez ve talep edilen analizlerin ücretleri faturalandırılır.
<br />12.	Aksi belirtilmediği sürece numunenin veya numuneyi oluşturan parçaların (komponentlerin), birden fazla farklı malzeme ve/veya farklı renk içermesi durumunda, analizler her bir farklı malzeme ve/veya farklı renk için ayrı ayrı yapılır; ancak bazı test standartlarının izin verdiği “birleştirilmiş numune” çalışmaları yapılabilir.
<br />13.	Fiyat teklifinde belirtilen fiyatlar, numunenin tek bir kısmı/parçası/bölümü için verilen analiz fiyatlarıdır. Üründe analize tabii tutulması ön görülen her kısım (her parça/ bölüm) için -Müşteri ile yapılacak mutabakattan sonra- ayrı ayrı ücret alınır. 
<br />14.	Talep edilen analizler için “yeterli miktarda tek parça” numune gönderilmelidir. Numune miktarı konusunda MASS ile iletişime geçilmeli ve mutabakat sağlanmalıdır. Eksik miktarda numune gönderilmesi halinde analizlere başlanmaz veya numune miktarının yeterli olduğu analizlere müşteri onayı ile başlanabilir.
<br />15.	Numunelerin analizlerden arta kalanları, müşteri tarafından önceden haber verilmesi şartı ile karşı ödemeli olarak müşteriye iade edilir. Bu takdirde müşterinin analiz raporunda yer alan sonuçlara itiraz hakkı yoktur.
<br />16.	Analiz Raporunun yayınlandığı tarihten itibaren 1 yıl içerisinde müşteri tarafından herhangi bir itiraz ve/veya iddia ve/veya talepte bulunulmaması halinde, MASS, Müşteri nezdindeki bütün yükümlülüklerinden âri olacaktır. 
<br />17.	Eğer taraflar arasında farklı bir anlaşma yapılmamış ise, MASS’ın fiyat listesinde yer alan ücretler geçerli olarak kabul edilir. MASS fiyat listesini her zaman, hiçbir sebep göstermeden revize etme hakkına sahiptir.
<br />18.	Taraflar arasında sözleşme yapılmış ve Fiyat Teklif formu’nun Hizmet şartları- ilave şartlar kısmında mutabık kalınan maddeler belirtilmiş ise, bu maddeler, analiz talep formunda yer alan ilgili maddelerin yerine geçer. 
<br />19.	Taraflar arasında farklı bir anlaşma yapılmamış ise, MASS’ın fiyat listesinde yer alan ücretler geçerli olarak kabul edilir. MASS fiyat listesini her zaman, hiçbir sebep göstermeden revize etme hakkına sahiptir. 
<br />20.	MASS, işbu Sözleşme kapsamında gerçekleştireceği hizmet için gereklerini yerine getirirken gerekli titizliği, dikkati ve özeni gösterir. Hizmette doğabilecek her türlü yanlışlık, kayıp veya masrafların, MASS veya çalışanlarının hatasından kaynaklandığı ispat edilirse;  MASS’ın sorumluluğu, bu analiz raporunun hazırlanması için Müşteri tarafından MASS’a ödenmiş analiz ücretinin -faiz işletilmeksizin-  iade edilmesi ile sınırlı kalacaktır. Müşterinin, kâr kaybı, gelecek işlerin kaybı, üretim kaybı, marka değeri kaybı, ceza ödemelerinden doğacak kayıplar ve/veya müşterinin girdiği sözleşmelerin feshi dahil olmak üzere direkt veya dolaylı zararlarla ilgili hak iddia edilen durumlarda MASS’ın bir maddi yükümlüğü olmayacaktır. MASS, hazırlamış olduğu analiz raporundaki bir eksiklik veya hata nedeniyle, müşterinin veya her kim olursa olsun üçüncü kişilerin uğramış olduğu zararları ve fer’ilerini hiçbir şekilde tazminle yükümlü değildir.
<br />21.	MASS, hizmetlerini doğal afet, savaş, terör, hükümet veya devlet sınırlaması, kanunla herhangi bir kısıtlama getirilmesi, grev, lokavt, makine arızası, işçi bulma sıkıntısı, yangın, kaza gibi nedenlerden ötürü yerine getirememe ve/veya geciktirme ve/veya bunların dışındaki herhangi bir nedenle yerine getirememe ve/veya geciktirme durumunda hiçbir sorumluluk üstlenmez ve/veya sorumlu tutulamaz. MASS, hizmetlerinin sağlanması için verdiği süreye uyamadığı durumda, müşteri tarafından uğranan kayıp veya zarardan, müşteriye karşı hiçbir maddi yükümlüğü olmayacaktır.
<br />22.	MASS’ın kendisinden talep edilen hizmeti -hiçbir neden göstermeksizin- reddetme hakkı saklıdır.
<br />23.	Hizmetin yerine getirilmesi sırasında, hizmetin sonuçlandırılması için –herhangi bir nedenle- bir ek süre ihtiyacı ve/veya bazı harcamaların ortaya çıkması halinde MASS’ın ek süre ve/veya ek ücret talep etme hakkı mahfuzdur. Müşteri, işbu ek ücreti ve ortaya çıkan bu ek süreyi kabul edecektir.
<br />24.	MASS tarafından hizmetlerin yerine getirilmesine yönelik bütün sözleşmeler ve ekleri, T.C. Kanunlarına göre yorumlanacak ve bu kanunlara tabii olacaktır. Bu ve diğer Sözleşmelerin herhangi bir hakem veya davaya konu olması durumunda, Sözleşmelerin T.C.’de yapıldığı ve uygulandığı varsayılacaktır. Şartların içerdiği herhangi bir hükmün, herhangi bir şekilde yasalar nezdinde geçersiz, kanun dışı veya hükümsüz olduğu takdirde ve/veya böyle bir durumun oluşması halinde, işbu Şartların geriye kalan hükümlerinin geçerliliği, yasaya uygunluğu ve yürürlüğe konulabilirliği hiçbir şekilde etkilenmeyecektir veya bozulmayacaktır.
<br />25.	MASS tarafından hizmetlerin yerine getirilmesi ile ilgili her türlü anlaşma ile ilgili olarak çıkan her türlü ihtilaf veya hak talebi; MASS’ın tek başına ve öncelikli olarak yasal işlemleri başlatma tasarrufuna tabi olarak, İstanbul - Bakırköy Mahkemelerini veya MASS’ın seçebileceği herhangi başka bir ülkenin mahkemelerini yetkili kılma hakkı saklı kalmak kaydı ile, tahkim yoluyla rücu edilecek ve belirlenecektir. Taraflar, bir hakemin görevlendirilmesi konusunda mutabık kalmak için yazılı bir başvuruda bulunduktan sonra bir sonuç alınamaması halinde, İstanbul Ticaret Odası Tahkim Kurulu tarafından bir hakemin görevlendirilmesi doğrultusunda anlaşabilirler. Tahkimin mahalli, İstanbul olacaktır. Tahkimde sadece bir Hakem bulunacaktır. Tahkim işlemlerinde kullanılacak dil, Türkçe olacaktır.   
<br />26. Numunelere uygulanan analizlerin süreleri ve hizmetin şartları, “Talep Edilen Servis Türleri” bölümünde gösterilmiştir. Talep edilen analizlerin istenen servis süresine uygunluğu için MASS’ın mutabakatı şarttır. Bunun için MASS ile iletişime geçilmeli, mutabakat sağlanmalıdır.
<br />•	“Standart servis” süresi numunenin teslimini takip eden 3 iş günüdür. Özel şartlara bağlı olarak bu süre farklı olabilir. 
<br />•	“Ekspres servis” süresi 2 iş günüdür.  Numune kabulü saat 12:00’a kadar olup, %50 fiyat farkı uygulanır.
<br />•	“24 Saat servis” süresi 24 saattir. Numune kabulü saat 12:00’a kadar olup %75 fiyat farkı uygulanır.
<br />•	“Aynı gün servis” süresi gün bitimine kadardır. Numune kabulü saat 10:00’a kadar olup %100 fiyat farkı uygulanır.
<br />Yukarıda belirtilen saatlerden sonra teslim edilen numuneler, ertesi gün işleme alınırlar. Cumartesi günü servis süresi içinde değildir. Standart servis haricindeki servis talepleriniz için lütfen teyit alınız. Raporlama, servis süresinin içindedir.
<br />27.	Analizlerden artan ve/veya analiz edilmiş numuneler, Analiz Raporu tarihinden itibaren 15 gün süresince saklanır. Analiz raporu tarihinden 15 gün geçtikten sonra, kalan/kalmış olabilecek numunelerden tekrar analiz yapılmaz. Bu süreden sonra Analiz sonuçlarına yapılacak itirazlar geçersizdir.
<br />28.	Yapılacak analizlere ve hizmetlere ait ücretler, müşteri tarafından peşin olarak ödenir. Rapor, ödeme yapıldıktan sonra müşteriye gönderilir. Ödemenin yapılmaması halinde, MASS ödeme yapılıncaya kadar analiz hizmetlerine başlamama veya analiz raporunu müşteriye iletmeme hakkına sahiptir.
<br />29.	Değerlendirmenin (Uygunluk Beyanının) ve karar kuralının neye göre yapılacağı/uygulanacağı müşteri tarafından beyan edilmelidir. Bu durumda işbu beyan feragatname olarak kabul edilir.





                </div>
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
            
   </div></div> </form>
</body>
</html>
