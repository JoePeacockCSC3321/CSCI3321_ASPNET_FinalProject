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
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmit_Click(object sender, EventArgs e)   
        {    
            //Start SQL Connection
            //Start SQL commmand buffer
            SqlConnection conn = new SqlConnection();  
            SqlCommand cmd = new SqlCommand();          
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            cmd.Connection = conn;      
            //Load SQL connection buffer with values from page designer

            cmd.CommandText = "INSERT INTO Books VALUES ('" 
                + txtBooksTitle.Text
                + "', " 
                + ddBooksAuthor.SelectedValue 
                + ", " 
                + txtBooksPrice.Text 
                + ", '" 
                + txtBooksPublishDate.Text 
                + "', " 
                + ddBooksPublisher.SelectedValue 
                + " , " 
                + ddBooksGenre.SelectedValue 
                + ", " 
                + txtBooksWordCount.Text 
                + ")";

            //Send command buffer through connection & cleanup
            conn.Open();     

            //If this next line is throwing an error you have invailid input (check formatting)
            cmd.ExecuteNonQuery(); 
            conn.Close();    

            //resetting Add book page breaks unless done programatically which I dont have time for due to the dropdown menus
         

        }
    }
}