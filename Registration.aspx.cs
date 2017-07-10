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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(@"Data Source=SATYAM-PC\SQLEXPRESS;Initial Catalog=satym;Integrated Security=True");
    SqlCommand cmd;
    protected void Button1_Click(object sender, EventArgs e)
    {
        CaptchaControl1.ValidateCaptcha(TextBox11.Text);
        if (CaptchaControl1.UserValidated == true)
        {
            con.Open();
            
            cmd = new SqlCommand("insert into Table_2 values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("afterreg.aspx");
        }
        else 
        {
            Label1.Text = " Wrong Captcha Entered , Are You Sure You Are a Human ? ";
        }
    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
}