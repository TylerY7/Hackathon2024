﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telehealth_Hackathon2024
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void signupBtn_Click(object sender, EventArgs e)
    {
        //add if statements here to determine if 
        //patient, doctor, or admin logged in
        Response.Redirect("patientaccount.aspx");
    }
}
}