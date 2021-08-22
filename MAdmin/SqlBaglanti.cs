using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace MAdmin
{
    public class SqlBaglanti
    {        
        public SqlConnection baglanti()
        {
         
           // SqlConnection baglan = new SqlConnection(@"Data Source=Oguzhan,1433; Initial Catalog = Online; persist Security Info = True; User ID = sa; Password = 12344");
            SqlConnection baglan = new SqlConnection(@"Data Source=mssql10.trwww.com,1433; Initial Catalog = massgrup_mass; persist Security Info = True; User ID = masslab; Password = 123qweASD_*");

            baglan.Open();
            return baglan;
        }


    }
}