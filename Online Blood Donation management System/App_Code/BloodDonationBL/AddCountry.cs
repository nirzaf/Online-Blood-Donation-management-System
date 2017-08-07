using System;
using System.Collections.Generic;
using System.Text;
using BDA.DAL;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


    
   public class AddCountry:Connection
    {
      public static DataSet ds; 
     
       //INSERT NEW COUNTRY
       public static void InsertCountry(string CountryName,string CountryDesc,string CountryCode)
       {
           SqlParameter[] p = new SqlParameter[3];
           p[0]=new SqlParameter("@CountryName",SqlDbType.NVarChar);
           p[0].Value=CountryName;
           p[1]=new SqlParameter("@CountryDesc",SqlDbType.NVarChar);
           p[1].Value=CountryDesc;
           p[2]=new SqlParameter("@CountryCode",SqlDbType.NVarChar);
           p[2].Value=CountryCode;
           
           
          
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spAddCountry",p );
       }

       //SELECTION OF IN GRIDVIEW COUNTRY
       public static DataSet GetCountry()
       {
           ds = new DataSet();
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowCountry");
           return ds;
       }

       //UPDATING COUNTRY

       public static void UpdateCountries(int CountryID, string CountryName, string CountryDesc, string CountryCode)
       {
           SqlParameter[] p = new SqlParameter[4];
           p[0] = new SqlParameter("@CountryID", SqlDbType.BigInt);
           p[0].Value = CountryID;
           p[1] = new SqlParameter("@CountryName", SqlDbType.NVarChar);
           p[1].Value = CountryName;
           p[2] = new SqlParameter("@CountryDesc", SqlDbType.NVarChar);
           p[2].Value = CountryDesc;
           p[3] = new SqlParameter("@CountryCode", SqlDbType.NVarChar);
           p[3].Value = CountryCode;
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateCountry", p);
       }

       //DELETING COUNTRY
       public static void DeleteCountry(int CountryId)
       {
           SqlParameter[] p = new SqlParameter[1];
           p[0]=new SqlParameter("@CountryId",SqlDbType.BigInt);
           p[0].Value = CountryId;
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "DeleteCountry", p);
       }

       //GETTING COUNTRYNAME ON CONDITION IN DROPDOWNLIST

       public static DataSet GetCountryName()
       {
           //SqlParameter[] p = new SqlParameter[1];
           //p[0] = new SqlParameter("@CountryName", SqlDbType.NVarChar);
           //p[0].Value = CountryName;
           ds = new DataSet();
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SelectCountryName");
           return ds;
       }
       //GETTING COUNTRYNAME ON CONDITION
            
       public static DataSet SelectCountryOnCondition( int CountryId)
       {
          
          ds = new DataSet();
           SqlParameter[] p = new SqlParameter[1];
           p[0] = new SqlParameter("@CountryId", SqlDbType.BigInt);
           p[0].Value = CountryId;
          ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowCountryOnCondition", p);
          return ds;
       }

       public static DataSet ShowStateByID(int StateId)
       {
           ds = new DataSet();
           SqlParameter[] p = new SqlParameter[1];
           p[0] = new SqlParameter("StateId", SqlDbType.BigInt);
           p[0].Value = StateId;
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowStateOnId", p);
           return ds;
       }

    }

