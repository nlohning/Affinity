using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblFail.Visible = false;
        }
        if(Session["user"] != null)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUsername.Text != "" && txtUsername.Text.Length > 2)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString);
                conn.Open();
                string checkIsUser = "select count(UserName) from userTable where UserName = '" + txtUsername.Text + "'";
                string checkUser = "select UserName from userTable where UserName = '" + txtUsername.Text + "'";
                SqlCommand cmdIsUser = new SqlCommand(checkIsUser, conn);
                SqlCommand cmdUser = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(cmdIsUser.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    string checkPass = "select Password from userTable where UserName = '" + cmdUser.ExecuteScalar().ToString() + "'";
                    SqlCommand cmdPass = new SqlCommand(checkPass, conn);
                    if(cmdPass.ExecuteScalar().ToString() == txtPassword.Text)
                    {
                        lblFail.Visible = false;
                        Session["user"] = txtUsername.Text.ToLower();
                        Response.Redirect("LoginSuccess.aspx");
                    }
                    else
                    {
                        txtPassword.Focus();
                        lblFail.Visible = true;
                    }
                    conn.Close();
                }
                else
                {
                    txtPassword.Focus();
                    lblFail.Visible = true;
                    conn.Close();
                }


            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}