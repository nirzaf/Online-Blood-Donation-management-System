using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using BDA.DAL;

    public class CityBusinessLayer : Connection
    {
        public static DataSet ds;
        public static void InsertCity(string CityName, string CityDesc, string CityCode, int StateId)
        {
            
            SqlParameter[] p = new SqlParameter[4];
            p[0] = new SqlParameter("@CityName", SqlDbType.NVarChar);
            p[0].Value = CityName;
            p[1] = new SqlParameter("@CityDesc", SqlDbType.NVarChar);
            p[1].Value = CityDesc;
            p[2] = new SqlParameter("@CityCode", SqlDbType.NVarChar);
            p[2].Value = CityCode;
            p[3] = new SqlParameter("@StateId", SqlDbType.BigInt);
            p[3].Value = StateId;
            //p[4]=new SqlParameter("@Active",SqlDbType.Bit);
            //p[4].Value=Active;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "AddCity", p);

        }

        public static DataSet ShowAllCity()
        {
            DataSet ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowAllCity");
            return ds;
        }

        public static void DeleteCity(int CityId)
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@CityId", SqlDbType.BigInt);
            p[0].Value = CityId;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "DeleteCity", p);
        }

        public static void UpdateCity(int CityId, string CityName, string CityDesc, string CityCode,int StateId)
        {
            SqlParameter[] p = new SqlParameter[5];
            p[0] = new SqlParameter("@CityId", SqlDbType.BigInt);
            p[0].Value = CityId;
            p[1] = new SqlParameter("@CityName", SqlDbType.NVarChar);
            p[1].Value = CityName;
            p[2] = new SqlParameter("@CityDesc", SqlDbType.NVarChar);
            p[2].Value = CityDesc;
            p[3] = new SqlParameter("@CityCode", SqlDbType.NVarChar);
            p[3].Value = CityCode;
            p[4] = new SqlParameter("@StateId", SqlDbType.BigInt);
            p[4].Value = StateId;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "UpdateCity", p);
        }
        public static DataSet GetCityByID(int CityId)
        {
            DataSet ds = new DataSet();
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@CityId", SqlDbType.BigInt);
            p[0].Value = CityId;
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "GetCityByID", p);
            return ds;
        }

        public static DataSet GetCityName()
        {
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "GetCity");
            return ds;
        }

        public static DataSet GetCityByState(int StateId)
        {
            ds = new DataSet();
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("StateId", SqlDbType.BigInt);
            p[0].Value = StateId;
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetCityByStateId", p);
            return ds;
        }
    }

