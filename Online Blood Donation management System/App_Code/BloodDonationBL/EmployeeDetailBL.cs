using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using BDA.DAL;
/// <summary>
/// Summary description for EmployeeDetailBL
/// </summary>
public class EmployeeDetailBL:Connection
{
    public static DataSet ds;
	public EmployeeDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string name, address, phone, email,uname,password;
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    public string Email
    {
        get { return email; }
        set {email = value; }
    }
   
    public string Uname
    {
        get { return uname; }
        set { uname = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    int roleid,accountid;
    public int Roleid
    {
        get { return roleid; }
        set { roleid = value; }
    }
    public int Accountid
    {
        get { return accountid; }
        set { accountid = value; }
    }
    public void InsertEmployeeDetail()
    {
        SqlParameter[] p = new SqlParameter[7];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@address", this.address);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@phone", this.phone);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@email", this.email);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@uname", this.uname);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@password", this.password);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@roleid", this.roleid);
        p[6].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spRegisterEmployee", p);
    }
    public DataSet ShowEmployeeName()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowEmployeeName");
        return ds;

    }
    public void UpdateEmployeeAccountDetail()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@AccountId", this.accountid);
        p[0].DbType = DbType.Int32;
        p[1] = new SqlParameter("@UserName", this.uname);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Password", this.password);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateEmployeeAccountDetail", p);

    }
    //public DataSet ShowDonorByDay()
    //{
    //    SqlParameter[] p = new SqlParameter[1];
    //    p[0] = new SqlParameter("@day", this.week);
    //    p[0].DbType = DbType.String;
    //    ds = new DataSet();
    //    ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDonorByDay", p);
    //    return ds;

    //}
   
}
