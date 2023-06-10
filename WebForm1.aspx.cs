using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace userregistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string gender;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=JOERLPC\\SQLEXPRESS;Initial Catalog=userreg;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[userreg]\r\n           ([name]\r\n           ,[address]\r\n           ,[gender]\r\n           ,[phone]\r\n           ,[email]\r\n           ,[username]\r\n           ,[password])\r\n     VALUES\r\n           ('"+txtName.Text+"', '"+txtAdd.Text+"', '"+gender+"', '"+txtPhone.Text+"', '"+txtEmail.Text+"', '"+txtUser.Text+"', '"+txtPass.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is successfully registered')</script>");

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";

        }
    }
}