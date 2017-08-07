using System;
using System.Collections.Generic;
using System.Text;
using BDA.DAL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

 public  class StateBusinessLayer:Connection
    {
    public static DataSet ds;
     public static void InsertNewState(string StateName, string StateCode, string StateDesc, int CountryID)
     {
         SqlParameter[] p = new SqlParameter[4];
         p[0] = new SqlParameter("@StateName", SqlDbType.NVarChar);
         p[0].Value = StateName;
         p[1] = new SqlParameter("@StateCode", SqlDbType.NVarChar);
         p[1].Value = StateCode;
         p[2] = new SqlParameter("@StateDesc", SqlDbType.NVarChar);
         p[2].Value = StateDesc;
         p[3] = new SqlParameter("@CountryId", SqlDbType.BigInt);
         p[3].Value = CountryID;
         
         SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "AddState", p);
     }

     public static DataSet ShowAllState()
     {
     ds=new DataSet();
         ds=SqlHelper.ExecuteDataset(con,CommandType.StoredProcedure,"ShowState");
         return ds;
     }

     public static void UdateState(int StateId,string StateName,string StateCode,string StateDesc,int CountryId)
     {
         SqlParameter[] p = new SqlParameter[5];
         p[0] = new SqlParameter("@StateId",SqlDbType.BigInt);
         p[0].Value=StateId;
         p[1]=new SqlParameter("@StateName",SqlDbType.NVarChar);
         p[1].Value=StateName;
         p[2]=new SqlParameter("@StateCode",SqlDbType.NVarChar);
         p[2].Value=StateCode;
         p[3]=new SqlParameter("@StateDesc",SqlDbType.NVarChar);
         p[3].Value = StateDesc;
         p[4] = new SqlParameter("@CountryId", SqlDbType.BigInt);
         p[4].Value = CountryId;
         SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "UpdateState", p);
         
     }

     public static void DeleteState(int StateId)
     {
         SqlParameter[] p = new SqlParameter[1];
         p[0] = new SqlParameter("@StateId", SqlDbType.BigInt);
         p[0].Value = StateId;
         SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "DeleteState", p);

     }
     public static DataSet GetStateNameById()
     {
         DataSet ds = new DataSet();
         ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "GetStateNameById");
         return ds;
     }

     public static DataSet GetStateByCountryId(int CountryId)
     {
         SqlParameter[] p = new SqlParameter[1];
         p[0] = new SqlParameter("@CountryId", SqlDbType.BigInt);
         p[0].Value = CountryId;
         ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetStateByCountryId", p);
         return ds;
     }
}
