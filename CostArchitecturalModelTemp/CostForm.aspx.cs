using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;

namespace CostArchitecturalModelTemp
{
    public partial class CostForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void downloadButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve the HTML content from the hidden field
                string htmlContent = "<style>@import url('https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css');</style>"
                                     + hiddenHtmlContent.Value;

                // Set up the PDF document
                using (MemoryStream memoryStream = new MemoryStream())
                {
                    Document pdfDoc = new Document(PageSize.A4, 50f, 50f, 50f, 50f);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                    pdfDoc.Open();

                    // Convert the HTML content to PDF
                    using (StringReader stringReader = new StringReader(htmlContent))
                    {
                        XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, stringReader);
                    }

                    pdfDoc.Close();

                    // Send the PDF as a download to the browser
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=ProgrammeCostSummary.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite(memoryStream.ToArray());
                    Response.End();
                }
            }
            catch (Exception ex)
            {
                // Handle errors
                Response.Write("An error occurred: " + ex.Message);
            }
        }
    }
}