using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using BDA.DAL;
using System.Data;
    
   public class FaqBusinessLayer:Connection
    {
      
       public static DataSet ds;
       
       public static void InsertFaq(string Answer, string Question)
       {
           SqlParameter[] p = new SqlParameter[2];
           p[0] = new SqlParameter("Question", SqlDbType.NVarChar);
           p[0].Value = Question;
           p[1] = new SqlParameter("@Answer", SqlDbType.NVarChar);
           p[1].Value = Answer;
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spAddNewFaq", p);

       }
       public static DataSet ShowQuestion()
       {
           ds = new DataSet();
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spShowAllQuestion");
           return ds;
       }

       public static void UpdateQuestion(int FaqId, string Question, string Answer)
       {
           SqlParameter[] p = new SqlParameter[3];
           p[0] = new SqlParameter("@FaqId", SqlDbType.BigInt);
           p[0].Value = FaqId;
           p[1] = new SqlParameter("@Question", SqlDbType.NVarChar);
           p[1].Value = Question;
           p[2] = new SqlParameter("@Answer", SqlDbType.NVarChar);
           p[2].Value = Answer;
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateQuestion", p);
       }

       public static void DeleteQuestion(int FaqId)
       {
           SqlParameter[] p = new SqlParameter[1];
           p[0] = new SqlParameter("@FaqId", SqlDbType.BigInt);
           p[0].Value =FaqId;
           SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spDeleteQuestion", p);
       }

       public static DataSet ShowQuestionById(int FaqId)
       {
           ds = new DataSet();
           SqlParameter[] p = new SqlParameter[1];
           p[0] = new SqlParameter("@FaqId", SqlDbType.BigInt);
           p[0].Value =FaqId;
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetQuestionById", p);
           return ds;
       }
       public static DataSet ShowAnswerByFaqId(int FaqId)
       {
           ds = new DataSet();
           SqlParameter[] p = new SqlParameter[1];
           p[0] = new SqlParameter("@faqId", SqlDbType.BigInt);
           p[0].Value = FaqId;
           ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAnswerByFaqId", p);
           return ds;
       }
    }

