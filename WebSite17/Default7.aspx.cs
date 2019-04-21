using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }

   
    public double[] test()
    {
        double[,] nn = new double[2, 2] { { 0.036, 0.03218 }, { 0.0365, 0.03389 } };
        return nn;
    }
}