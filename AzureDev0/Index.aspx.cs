using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AzureDev0
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Generatereport(DataTable dtCodeUsage, string ReportPath, string DataTable, string exportType)
        {
            try
            {
                ReportViewer rdlcQrCodeUploadListReport = new ReportViewer();
                rdlcQrCodeUploadListReport.LocalReport.DataSources.Clear();
                rdlcQrCodeUploadListReport.SizeToReportContent = true;
                rdlcQrCodeUploadListReport.LocalReport.ReportPath = Server.MapPath("~/" + ReportPath);
                rdlcQrCodeUploadListReport.LocalReport.EnableHyperlinks = true;
                rdlcQrCodeUploadListReport.LocalReport.Refresh();
               
               
                if (exportType == "Excel")
                {
                    Warning[] warnings;
                    string[] streamIds;
                    string mimeType = string.Empty;
                    string encoding = string.Empty;
                    string extension = string.Empty;
                    string fileName = "Material Wise Report" + "_" + System.DateTime.Now.ToString("ddMMyyyy_hhmm");
                    byte[] bytes = rdlcQrCodeUploadListReport.LocalReport.Render(exportType, null, out mimeType, out encoding, out extension, out streamIds, out warnings);
                    Response.Buffer = true;
                    Response.Clear();
                    Response.ContentType = mimeType;
                    Response.AddHeader("content-disposition", "attachment; filename=" + fileName + "." + extension);
                    Response.BinaryWrite(bytes); // create the file
                    Response.Flush(); // send it to the client to download
                }
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}