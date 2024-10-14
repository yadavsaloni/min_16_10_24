using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using Miniproject.App_Code;

namespace Miniproject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from slider order by id desc";
            DataTable dt = new DataTable();
            DBConnect dbc = new DBConnect();
            dt = dbc.ExecuteSelect(query);
            sliderrepeater.DataSource = dt;
            sliderrepeater.DataBind();

            sliderbutton.DataSource = dt;
            sliderbutton.DataBind();


            string query1 = "select * from news order by id desc";
            DataTable newsdata = new DataTable();
            newsdata = dbc.ExecuteSelect(query1);
            newsrepeater.DataSource = newsdata;
            newsrepeater.DataBind();
         

        }
    }
}