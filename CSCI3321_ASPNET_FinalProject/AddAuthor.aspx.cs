using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddAuthor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        { //SQL connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            //Command buffer
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = 

                " INSERT INTO Authors VALUES ('" 
                + txtAuthorsLastName.Text 
                + "','" 
                + txtAuthorsFirstName.Text 
                + "','" 
                + txtAuthorsGender.Text 
                + "','" 
                + txtAuthorsBirthDate.Text 
                + "')";


                //Command execution
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
}