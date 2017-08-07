using System;
using System.Collections.Generic;
using System.Text;
using BDA.DAL;
using System.Data.SqlClient;
using System.Data;
    public class DonationFrequency : Connection
    {
        public static DataSet ds;
        int freqid;

        public int Freqid
        {
            get { return freqid; }
            set { freqid = value; }
        }
        string freq, freqdesc;

        public string Freqdesc
        {
            get { return freqdesc; }
            set { freqdesc = value; }
        }

        public string Freq
        {
            get { return freq; }
            set { freq = value; }
        }
        public void AddFrequency()
        {

            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@Frequency", this.freq);
            p[0].DbType = DbType.String;
            p[1] = new SqlParameter("@Description", this.freqdesc);
            p[1].DbType = DbType.String;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spAddDonationFrequency", p);
        }
        public void UpdateFrequency()
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@FreqId", this.freqid);
            p[0].DbType = DbType.Int16;
            p[1] = new SqlParameter("@Frequency", this.freq);
            p[1].DbType = DbType.String;
            p[2] = new SqlParameter("@Description", this.freqdesc);
            p[2].DbType = DbType.String;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateDonationFrequency", p);
        }
        public void DeleteFrequency()
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@FreqId", this.freqid);
            p[0].DbType = DbType.Int16;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spDeleteDonationFrequency", p);
        }

        public DataSet ShowDonationFrequency()
        {
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetFrequencyId");
            return ds;
        }

        public DataSet GetFrequencyNameById()
        {
            ds = new DataSet();
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@FreqId", this.freqid);
            p[0].DbType = DbType.Int16;
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetDonationFrequencyIdByName", p);
            return ds;
        
        }

        public DataSet GetDonationFrequencyDetail()
        {
            ds = new DataSet();
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@FreqId", this.freqid);
            p[0].DbType = DbType.Int16;
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetDonationFrequencyDetail", p);
            return ds;

        }
    }

