﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.Registros
{
    public partial class EntradadeActivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fechaTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
    }
}