using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Infinite.ASP.NET.WEEK7
{
    public partial class PositionDetails : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                using (SqlConnection con = new SqlConnection("Server=ICS-LAP-3042\\SQLEXPRESS;DataBase=Hr;integrated security=true;"))
                {
                    using (SqlCommand adapter = new SqlCommand("InsertPositionDetails", con))
                    {
                        adapter.CommandType = CommandType.StoredProcedure;
                        adapter.Parameters.AddWithValue("@cPositionCode", txtcPositionCode.Text);
                        adapter.Parameters.AddWithValue("@vDescription", txtvDescription.Text);
                        adapter.Parameters.AddWithValue("@siYear", ddlsiYear.SelectedValue);
                        adapter.Parameters.AddWithValue("@iBudgetedStrength", txtiBudgetStrength.Text);
                        adapter.Parameters.AddWithValue("@iCurrentStrength", txtiCurrentStrength.Text);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        int res = adapter.ExecuteNonQuery();
                        if (res > 0)
                        {
                            LblMessage.Text = "Success";
                        }
                        else
                        {
                            LblMessage.Text = "Error";
                        }
                        adapter.Dispose();
                        con.Close();


                    }
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtcPositionCode.Text = " ";
            txtvDescription.Text = " ";
            txtiCurrentStrength.Text = " ";
            txtiBudgetStrength.Text = " ";
            ddlsiYear.SelectedValue = null;
        }
    }
}