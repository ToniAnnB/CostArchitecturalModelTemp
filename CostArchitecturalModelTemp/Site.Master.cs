using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CostArchitecturalModelTemp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CurrentTabHightlight();
        }

        protected void CurrentTabHightlight()
        {
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);

            switch (currentPage)
            {
                case "default.aspx":
                    lnkHome.Attributes.Add("class", lnkHome.Attributes["class"] + "text-sky-500 font-medium py-2 px-3 rounded-md bg-opacity-20 bg-sky-200 shadow-inner");
                    break;
                
                case "Default":
                    lnkHome.Attributes.Add("class", lnkHome.Attributes["class"] + "text-sky-500 font-medium py-2 px-3 rounded-md bg-opacity-20 bg-sky-200 shadow-inner");
                    break;

                case "About":
                    lnkAbout.Attributes.Add("class", lnkAbout.Attributes["class"] + "text-sky-500 font-medium py-2 px-3 rounded-md bg-opacity-20 bg-sky-200 shadow-inner");
                    break;

                case "Contact":
                    lnkContact.Attributes.Add("class", lnkContact.Attributes["class"] + "text-sky-500 font-medium py-2 px-3 rounded-md bg-opacity-20 bg-sky-200 shadow-inner");
                    break;
                
                case "CostForm":
                    lnkServices.Attributes.Add("class", lnkServices.Attributes["class"] + "text-sky-500 font-medium py-2 px-3 rounded-md bg-opacity-20 bg-sky-200 shadow-inner");
                    break;
            }
        }
    }
}