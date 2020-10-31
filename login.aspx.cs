using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Web.Services.Description;
using System.Security.Principal;

namespace TreeHuggersWebApp01
{
    public partial class login : System.Web.UI.Page
    {
        protected string mycon = "Data Source=ns45.win.hostgator.com;Initial Catalog=treehon1_SQL;Persist Security Info=True;User ID=treehon1_project;Password=spo#L512";    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AlertMessage(string message)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }   

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            
            SqlConnection sqlconnection = new SqlConnection(mycon);
            sqlconnection.Open();
            SqlParameter username = new SqlParameter("@username_email", textBoxUsername.Text);
            SqlParameter pwd = new SqlParameter("@Password", textBoxPwd.Text);
            string select = "SELECT UserID FROM [treehon1_SQL].[treehon1_project].[User] " +
                "WHERE username_email= @username_email AND Password= @Password;";
            SqlCommand selectCommand = new SqlCommand(select, sqlconnection);
            selectCommand.Parameters.Add(username);
            selectCommand.Parameters.Add(pwd);
            try
            {
                SqlDataReader dataReader = selectCommand.ExecuteReader();
                if (dataReader.HasRows)
                {
                    AlertMessage("Login Successful!");
                }
                else
                {
                    AlertMessage("Username/Password not recognized, please try again.");
                }
            }
            catch (Exception ex)
            {
                 AlertMessage(ex.ToString());
            }
            sqlconnection.Close();
            
        }
    }
}
