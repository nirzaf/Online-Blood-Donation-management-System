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
/// Summary description for BloodRequestBL
/// </summary>
public class BloodRequestBL:Connection
{
    public static DataSet ds;
	public BloodRequestBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  private string  name,email,country,state,city,location,bloodtype,bloodgroup,phone,address,reqtype;
    public string Reqtype
    {
        get { return reqtype; }
        set { reqtype = value; }
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
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string Country
    {
        get { return country; }
        set { country = value; }
    }
    public string State
    {
        get { return state; }
        set { state = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }
    public string Location
    {
        get { return location; }
        set { location = value; }
    }
    public string Bloodtype
    {
        get { return bloodtype; }
        set { bloodtype = value; }
    }
    public string Bloodgroup
    {
        get { return bloodgroup; }
        set { bloodgroup = value; }
    }
 private DateTime appdate,reqdate;
    public DateTime Appdate
    {
        get { return appdate; }
        set { appdate = value; }
    }
    public DateTime Reqdate
    {
        get { return reqdate; }
        set { reqdate = value; }
    }
    private int reqid,donodrid,orgid;
    public int Reqid
    {
        get { return reqid; }
        set { reqid = value; }
    }
    public int Donodrid
    {
        get { return donodrid; }
        set { donodrid = value; }
    }
    public int Orgid
    {
        get { return orgid; }
        set { orgid = value; }
    }
    public void InsertBloodRequest()
    {
        SqlParameter[] p = new SqlParameter[15];
        p[0] = new SqlParameter("@donorid", this.donodrid);
        p[0].DbType = DbType.Int32;
        p[1] = new SqlParameter("@orgid", this.orgid);
        p[1].DbType = DbType.Int32;
        p[2] = new SqlParameter("@name", this.name);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@email", this.email);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@phone", this.phone);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@country", this.country);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@state", this.state);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@city", this.city);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@location", this.location);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@address", this.address);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@bloodtype", this.bloodtype);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@bloodgroup", this.bloodgroup);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@appdate", this.appdate);
        p[12].DbType = DbType.Date;
        p[13] = new SqlParameter("@reqdate", this.reqdate);
        p[13].DbType = DbType.Date;
        p[14] = new SqlParameter("@reqtype", this.reqtype);
        p[14].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertBloodRequest", p);
    }
    public DataSet ShowRequestID()
    {
       
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRequestID");
        return ds;
    }
    public DataSet ShowRequestByDate()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@date", this.appdate);
        p[0].DbType = DbType.Date;
        p[1] = new SqlParameter("@reqtype", this.reqtype);
        p[1].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRequestByDate",p);
        return ds;
    }
    public DataSet GetDayName()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@date", this.reqdate);
        p[0].DbType = DbType.Date;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpGetDayName", p);
        return ds;
    }
    public DataSet ShowDateByReqId()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@reqid", this.reqid);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDateByReqId", p);
        return ds;
    }
    public void UpdateBloodRequestStatus()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@reqid", this.reqid);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpUpdateBloodRequestStatus", p);
    }
    public DataSet ShowRequestType()
    {   
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRequestType");
        return ds;
    }
}
