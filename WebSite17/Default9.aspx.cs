using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default9 : System.Web.UI.Page
{
   // public static string getUrl = "hh";

    protected void Page_Load(object sender, EventArgs e)
    {
        // aa = Request.QueryString("aa").l;
        // bb = Request.QueryString[bb];
        //Response.Write(aa+bb);
        List<string> test = new List<string>();
    }
    public static string getUrl()
    {
        double[,] nn = new double[,] {
   {0.036 ,  0.0365 , 0.0372 , 0.039  , 0.04  ,  0.042  , 0.042 ,  0.043 ,  0.0455 , 0.0475 , 0.05 ,   0.055 ,  0.061 ,  0.067  , 0.077  , 0.079 ,  0.085  , 0.086  , 0.087  , 0.088  , 0.09  ,  0.097  , 0.111 ,  0.124  , 0.14  ,  0.148},
   {0.03218 ,0.03389 ,0.03425, 0.03557 ,0.03677, 0.037  , 0.03706 ,0.03811, 0.03871, 0.04003 ,0.04205 ,0.044  , 0.04527 ,0.04591 ,0.047  , 0.0472 , 0.0482 , 0.0484 , 0.0487 , 0.04963, 0.05022 ,0.05171, 0.05224, 0.05321, 0.05415, 0.0551 }
};

        
        string tt=null;
        for(int i = 0; i <=  1; i++)
        {
            for (int j = 0; j <= nn.Length / 2 - 1; j++)
            {
                tt += nn[i, j]+",";
            }
        }
      
        return tt;
    }
}