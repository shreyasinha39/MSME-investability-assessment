
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BankPortal_Default : System.Web.UI.Page
{
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBconnection"].ConnectionString);
  DataTable dt = new DataTable();

  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)  // To load data only on initial page load, not on postback
    {


      if (Request.QueryString.Count != 0)
      {
        
        submitbtn.Visible = false;
        
      }
      LoadAndDisplayData();
    }
  }

  protected void LoadAndDisplayData()
  {
    try
    {

      var dt = new DataTable();
      con.Open();
      new SqlDataAdapter("SELECT * FROM loan_details", con).Fill(dt);
      if (dt.Rows.Count > 0)
      {
        StringBuilder tableHtml = new StringBuilder();
        tableHtml.Append("<table id='example1' class='table'>");
        tableHtml.Append("<thead><tr><th>Sno</th><th>Account Number</th><th>Name</th><th>Sales</th><th>Annual_Turnover</th><th>Net Profit Margin</th><th>Interest_Rate</th><th>Loan_Amount</th><th>Purpose</th></tr></thead>");
        tableHtml.Append("<tbody>");

        int i = 0;
        foreach (DataRow rows in dt.Rows)
        {
          tableHtml.Append("<tr>");
          tableHtml.Append("<td>" + ++i + "</td>");
          tableHtml.Append("<td>" + rows["Account Numer"] + "</td>");
          tableHtml.Append("<td>" + rows["Name"] + "</td>");
          tableHtml.Append("<td>" + rows["Sales"] + "</td>");
          tableHtml.Append("<td>" + rows["Annual Turnover"] + "</td>");
          tableHtml.Append("<td>" + rows["Net Profit Margin"] + "</td>");
          tableHtml.Append("<td>" + rows["Interest_Rate"] + "</td>");
          tableHtml.Append("<td>" + rows["Loan_Amount"] + "</td>");
          tableHtml.Append("<td>" + rows["Purpose"] + "</td>");
          tableHtml.Append("</tr>");
        }

        tableHtml.Append("</tbody></table>");
        Loan_Details.InnerHtml = tableHtml.ToString();
      }
      con.Close();
    }
    catch { }
    }

  protected void FilterAndDisplay(object sender, EventArgs e)
      {
        try
        {

      var dt1 = new DataTable();
      con.Open();
          new SqlDataAdapter("SELECT * FROM loan_details WHERE " + sort_type.Text + " between " + min_value.Text + "  and " + max_value.Text + " order by " + sort_type.Text  , con).Fill(dt1);


      if (dt1.Rows.Count > 0)
      {
        StringBuilder tableHtml = new StringBuilder();
        tableHtml.Append("<table id='example1' class='table'>");
        tableHtml.Append("<thead><tr><th>Sno</th><th>Account Number</th><th>Name</th><th>Sales</th><th>Annual_Turnover</th><th>Net Profit Margin</th><th>Interest_Rate</th><th>Loan_Amount</th><th>Purpose</th></tr></thead>");
        tableHtml.Append("<tbody>");

        int i = 0;
        foreach (DataRow rows in dt1.Rows)
        {
          tableHtml.Append("<tr>");
          tableHtml.Append("<td>" + ++i + "</td>");
          tableHtml.Append("<td>" + rows["Account Numer"] + "</td>");
          tableHtml.Append("<td>" + rows["Name"] + "</td>");
          tableHtml.Append("<td>" + rows["Sales"] + "</td>");
          tableHtml.Append("<td>" + rows["Annual Turnover"] + "</td>");
          tableHtml.Append("<td>" + rows["Net Profit Margin"] + "</td>");
          tableHtml.Append("<td>" + rows["Interest_Rate"] + "</td>");
          tableHtml.Append("<td>" + rows["Loan_Amount"] + "</td>");
          tableHtml.Append("<td>" + rows["Purpose"] + "</td>");
          tableHtml.Append("</tr>");
        }

        tableHtml.Append("</tbody></table>");
        Loan_Details.InnerHtml = tableHtml.ToString();
      }
      con.Close();
    }
    catch { }
  }
}




