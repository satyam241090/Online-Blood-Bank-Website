using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(@"Data Source=SATYAM-PC\SQLEXPRESS;Initial Catalog=satym;Integrated Security=True");
    SqlCommand cmd;
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        if (RadioButton1.Checked == true)
        {
            cmd = new SqlCommand("insert into Table_3 values('" + TextBox1.Text + "','" +DropDownList1.SelectedItem.Text+ "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("afterrequest.aspx");
            
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Agree to the Terms and condition above')</script>");

        }
    }

}
