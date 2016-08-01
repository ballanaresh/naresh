using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class OldPatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbSearch.Visible = false;
        loadPatientDetails();
        
    }

    protected void loadPatientDetails()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Date");
        dt.Columns.Add("OpNumber");
        dt.Columns.Add("PatientName");
        dt.Columns.Add("Amount");
        dt.Columns.Add("NoOfVistis");
        dt.Columns.Add("Status");

        dt.Rows.Add(DateTime.Now, "1", "naresh", "100.33", "10", "cured");

        gvOutPatient.DataSource = dt;
        gvOutPatient.DataBind();
    }
    protected void ddlSearchBy_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSearchBy.SelectedIndex == 1)
        {
            pnlSearchBy.Visible = true;
            ddlSearchBy.Visible = true;
            pnlDateSelector.Visible = true;
            pnlOpNoSelector.Visible = false;
            lbSearch.Visible = true;
        }
        else if (ddlSearchBy.SelectedIndex == 2)
        {
            pnlSearchBy.Visible = true;
            ddlSearchBy.Visible = true;
            pnlDateSelector.Visible = false;
            pnlOpNoSelector.Visible = true;
            lbSearch.Visible = true;
        }
        else
        {
            pnlSearchBy.Visible = true;
            ddlSearchBy.Visible = true;
            pnlDateSelector.Visible = false;
            pnlOpNoSelector.Visible = true;
            Label1.Text = "Name";
            lbSearch.Visible = true;
        }
    }
}