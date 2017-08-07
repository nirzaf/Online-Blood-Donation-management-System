using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using BDA.DAL;

 public  class CheckUser:Connection
 {
     public CheckUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
        string username, password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
     public bool GetUser()
     {
         int count;
         SqlParameter[] p = new SqlParameter[2];
         p[0] = new SqlParameter("@UserName", this.username);
         p[0].DbType = DbType.String;
         p[1] = new SqlParameter("@Password", this.password);
         p[1].DbType = DbType.String;
         count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "spCheckUser", p).ToString());
         if (count > 0)
             return true;
         else
             return false;
     }

     public bool GetOrganization()
     {
         int count;
         SqlParameter[] p = new SqlParameter[2];
         p[0] = new SqlParameter("@UserName", this.username);
         p[0].DbType = DbType.String;
         p[1] = new SqlParameter("@Password", this.password);
         p[1].DbType = DbType.String;
         count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "spCheckOrganization", p).ToString());
         if (count > 0)
             return true;
         else
             return false;
     }

     public bool GetAdmin()
     {
         int count;
         SqlParameter[] p = new SqlParameter[2];
         p[0] = new SqlParameter("@UserName", this.username);
         p[0].DbType = DbType.String;
         p[1] = new SqlParameter("@Password", this.password);
         p[1].DbType = DbType.String;
         count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "spCheckAdmin", p).ToString());
         if (count > 0)
             return true;
         else
             return false;

     }
     public bool CheckEmployee()
     {
         int count;
         SqlParameter[] p = new SqlParameter[2];
         p[0] = new SqlParameter("@UserName", this.username);
         p[0].DbType = DbType.String;
         p[1] = new SqlParameter("@Password", this.password);
         p[1].DbType = DbType.String;
         count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "spCheckEmployee", p).ToString());
         if (count > 0)
             return true;
         else
             return false;

     }
    }

