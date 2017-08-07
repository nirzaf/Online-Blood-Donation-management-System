using System;
using System.Collections.Generic;
using System.Text;
using BDA.DAL;
using System.Data.SqlClient;
using System.Configuration;

   public class Connection
    {
      
     public static string con=ConfigurationSettings.AppSettings["ConnStr"];
    
      
    }

