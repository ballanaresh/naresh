using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DayWiseReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        meth();
    }

    protected void meth()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Date");
        dt.Columns.Add("OpNumber");
        dt.Columns.Add("PatientName");
        dt.Columns.Add("Treatment");
        dt.Columns.Add("TotalAmount");
        dt.Columns.Add("PaidAmount");
        dt.Columns.Add("DueAmount");
        dt.Columns.Add("NoOFVisits");
        dt.Columns.Add("VisitStatus");

        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");
        dt.Rows.Add(DateTime.Now, "1", "naresh", "X-Ray", "100.32", "33", "43", "1", "old");

        gvDayWiseReport.DataSource = dt;
        gvDayWiseReport.DataBind();
    }
}