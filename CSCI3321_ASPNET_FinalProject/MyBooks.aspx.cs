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
    public partial class MyBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
            // 1. Create a SqlConnection object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            // 2. Create a SqlCommand object using the above connection object
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM (((Books "
                               + "INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID)"
                               + "INNER JOIN Genres ON Books.GenreID = Genres.GenreID)"
                               + "INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID);";

            // 3. Open the connection and execute the command
            // store the returned data in a SqlDataReader object
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            // 4. if there is data in the SqlDataReader object
            // then loop through each record to build the table to display the books
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //Title
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = reader["Title"].ToString();
                    tr.Cells.Add(tc);
                    //2. AuthorID
                    tc = new TableCell();
                    tc.Text = reader["FirstName"].ToString() + " " + reader["LastName"].ToString();
                    tr.Cells.Add(tc);
                    /// 3. Price
                    tc = new TableCell();
                    tc.Text = reader["Price"].ToString();
                    tr.Cells.Add(tc);
                    /// 4. PublishDate
                    tc = new TableCell();
                    String pDate = reader["PublishDate"].ToString();
                    pDate = pDate.Split(' ')[0];
                    tc.Text = pDate;
                    tr.Cells.Add(tc);
                    /// 5. PublisherID
                    tc = new TableCell();
                    tc.Text = reader["PublisherName"].ToString();
                    tr.Cells.Add(tc);
                    /// 6. GenreID
                    tc = new TableCell();
                    tc.Text = reader["GenreName"].ToString();
                    tr.Cells.Add(tc);
                    //...Wordcount too because im just going down the list
                    tc = new TableCell();
                    tc.Text = reader["WordCount"].ToString();
                    tr.Cells.Add(tc);

                    tblBooks.Rows.Add(tr);
                }  
            }
            conn.Close();
        }
    }
}