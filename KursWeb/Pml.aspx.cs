using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KursWeb
{
    public partial class Contact : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    BindGrid();
        //}

        //private void BindGrid()
        //{
        //    var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {
        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand("select * from Person", conn);
        //        cmd.CommandType = CommandType.Text;

        //        SqlDataReader reader = cmd.ExecuteReader();//resultatet fra spørringen kommer tilbake/returnert til reader
        //        GridView1.DataSource = reader;
        //        GridView1.DataBind();
        //        conn.Close();
        //    }
        //}


        protected void ButtonInsert_Click(object sender, EventArgs e)
            {
                var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
                SqlParameter param;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Person (Email,Tlf,Fornavn,Etternavn) " + "VALUES (@email,@tlf,@fornavn,@etternavn)", conn);
                    cmd.CommandType = CommandType.Text;

                    param = new SqlParameter("@email", SqlDbType.NVarChar);
                    param.Value = fname.te.Text;
                    cmd.Parameters.Add(param);
                

                    param = new SqlParameter("@tlf", SqlDbType.Int);
                    param.Value = int.Parse(TextBoxTlf.Text);
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("@fornavn", SqlDbType.NVarChar);
                    param.Value = TextBoxFor.Text;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("@etternavn", SqlDbType.NVarChar);
                    param.Value = TextBoxEtter.Text;
                    cmd.Parameters.Add(param);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                BindGrid();
            }

        protected void ButtonReg_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
            SqlParameter param;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Person (Email,Tlf,Fornavn,Etternavn) " + "VALUES (@email,@tlf,@fornavn,@etternavn)", conn);
                cmd.CommandType = CommandType.Text;

                param = new SqlParameter("@email", SqlDbType.NVarChar);
                param.Value = fname.te.Text;
                cmd.Parameters.Add(param);


                param = new SqlParameter("@tlf", SqlDbType.Int);
                param.Value = int.Parse(TextBoxTlf.Text);
                cmd.Parameters.Add(param);

                param = new SqlParameter("@fornavn", SqlDbType.NVarChar);
                param.Value = TextBoxFor.Text;
                cmd.Parameters.Add(param);

                param = new SqlParameter("@etternavn", SqlDbType.NVarChar);
                param.Value = TextBoxEtter.Text;
                cmd.Parameters.Add(param);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            BindGrid();


            //todo
            //redir takk.... eller panel
        }

        //protected void ButtonDelete_Click(object sender, EventArgs e)
        //{
        //    var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
        //    SqlParameter param;
        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {
        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand("DELETE FROM Person where id = @id", conn);
        //        cmd.CommandType = CommandType.Text;

        //        param = new SqlParameter("@id", SqlDbType.Int);
        //        param.Value = int.Parse(TextBoxID.Text);
        //        cmd.Parameters.Add(param);


        //        cmd.ExecuteNonQuery();
        //        conn.Close();
        //    }
        //    BindGrid();
        //}


        //protected void ButtonUpdate_Click(object sender, EventArgs e)
        //{
        //    var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
        //    SqlParameter param;
        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {

        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand("UPDATE Person SET Fornavn = @fornavn and Etternavn = @etternavn  where id = @id", conn);
        //        cmd.CommandType = CommandType.Text;

        //        param = new SqlParameter("@fornavn", SqlDbType.NVarChar);
        //        param.Value = TextBoxUpdateFornavn.Text;
        //        cmd.Parameters.Add(param);

        //        param = new SqlParameter("@etternavn", SqlDbType.NVarChar);
        //        param.Value = TextBoxUpdateEtternavn.Text;
        //        cmd.Parameters.Add(param);

        //        param = new SqlParameter("@id", SqlDbType.Int);
        //        param.Value = int.Parse(TextBoxUpdateId.Text);
        //        cmd.Parameters.Add(param);

        //        cmd.ExecuteNonQuery();
        //        conn.Close();
        //    }
        //}

    }
    }