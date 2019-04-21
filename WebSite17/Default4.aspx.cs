using System;
using Microsoft.VisualBasic;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
       
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //購屋
        double age;
        age = Convert.ToDouble(TextBox1.Text);
        double A1;
        double A2;
        double A3;
        double A4;
     
        A1 = Financial.FV(   Convert.ToDouble(TextBox7.Text) / 100, Convert.ToDouble(TextBox4.Text) - age, 0, -Convert.ToDouble(TextBox5.Text)) + Convert.ToDouble(TextBox6.Text) ;
        if (Convert.ToDouble(TextBox8.Text) > 0)
        {
            A2 = (A1 - Convert.ToDouble(TextBox6.Text)) * (Convert.ToDouble(TextBox8.Text) / 100);
        }
        else
        {
            A2 = 0;
        }

        A3 = A1 - A2;
        if (A2 > 0)
        {
            A4 = Financial.Pmt(Convert.ToDouble(TextBox10.Text) / 100 / 12, Convert.ToDouble(TextBox9.Text) * 12, -A2);
        }
        else
        {
            A4 = 0;
        }

        Label6.Text = Convert.ToString(Math.Round(A1, 0));
        Label7.Text = Convert.ToString(Math.Round(A2, 0));
        Label8.Text = Convert.ToString(Math.Round(A3, 0));
       
        Panel6.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        double age;
        age = Convert.ToDouble(TextBox1.Text);
        double A1;
        double A2;
        double A3;
        double A4;
        A1 = Financial.FV(Convert.ToDouble(TextBox14.Text) / 100, Convert.ToDouble(TextBox11.Text) - age, 0, -Convert.ToDouble(TextBox12.Text)) + Convert.ToDouble(TextBox13.Text);
        if (Convert.ToDouble(TextBox15.Text) > 0)
        {
            A2 = (A1 - Convert.ToDouble(TextBox13.Text)) * (Convert.ToDouble(TextBox15.Text) / 100);
        }
        else
        {
            A2 = 0;
        }

        A3 = A1 - A2;
        if (A2 > 0)
        {
            A4 = Financial.Pmt(Convert.ToDouble(TextBox17.Text) / 100 / 12, Convert.ToDouble(TextBox16.Text) * 12, -A2);
        }
        else
        {
            A4 = 0;
        }

        Label10.Text = Convert.ToString(Math.Round(A1, 0));
        Label11.Text = Convert.ToString(Math.Round(A2, 0));
        Label12.Text = Convert.ToString(Math.Round(A3, 0));
        
        Panel7.Visible = true;
    }



    protected void Button7_Click(object sender, EventArgs e)
    {
        double ans=0;
        double [] edup = new double[50] ;
        int i;
        double [] eduf = new double[50]; ;
        double []carep = new double[50]; ;
        double []caref = new double[50]; ;
        double n;
        double j;
        if (Convert.ToDouble(TextBox42.Text) > 0)
        {
            if (TextBox35.Text == "")
            {
                Label25.Visible = true;
            }
            else
            {
                Label25.Visible = false;
                for (i = 0; i <= Convert.ToInt32(TextBox42.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text));
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox35.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox43.Text) > 0)
        {
            if (TextBox29.Text == "" || TextBox36.Text == "")
            {
                Label26.Visible = true;
            }
            else
            {
                Label26.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToDouble(TextBox43.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox36.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox29.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox44.Text) > 0)
        {
            if (TextBox30.Text == "" | TextBox37.Text == "")
            {
                Label27.Visible = true;
            }
            else
            {
                Label27.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox43.Text);
                }
                else if (Convert.ToDouble(TextBox43.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox43.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToInt32(TextBox44.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox37.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox30.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox45.Text) > 0)
        {
            if (TextBox31.Text == "" | TextBox38.Text == "")
            {
                Label28.Visible = true;
            }
            else
            {
                Label28.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text);
                }
                else if (Convert.ToDouble(TextBox43.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text);
                }
                else if (Convert.ToDouble(TextBox44.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox44.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToInt32(TextBox45.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox38.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox31.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox46.Text) > 0)
        {
            if (TextBox32.Text == "" | TextBox39.Text == "")
            {
                Label29.Visible = true;
            }
            else
            {
                Label29.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text);
                }
                else if (Convert.ToDouble(TextBox43.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text);
                }
                else if (Convert.ToDouble(TextBox44.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text);
                }
                else if (Convert.ToDouble(TextBox45.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox45.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToInt32(TextBox46.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox39.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox32.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox47.Text) > 0)
        {
            if (TextBox33.Text == "" | TextBox40.Text == "")
            {
                Label30.Visible = true;
            }
            else
            {
                Label30.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text);
                }
                else if (Convert.ToDouble(TextBox43.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text);
                }
                else if (Convert.ToDouble(TextBox44.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text);
                }
                else if (Convert.ToDouble(TextBox45.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text);
                }
                else if (Convert.ToDouble(TextBox46.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox46.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToInt32(TextBox47.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox40.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox33.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        if (Convert.ToDouble(TextBox48.Text) > 0)
        {
            if (TextBox34.Text == "" | TextBox41.Text == "")
            {
                Label31.Visible = true;
            }
            else
            {
                Label31.Visible = false;
                if (Convert.ToDouble(TextBox42.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox47.Text);
                }
                else if (Convert.ToDouble(TextBox43.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox47.Text);
                }
                else if (Convert.ToDouble(TextBox44.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox47.Text);
                }
                else if (Convert.ToDouble(TextBox45.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox47.Text);
                }
                else if (Convert.ToDouble(TextBox46.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox47.Text);
                }
                else if (Convert.ToDouble(TextBox47.Text) > 0)
                {
                    j = Convert.ToDouble(TextBox47.Text);
                }
                else
                {
                    j = 0;
                }

                for (i = 0; i <= Convert.ToInt32(TextBox48.Text) - 1; i++)
                {
                    n = i + (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)) + j;
                    caref[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, n, 0, -Convert.ToDouble(TextBox41.Text));
                    carep[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -caref[i]);
                    ans = ans + carep[i];
                    eduf[i] = Financial.FV(Convert.ToDouble(TextBox3.Text) / 100, n, 0, -Convert.ToDouble(TextBox34.Text));
                    edup[i] = Financial.PV(Convert.ToDouble(TextBox3.Text) / 100, n - (Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text)), 0, -eduf[i]);
                    ans = ans + edup[i];
                }
            }
        }

        double ans2;
        if (Convert.ToDouble(TextBox49.Text) > 0)
        {
            ans2 = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(TextBox49.Text));
        }
        else
        {
            ans2 = 0;
        }

        Label20.Text = Convert.ToString(Math.Round(ans, 0));
        Label21.Text = Convert.ToString(Math.Round(ans2, 0));
        Label22.Text = Convert.ToString(Math.Round(ans - ans2, 0));
        Panel10.Visible = true;
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            
            Label23.Visible = true;
            Label24.Visible = true;
            TextBox50.Visible = true;
        }
        else if (RadioButton2.Checked == false)
        {
          
            Label23.Visible = false;
            Label24.Visible = false;
            TextBox50.Visible = false;
            TextBox50.Text = TextBox1.Text;
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Label18.Text = Convert.ToString(Convert.ToInt32(TextBox20.Text) - Convert.ToInt32(TextBox18.Text));
        Label19.Text = Convert.ToString(Math.Round(Financial.FV(Convert.ToDouble(TextBox2.Text) / 100 / 12, (Convert.ToDouble(TextBox18.Text) - Convert.ToDouble(TextBox1.Text)) * 12, 0, -Convert.ToDouble(TextBox19.Text), DueDate.BegOfPeriod), 0));
        double[] f=new double[100];
        double []p = new double[100];
        int i;
        double sum = 0;
        for (i = 0; i <= Convert.ToDouble(Label18.Text); i++)
        {
            f[i] = Financial.FV(Convert.ToDouble(TextBox2.Text) / 100, i + Convert.ToDouble(TextBox18.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(TextBox19.Text) * 12, DueDate.BegOfPeriod);
            p[i] = Financial.PV(Convert.ToDouble(TextBox2.Text) / 100, i, 0, -f[i], DueDate.BegOfPeriod);
            sum = sum + p[i];
        }

        Label15.Text = Convert.ToString(Math.Round(sum, 0));

        Panel5.Visible = true;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        if (Label12.Text != "")
        {
            if (Convert.ToDouble(TextBox11.Text) > Convert.ToDouble(TextBox1.Text))
            {
                Label66.Text = Convert.ToDouble(TextBox11.Text) - Convert.ToDouble(TextBox1.Text) + "年後";
                Label67.Text = Convert.ToString(Math.Round(Financial.Pmt(Convert.ToDouble(TextBox67.Text) / 100, Convert.ToDouble(TextBox11.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(Label12.Text)) / 12, 0));
            }
            else if (Convert.ToDouble(TextBox11.Text) == Convert.ToDouble(TextBox1.Text))
            {
                Label66.Text = "今年";
                Label67.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label12.Text) / 12, 0));
            }
        }
        else
        {
            Label66.Text = "無購車計畫";
        }

        if (Label8.Text != "")
        {
            if (Convert.ToDouble(TextBox4.Text) > Convert.ToDouble(TextBox1.Text))
            {
                Label54.Text = Convert.ToDouble(TextBox4.Text) - Convert.ToDouble(TextBox1.Text) + "年後";
                Label61.Text = Convert.ToString(Math.Round(Financial.Pmt(Convert.ToDouble(TextBox67.Text) / 100, Convert.ToDouble(TextBox4.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(Label8.Text)) / 12, 0));
            }
            else if (Convert.ToDouble(TextBox4.Text) == Convert.ToDouble(TextBox1.Text))
            {
                Label54.Text = "今年";
                Label61.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label8.Text) / 12, 0));
            }
        }
        else
        {
            Label54.Text = "無購屋計畫";
        }

        Label77.Text = "購屋";
        Label78.Text = "購車";
        Label79.Text = "教育";
        Label80.Text = "退休";
        if (Label15.Text != "")
        {
            if (Convert.ToDouble(TextBox18.Text) > Convert.ToDouble(TextBox1.Text))
            {
                Label55.Text = Convert.ToDouble(TextBox18.Text) - Convert.ToDouble(TextBox1.Text) + "年後";
                Label62.Text = Convert.ToString(Math.Round(Financial.Pmt(Convert.ToDouble(TextBox67.Text) / 100, Convert.ToDouble(TextBox18.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(Label15.Text)) / 12, 0));
            }
            else if (Convert.ToDouble(TextBox18.Text) == Convert.ToDouble(TextBox1.Text))
            {
                Label55.Text = "今年";
                Label62.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label15.Text) / 12, 0));
            }

            Label79.Text = "退休規劃";
        }
        else
        {
            Label55.Text = "無退休計劃";
        }

        if (Label22.Text != "")
        {
            if (RadioButton1.Checked == true)
            {
                Label56.Text = "今年";
                Label63.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label22.Text) / 12, 0));
            }
            else if (RadioButton2.Checked == true)
            {
                if (Convert.ToDouble(TextBox50.Text) > Convert.ToDouble(TextBox1.Text))
                {
                    Label56.Text = Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text) + "年後";
                    Label63.Text = Convert.ToString(Math.Round(Financial.Pmt(Convert.ToDouble(TextBox67.Text) / 100, Convert.ToDouble(TextBox50.Text) - Convert.ToDouble(TextBox1.Text), 0, -Convert.ToDouble(Label22.Text)) / 12, 0));
                }
                else if (Convert.ToDouble(TextBox50.Text) == Convert.ToDouble(TextBox1.Text))
                {
                    Label56.Text = "今年";
                    Label63.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label22.Text) / 12, 0));
                }
            }

            Label80.Text = "子女養育";
        }
        else
        {
            Label56.Text = "無子女養育計畫";
        }

      

        Label[] la =new Label[] { Label61, Label67, Label62, Label63, Label64, Label69, Label71, Label73} ;
        int i;
       
        Label59.Text = "0";
        for (i = 0; i <= 7; i++)
        {
            if (la[i].Text != "")
            {
                if (Label59.Text == "")
                {
                    Label59.Text = Convert.ToString(Math.Round(Convert.ToDouble(Strings.Mid(la[i].Text, Strings.InStr(la[i].Text, "$") + 1)), 0));
                }
                else
                {
                    Label59.Text = Convert.ToString(Math.Round(Convert.ToDouble(Label59.Text) + Convert.ToDouble(Strings.Mid(la[i].Text, Strings.InStr(la[i].Text, "$") + 1)), 0));
                }
            }
        }

        Label59.Visible = true;
        Label60.Visible = true;
        double [] p=new double[4];
        string[] s=new string[] { "購屋", "購車", "退休規劃", "子女養育費" };
        int j;
        string []ss =new string[4];
      
        j = 0;
        for (i = 0; i <= 7; i++)
        {
            if (la[i].Text != "")
            {
                p[j] = Convert.ToDouble(Strings.Mid(la[i].Text, Strings.InStr(la[i].Text, "$") + 1)) / Convert.ToDouble(Label59.Text);
                ss[j] = s[i];
                j = j + 1;
            }
        }

        Chart1.Series[0].Points.DataBindXY(ss, p);
    }
}