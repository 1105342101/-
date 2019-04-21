using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    public int fund_count;
    public string fromdatasource;
    public string fromdata;
    public string fromdata2;




    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        /*
        //
        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata = "[富邦策略績效分析$]";
                break;
        }
        //
        */
        
        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata = "[績效分析$]";
                break;
            case 1:
                fromdata = "[績效分析2014.4.1-2017.3.31$]";
                break;
            case 2:
                fromdata = "[績效分析2014.7.1-2017.6.30$]";
                break;
            case 3:
                fromdata = "[績效分析2014.10.1-2017.9.30$]";
                break;
            case 4:
                fromdata = "[績效分析2015.1.1-2017.12.31$]";
                break;
        }
       
           
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["FundConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT  min([日報酬率]),max([日報酬率]),min([最大虧損(%)]),max([最大虧損(%)]),min([勝率]),max([勝率]),min([交易次數]),max([交易次數]),min([獲利因子]),max([獲利因子]),min([夏普比率]),max([夏普比率])FROM"+fromdata, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            TextBox[] t = new TextBox[12] { TextBox40, TextBox41, TextBox46, TextBox47, TextBox38, TextBox39, TextBox42, TextBox43, TextBox44, TextBox45, TextBox48, TextBox49 };
            if (dr.Read())
            {
                for (int i = 0; i <= t.Length - 1; i++)
                {
                    t[i].Text = Convert.ToString(dr[i]);
                }
            }
        if (!Page.IsPostBack)
        {
            AddDefaultFirstRecord();   
        }

        int FundCount = Convert.ToInt32(DropDownList19.Text);//基金個數
        int TradCount = GridView3.Rows.Count;//策略個數
        int sumcount = FundCount + TradCount;//基金加策略總數

        if (FundCount == 0)
        {
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            TextBox12.Enabled = false;
            TextBox13.Enabled = false;
            TextBox14.Enabled = false;
            TextBox15.Enabled = false;
            TextBox16.Enabled = false;
            TextBox17.Enabled = false;
            TextBox18.Enabled = false;
            TextBox19.Enabled = false;
            TextBox20.Enabled = false;
            TextBox21.Enabled = false;
            TextBox22.Enabled = false;
            TextBox23.Enabled = false;
            TextBox24.Enabled = false;
            TextBox26.Enabled = false;
            TextBox27.Enabled = false;
        }
        else
        {
            TextBox7.Enabled = true;
            TextBox8.Enabled = true;
            TextBox9.Enabled = true;
            TextBox10.Enabled = true;
            TextBox11.Enabled = true;
            TextBox12.Enabled = true;
            TextBox13.Enabled = true;
            TextBox14.Enabled = true;
            TextBox15.Enabled = true;
            TextBox16.Enabled = true;
            TextBox17.Enabled = true;
            TextBox18.Enabled = true;
            TextBox19.Enabled = true;
            TextBox20.Enabled = true;
            TextBox21.Enabled = true;
            TextBox22.Enabled = true;
            TextBox23.Enabled = true;
            TextBox24.Enabled = true;
            TextBox26.Enabled = true;
            TextBox27.Enabled = true;
        }
        if(FundCount!=0 && TradCount != 0)
        {
            TextBox50.Enabled = true;
            TextBox52.Enabled = true;
            TextBox53.Enabled = true;
            TextBox54.Enabled = true;
        }
        else
        {
            TextBox50.Enabled = false;
            TextBox52.Enabled = false;
            TextBox53.Enabled = false;
            TextBox54.Enabled = false;
        }
    }
    private void AddDefaultFirstRecord()
    {
        int FundCount = Convert.ToInt32(DropDownList19.Text);//基金個數
        int TradCount = GridView3.Rows.Count;//策略個數
        int sumcount = FundCount + TradCount;//基金加策略總數

        //動態調整
        ///creating dataTable   
        DataTable dt = new DataTable();
        DataRow dr;
        dt.TableName = "AuthorBooks";
        /*switch (sumcount)
        {
            case 0:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                break;
            case 1:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 2:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 3:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 4:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 5:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 6:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("標的六", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 7:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("標的六", typeof(string)));
                dt.Columns.Add(new DataColumn("標的七", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 8:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("標的六", typeof(string)));
                dt.Columns.Add(new DataColumn("標的七", typeof(string)));
                dt.Columns.Add(new DataColumn("標的八", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 9:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("標的六", typeof(string)));
                dt.Columns.Add(new DataColumn("標的七", typeof(string)));
                dt.Columns.Add(new DataColumn("標的八", typeof(string)));
                dt.Columns.Add(new DataColumn("標的九", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
            case 10:
                dt.Columns.Add(new DataColumn("時間", typeof(string)));
                dt.Columns.Add(new DataColumn("標的一", typeof(string)));
                dt.Columns.Add(new DataColumn("標的二", typeof(string)));
                dt.Columns.Add(new DataColumn("標的三", typeof(string)));
                dt.Columns.Add(new DataColumn("標的四", typeof(string)));
                dt.Columns.Add(new DataColumn("標的五", typeof(string)));
                dt.Columns.Add(new DataColumn("標的六", typeof(string)));
                dt.Columns.Add(new DataColumn("標的七", typeof(string)));
                dt.Columns.Add(new DataColumn("標的八", typeof(string)));
                dt.Columns.Add(new DataColumn("標的九", typeof(string)));
                dt.Columns.Add(new DataColumn("標的十", typeof(string)));
                dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
                dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
                break;
        }*/
        dt.Columns.Add(new DataColumn("時間", typeof(string)));
        dt.Columns.Add(new DataColumn("標的一", typeof(string)));
        dt.Columns.Add(new DataColumn("標的二", typeof(string)));
        dt.Columns.Add(new DataColumn("標的三", typeof(string)));
        dt.Columns.Add(new DataColumn("標的四", typeof(string)));
        dt.Columns.Add(new DataColumn("標的五", typeof(string)));
        dt.Columns.Add(new DataColumn("標的六", typeof(string)));
        dt.Columns.Add(new DataColumn("標的七", typeof(string)));
        dt.Columns.Add(new DataColumn("標的八", typeof(string)));
        dt.Columns.Add(new DataColumn("標的九", typeof(string)));
        dt.Columns.Add(new DataColumn("標的十", typeof(string)));
      //  dt.Columns.Add(new DataColumn("標的十一", typeof(string)));
    //    dt.Columns.Add(new DataColumn("標的十二", typeof(string)));
      //  dt.Columns.Add(new DataColumn("標的十三", typeof(string)));
      //  dt.Columns.Add(new DataColumn("標的十四", typeof(string)));
      //  dt.Columns.Add(new DataColumn("標的十五", typeof(string)));
        dt.Columns.Add(new DataColumn("投組報酬", typeof(string)));
        dt.Columns.Add(new DataColumn("投組變異數", typeof(string)));
        dr = dt.NewRow();
        dt.Rows.Add(dr);
        
        //saving databale into viewstate   
        ViewState["AuthorBooks"] = dt;
        //bind Gridview  
        GridView4.DataSource = dt;
        GridView4.DataBind();
        
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button3.Enabled = true;
        Button9.Disabled = false;
       
        Label101.Visible = false;
        Label103.Visible = false;
        Label104.Visible = false;
        Label105.Visible = false;
        CheckBox[] COMPANY = new CheckBox[4] { CheckBox8, CheckBox20, CheckBox22, CheckBox27 };
        CheckBox[] REGIONAL = new CheckBox[3] { CheckBox11, CheckBox12, CheckBox21 };
        CheckBox[] AREA = new CheckBox[8] { CheckBox13, CheckBox14, CheckBox15, CheckBox18, CheckBox23, CheckBox28, CheckBox32, CheckBox40 };
        CheckBox[] TYPE = new CheckBox[10] { CheckBox1, CheckBox2, CheckBox3, CheckBox4, CheckBox5, CheckBox6, CheckBox7, CheckBox25, CheckBox26, CheckBox47 };
        string[] A = new string[4];
        string[] C = new string[3];
        string[] D = new string[10];
        string[] F = new string[10];
        int a1 = 0;
        int a3 = 0;
        int a4 = 0;
        int a5 = 0;
        int i = 0;



        //判斷經理公司打勾
        for (i = 0; i <= 3; i++)
        {
            if (COMPANY[i].Checked)
            {
                A[a1] = COMPANY[i].Text;
                a1++;
            }
        }
        if (a1 == 0)
        {
            Label101.Visible = true;
            return;
        }
        //判斷區域性打勾
        for (i = 0; i <= 2; i++)
        {
            if (REGIONAL[i].Checked)
            {
                C[a3] = REGIONAL[i].Text;
                a3 = a3 + 1;
            }
        }
        if (a3 == 0)
        {
            Label103.Visible = true;
            return;
        }
        //判斷投資區域打勾
        for (i = 0; i <= 7; i++)
        {
            if (AREA[i].Checked)
            {
                D[a4] = AREA[i].Text;
                a4 = a4 + 1;
            }
        }
        if (a4 == 0)
        {
            Label104.Visible = true;
            return;
        }
        //判斷基金類型
        for (i = 0; i <= 9; i++)
        {
            if (TYPE[i].Checked)
            {
                F[a5] = TYPE[i].Text;
                a5 = a5 + 1;
            }
        }
        if (a5 == 0)
        {
            Label105.Visible = true;
            return;
        }
        string COM = null;
        string REG = null;
        string ARE = null;
        string TYP = null;
        string[] ANS = null;
        string RESULT = null;
        //合併經理公司有打勾
        if (a1 > 1)
        {
            for (i = 0; i <= a1 - 1; i++)
            {
                if (i == a1 - 1)
                {
                    COM += "[投信公司] LIKE N'" + A[i] + "')";
                }
                else if (i == 0)
                {
                    COM += "([投信公司] LIKE N'" + A[i] + "'OR ";
                }
                else
                {
                    COM += "[投信公司] LIKE N'" + A[i] + "'OR ";
                }
            }
        }
        else if (a1 == 1)
        {
            COM += "[投信公司] LIKE N'" + A[0] + "'";
        }
        //合併區域性有打勾
        if (a3 > 1)
        {
            for (i = 0; i <= a3 - 1; i++)
            {
                if (i == a3 - 1)
                {
                    REG += "[區域性] LIKE N'" + C[i] + "')";
                }
                else if (i == 0)
                {
                    REG += "([區域性] LIKE N'" + C[i] + "'OR ";
                }
                else
                {
                    REG += "[區域性] LIKE N'" + C[i] + "'OR ";
                }
            }
        }
        else if (a3 == 1)
        {
            REG += "[區域性] LIKE N'" + C[0] + "'";
        }
        //合併投資地區有打勾
        if (a4 > 1)
        {
            for (i = 0; i <= a4 - 1; i++)
            {
                if (i == a4 - 1)
                {
                    ARE += "[投資地區] LIKE N'%" + D[i] + "%')";
                }
                else if (i == 0)
                {
                    ARE += "([投資地區] LIKE N'%" + D[i] + "%'OR ";
                }
                else
                {
                    ARE += "[投資地區] LIKE N'%" + D[i] + "%'OR ";
                }
            }
        }
        else if (a4 == 1)
        {
            ARE += "[投資地區] LIKE N'%" + D[0] + "%'";
        }
        //合併基金類型有打勾
        if (a5 > 1)
        {
            for (i = 0; i <= a5 - 1; i++)
            {
                if (i == a5 - 1)
                {
                    TYP += "[基金類型] LIKE N'" + F[i] + "')";
                }
                else if (i == 0)
                {
                    TYP += "([基金類型] LIKE N'" + F[i] + "'OR ";
                }
                else
                {
                    TYP += "[基金類型] LIKE N'" + F[i] + "'OR ";
                }
            }
        }
        else if (a5 == 1)
        {
            TYP += "[基金類型] LIKE N'" + F[0] + "'";
        }
        //將所有字串用AND串聯
        ANS = new string[4] { COM, REG, ARE, TYP };

        for (i = 0; i <= 3; i++)
        {
            if (RESULT == "")
            {
                RESULT = ANS[i];
            }
            else
            {
                RESULT = ANS[0] + "AND" + ANS[1] + "AND" + ANS[2] + "AND" + ANS[3];
            }
        }


        //成立日
        /*string BEGIN = null;
        string LAST = null;
        BEGIN = Convert.ToDateTime(TextBox28.Text).ToString("yyyy/M/d");
        LAST = Convert.ToDateTime(TextBox29.Text).ToString("yyyy/M/d");*/
        //風險等級
        double lowrisk = 0;
        double hightrisk = 0;
        lowrisk = Convert.ToDouble(TextBox30.Text);
        hightrisk = Convert.ToDouble(TextBox31.Text);

        //

        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata2 = "[基金基本資料$]";
                break;
            case 1:
                fromdata2 = "[基金基本資料2014.4.1-2017.3.31$]";
                break;
            case 2:
                fromdata2 = "[基金基本資料2014.7.1-2017.6.30$]";
                break;
            case 3:
                fromdata2 = "[基金基本資料2014.10.1-2017.9.30$]";
                break;
            case 4:
                fromdata2 = "[基金基本資料2015.1.1-2017.12.31$]";
                break;
        }
        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr = "SELECT [平均報酬率(%)] , [風險(變異數)(%)] FROM"+ fromdata2 + "WHERE " + RESULT + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [夏普指數] DESC";

        // "%'OR [FundName] LIKE N'" + fu[1] + "%'OR [FundName] LIKE N'" + fu[2] + "%'OR [FundName] LIKE N'" + fu[3] + "%'OR [FundName] LIKE N'" + fu[4] + "%'OR [FundName] LIKE N'" + fu[5] + "%'OR [FundName] LIKE N'" + fu[6] + "%'OR [FundName] LIKE N'" + fu[7] + "%'OR [FundName] LIKE N'" + fu[8] + "%'OR [FundName] LIKE N'" + fu[9];

        SqlDataAdapter oda = new SqlDataAdapter(queryStr, conn);
        DataTable dt = new DataTable("PURTD");
        //利用SqlDataAdapter的Fill方法將DB取出的data塞入DataTable中,再利用DataTable取出值
        oda.Fill(dt);
        object[][] LoadData = new object[dt.Rows.Count][];
        for (int k = 0; k < dt.Rows.Count; k++)
        {
            LoadData[k] = new object[dt.Columns.Count];
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                LoadData[k][j] = dt.Rows[k][j].ToString();
            }
        }

        double average_sum = 0;
        double var_sum = 0;
        for (int k = 0; k <= LoadData.Length - 1; k++)
        {
            average_sum += Convert.ToDouble(LoadData[k][0]);
            var_sum += Convert.ToDouble(LoadData[k][1]);
        }
        average_sum = average_sum / LoadData.Length;
        var_sum = var_sum / LoadData.Length;
        TextBox1.Text = Convert.ToString(Math.Round(average_sum, 3));
        TextBox2.Text = Convert.ToString(Math.Round(var_sum, 3));
        //
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button3.Enabled = true;
        Button9.Disabled = false;

        Label101.Visible = false;
        Label103.Visible = false;
        Label104.Visible = false;
        Label105.Visible = false;
        CheckBox[] COMPANY = new CheckBox[4] { CheckBox8, CheckBox20, CheckBox22, CheckBox27 };
        CheckBox[] REGIONAL = new CheckBox[3] { CheckBox11, CheckBox12, CheckBox21 };
        CheckBox[] AREA = new CheckBox[8] { CheckBox13, CheckBox14, CheckBox15, CheckBox18, CheckBox23, CheckBox28, CheckBox32, CheckBox40 };
        CheckBox[] TYPE = new CheckBox[10] { CheckBox1, CheckBox2, CheckBox3, CheckBox4, CheckBox5, CheckBox6, CheckBox7, CheckBox25, CheckBox26, CheckBox47 };
        string[] A = new string[4];
        string[] C = new string[3];
        string[] D = new string[10];
        string[] F = new string[10];
        int a1 = 0;
        int a3 = 0;
        int a4 = 0;
        int a5 = 0;
        int i = 0;
        //判斷經理公司打勾
        for (i = 0; i <= 3; i++)
        {
            if (COMPANY[i].Checked)
            {
                A[a1] = COMPANY[i].Text;
                a1++;
            }
        }
        if (a1 == 0)
        {
            Label101.Visible = true;
            return;
        }
        //判斷區域性打勾
        for (i = 0; i <= 2; i++)
        {
            if (REGIONAL[i].Checked)
            {
                C[a3] = REGIONAL[i].Text;
                a3 = a3 + 1;
            }
        }
        if (a3 == 0)
        {
            Label103.Visible = true;
            return;
        }
        //判斷投資區域打勾
        for (i = 0; i <= 7; i++)
        {
            if (AREA[i].Checked)
            {
                D[a4] = AREA[i].Text;
                a4 = a4 + 1;
            }
        }
        if (a4 == 0)
        {
            Label104.Visible = true;
            return;
        }
        //判斷基金類型
        for (i = 0; i <= 9; i++)
        {
            if (TYPE[i].Checked)
            {
                F[a5] = TYPE[i].Text;
                a5 = a5 + 1;
            }
        }
        if (a5 == 0)
        {
            Label105.Visible = true;
            return;
        }
        string COM = null;
        string REG = null;
        string ARE = null;
        string TYP = null;
        string[] ANS = null;
        string RESULT = null;
        //合併經理公司有打勾
        if (a1 > 1)
        {
            for (i = 0; i <= a1 - 1; i++)
            {
                if (i == a1 - 1)
                {
                    COM += "[投信公司] LIKE N'" + A[i] + "')";
                }
                else if (i == 0)
                {
                    COM += "([投信公司] LIKE N'" + A[i] + "'OR ";
                }
                else
                {
                    COM += "[投信公司] LIKE N'" + A[i] + "'OR ";
                }
            }
        }
        else if (a1 == 1)
        {
            COM += "[投信公司] LIKE N'" + A[0] + "'";
        }
        //合併區域性有打勾
        if (a3 > 1)
        {
            for (i = 0; i <= a3 - 1; i++)
            {
                if (i == a3 - 1)
                {
                    REG += "[區域性] LIKE N'" + C[i] + "')";
                }
                else if (i == 0)
                {
                    REG += "([區域性] LIKE N'" + C[i] + "'OR ";
                }
                else
                {
                    REG += "[區域性] LIKE N'" + C[i] + "'OR ";
                }
            }
        }
        else if (a3 == 1)
        {
            REG += "[區域性] LIKE N'" + C[0] + "'";
        }
        //合併投資地區有打勾
        if (a4 > 1)
        {
            for (i = 0; i <= a4 - 1; i++)
            {
                if (i == a4 - 1)
                {
                    ARE += "[投資地區] LIKE N'%" + D[i] + "%')";
                }
                else if (i == 0)
                {
                    ARE += "([投資地區] LIKE N'%" + D[i] + "%'OR ";
                }
                else
                {
                    ARE += "[投資地區] LIKE N'%" + D[i] + "%'OR ";
                }
            }
        }
        else if (a4 == 1)
        {
            ARE += "[投資地區] LIKE N'%" + D[0] + "%'";
        }
        //合併基金類型有打勾
        if (a5 > 1)
        {
            for (i = 0; i <= a5 - 1; i++)
            {
                if (i == a5 - 1)
                {
                    TYP += "[基金類型] LIKE N'" + F[i] + "')";
                }
                else if (i == 0)
                {
                    TYP += "([基金類型] LIKE N'" + F[i] + "'OR ";
                }
                else
                {
                    TYP += "[基金類型] LIKE N'" + F[i] + "'OR ";
                }
            }
        }
        else if (a5 == 1)
        {
            TYP += "[基金類型] LIKE N'" + F[0] + "'";
        }
        //將所有字串用AND串聯
        ANS = new string[4] { COM, REG, ARE, TYP };

        for (i = 0; i <= 3; i++)
        {
            if (RESULT == "")
            {
                RESULT = ANS[i];
            }
            else
            {
                RESULT = ANS[0] + "AND" + ANS[1] + "AND" + ANS[2] + "AND" + ANS[3];
            }
        }
        //報酬風險
        double r = 0;
        double var = 0;
        r = Convert.ToDouble(TextBox1.Text) / 100;
        var = Convert.ToDouble(TextBox2.Text);
        //成立日
        /*string BEGIN = null;
        string LAST = null;
        BEGIN = Convert.ToDateTime(TextBox28.Text).ToString("yyyy/M/d");
        LAST = Convert.ToDateTime(TextBox29.Text).ToString("yyyy/M/d");*/
        //風險等級
        double lowrisk = 0;
        double hightrisk = 0;
        lowrisk = Convert.ToDouble(TextBox30.Text);
        hightrisk = Convert.ToDouble(TextBox31.Text);

        //

        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata2 = "[基金基本資料$]";
                break;
            case 1:
                fromdata2 = "[基金基本資料2014.4.1-2017.3.31$]";
                break;
            case 2:
                fromdata2 = "[基金基本資料2014.7.1-2017.6.30$]";
                break;
            case 3:
                fromdata2 = "[基金基本資料2014.10.1-2017.9.30$]";
                break;
            case 4:
                fromdata2 = "[基金基本資料2015.1.1-2017.12.31$]";
                break;
        }
        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr = "SELECT [平均報酬率(%)] , [風險(變異數)(%)] FROM"+ fromdata2 + "WHERE " + RESULT + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [夏普指數] DESC";

        // "%'OR [FundName] LIKE N'" + fu[1] + "%'OR [FundName] LIKE N'" + fu[2] + "%'OR [FundName] LIKE N'" + fu[3] + "%'OR [FundName] LIKE N'" + fu[4] + "%'OR [FundName] LIKE N'" + fu[5] + "%'OR [FundName] LIKE N'" + fu[6] + "%'OR [FundName] LIKE N'" + fu[7] + "%'OR [FundName] LIKE N'" + fu[8] + "%'OR [FundName] LIKE N'" + fu[9];

        SqlDataAdapter oda = new SqlDataAdapter(queryStr, conn);
        DataTable dt = new DataTable("PURTD");
        //利用SqlDataAdapter的Fill方法將DB取出的data塞入DataTable中,再利用DataTable取出值
        oda.Fill(dt);
        object[][] LoadData = new object[dt.Rows.Count][];
        for (int k = 0; k < dt.Rows.Count; k++)
        {
            LoadData[k] = new object[dt.Columns.Count];
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                LoadData[k][j] = dt.Rows[k][j].ToString();
            }
        }

        double average_sum = 0;
        double var_sum = 0;
        for (int k = 0; k <= LoadData.Length - 1; k++)
        {
            average_sum += Convert.ToDouble(LoadData[k][0]);
            var_sum += Convert.ToDouble(LoadData[k][1]);
        }
        average_sum = average_sum / LoadData.Length;
        var_sum = var_sum / LoadData.Length;
        //
        int tb32=Convert.ToInt32(DropDownList19.Text);//顯示幾檔基金
        String dd13=Convert.ToString(DropDownList13.SelectedItem);
        SqlDataSource1.SelectCommand = "SELECT TOP "+ tb32 + "[基金], [基金型態], [基金類型], [區域性], [投資地區], [成 立 日] AS 成_立_日, [基金經理費], [基金保管費],[手續費率(%)],[單筆申購], [定期定額], [風險等級], [平均報酬率(%)] , [風險(變異數)(%)] , [台灣], [亞洲], [全球], [新興市場], [股票], [貨幣], [債券], [指數], [保本], [夏普指數] FROM "+fromdata2+" WHERE " + RESULT + " AND [平均報酬率(%)] >" + r + " AND [風險(變異數)(%)] <" + var + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY ["+dd13+"] DESC";       
        GridView1.DataBind();



        //SqlDataSource4.SelectCommand = "SELECT * FROM [基金基本資料] WHERE " + RESULT + " AND [平均報酬率(%)] >" + r + " AND [風險(變異數)] <" + var + " AND ([成立日] > CAST ('" + BEGIN + "' AS DATE) AND [成立日] < CAST ('" + LAST + "' AS DATE)) AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [Sharpe Ratio] DESC";
        //GridView4.DataBind();
        if (GridView1.Rows.Count > 0)
        {
            GridView1.Visible = true;
            Label116.Text = "篩選完成";
        }
        else
        {
            Label116.Text = "沒有適合的基金";
        }

    }
    public double[] main(double lowest_return)
    {
        int FundCount = Convert.ToInt32(DropDownList19.Text);//基金個數
        int TradCount= GridView3.Rows.Count;//策略個數
        int sumcount = FundCount + TradCount;//基金加策略總數

        /*
        //
        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdatasource = "[富邦策略日報酬$]";
                break;
        }
        //
        */

      
        
        switch (DropDownList16.SelectedIndex)
        {
            case 0: fromdatasource = "[基金日報酬$]";
                break;
            case 1:
                fromdatasource = "[基金日報酬2014.4.1-2017.3.31$]";
                break;
            case 2:
                fromdatasource = "[基金日報酬2014.7.1-2017.6.30$]";
                break;
            case 3:
                fromdatasource = "[基金日報酬2014.10.1-2017.9.30$]";
                break;
            case 4:
                fromdatasource = "[基金日報酬2015.1.1-2017.12.31$]";
                break;
        }
         

        string[] fu = new string[FundCount];

        for (int i = 0; i <= FundCount - 1; i++)
        {
            fu[i] = GridView1.Rows[i].Cells[0].Text;
        }

        string[] tr = new string[GridView3.Rows.Count];

        for (int i = 0; i <= GridView3.Rows.Count - 1; i++)
        {
            tr[i] = GridView3.Rows[i].Cells[0].Text;
        }


        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr=null;
        if (FundCount != 0)
        {
             queryStr = "SELECT *FROM" + fromdatasource + "where [FundName] LIKE N'" + fu[0];
            for (int i = 1; i <= FundCount - 1; i++)
            {
                queryStr += "%'OR [FundName] LIKE N'" + fu[i];
            }

            for (int i = 0; i <= GridView3.Rows.Count - 1; i++)
            {
                queryStr += "%'OR [FundName] LIKE N'" + tr[i];
            }
        }
        else if(FundCount == 0)
        {
            queryStr = "SELECT *FROM" + fromdatasource + "where [FundName] LIKE N'"+tr[0] ;
            for (int i = 1; i <= GridView3.Rows.Count - 1; i++)
            {
                queryStr += "%'OR [FundName] LIKE N'" + tr[i];
            }
        }

        

        queryStr += "%'ORDER BY [FundName]";
         //queryStr += "%'ORDER BY [夏普指數] DESC";
        SqlDataAdapter oda = new SqlDataAdapter(queryStr, conn);
        DataTable dt = new DataTable("PURTD");
        //利用SqlDataAdapter的Fill方法將DB取出的data塞入DataTable中,再利用DataTable取出值
        oda.Fill(dt);
        object[][] LoadData = new object[dt.Rows.Count][];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            LoadData[i] = new object[dt.Columns.Count];
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                LoadData[i][j] = dt.Rows[i][j].ToString();
            }
        }
        //將基金名稱放進FORM
        Label[] labary = new Label[] { Label39, Label40, Label41, Label42, Label43, Label44, Label45, Label99, Label108, Label134, Label174, Label175, Label176, Label177, Label178 };
        for (int i = 0; i <= sumcount - 1; i++)
        {
            labary[i].Text = Convert.ToString(LoadData[i][0]);
        }

        //將基金日報酬放進rearray 742=平均報酬率 743=變異數
        int ReturnLiegth=LoadData[0].Length;//日報酬長度
        double[,] rearray = new double[sumcount, ReturnLiegth-2];
        for (int i = 0; i <= sumcount - 1; i++)
        {
            for (int j = 0; j <= ReturnLiegth-1; j++)
            {
                if (LoadData[i][j] == "")
                {
                    LoadData[i][j] = -100;
                }
            }
        }
        for (int i = 0; i <= sumcount - 1; i++)
        {
            for (int j = 0; j <= ReturnLiegth-3; j++)
            {

                rearray[i, j] = Convert.ToDouble(LoadData[i][j + 2]);
            }
        }
        //covar=共變異數矩陣
        double[,] covar = new double[sumcount, sumcount];

        for (int i = 0; i <= sumcount - 1; i++)
        {
            for (int k = 0; k <= sumcount - 1; k++)
            {
                int sum_covar = 0;
                for (int j = 0; j <= ReturnLiegth-5; j++)
                {
                    if ((rearray[k, j] != -100) && (rearray[i, j] != -100))
                    {
                        sum_covar++;
                        covar[i, k] += (rearray[i, j] - rearray[i, ReturnLiegth-4]) * (rearray[k, j] - rearray[k, ReturnLiegth-4]);
                    }
                }
                covar[i, k] = covar[i, k] / (double)(sum_covar - 1);
            }
        }
        //behavior=基金特性 Gridview第11行=風險等級，14~22是基金特性
        Dictionary<string, double[]> be = new Dictionary<string, double[]>();
        for(int i = 0; i <= FundCount - 1; i++)
        {
            double[] beha = new double[10];
            for (int j = 0; j <= 8; j++)
            {
                beha[j] = Convert.ToDouble(GridView1.Rows[i].Cells[14 + j].Text);
            }
            beha[9] = Convert.ToDouble(GridView1.Rows[i].Cells[11].Text);
            be.Add(GridView1.Rows[i].Cells[0].Text,beha);
        }  
        double[,] behavior = new double[FundCount, 10];
        for (int i = 0; i <= FundCount - 1; i++)
        {
            var dddd = be[Convert.ToString(LoadData[i][0])];
            for (int j = 0; j <= dddd.Length-1; j++)
            {
                behavior[i, j] = dddd[j];
            }
        }

       
        //average=基金平均報酬
        double[] average = new double[sumcount];
        for (int i = 0; i <= sumcount - 1; i++)
        {
            average[i] = rearray[i, ReturnLiegth-4];
        }


        //基因演算法
        int population_size = 500;       /*定義族群大小*/
        int population_length = sumcount;      /*定義染色體長度 檔基金*/
        double mutation_rate = 0.01;        /*定義突變率*/
        int max_generation = 3000;      /*定義演化代數*/
        Random crandom = new Random();
        double[] population = new double[population_size];//設定染色體大小
                                                          //weight=基金權重
        double[,] weight = new double[population_size, sumcount];


        //
        double[] population_summation = new double[max_generation];

        //

        //設定染色體初始值
        for (int i = 0; i <= population_size - 1; i++)
        {
            double sum_ga = 0;
            double[] mm = new double[population_length];
            //設定染色體基因             
            for (int j = 0; j <= population_length - 1; j++)
            {
                weight[i, j] = crandom.NextDouble();
                sum_ga += weight[i, j];
            }
            //正規化
            for (int k = 0; k <= population_length - 1; k++)
            {
                weight[i, k] = weight[i, k] / sum_ga;
            }
            //計算函數值             
            population[i] = evluate(covar, weight, population_length, i);
        }
        double opopo = 0;
        for (int i = 0; i <= population_size - 1; i++)
        {
            opopo += population[i];
        }
        //進行3000代演化
        for (int i = 0; i <= max_generation - 1; i++)
        {
            int parents1, parents2;
            for (int j = 0; j <= population_size - 1; j++)
            {
                //交配
                //crossover=基因的交配點
                int crossover = Convert.ToInt32(Math.Floor(crandom.NextDouble() * population_length));
                int[] parents_arrary = select(population, population_size);
                parents1 = parents_arrary[0];
                parents2 = parents_arrary[1];
                for (int k = crossover + 1; k <= population_length - 1; k++)
                {
                    double ca1 = weight[parents1, k];
                    double ca2 = weight[parents2, k];
                    weight[parents1, k] = ca2;
                    weight[parents2, k] = ca1;
                }
                //突變

                double mutation_number1 = crandom.NextDouble();
                if (mutation_number1 <= mutation_rate)
                {
                    //mutation1=基因的突變點
                    double m1 = crandom.NextDouble();
                    int mutation1 = Convert.ToInt32(Math.Floor(m1 * population_length));
                    weight[parents1, mutation1] = mutation_number1;
                }
                double mutation_number2 = crandom.NextDouble();
                if (mutation_number2 <= mutation_rate)
                {
                    //mutation2=基因的突變點
                    double m2 = crandom.NextDouble();
                    int mutation2 = Convert.ToInt32(Math.Floor(m2 * population_length));
                    weight[parents2, mutation2] = mutation_number2;
                }
              

            }
            for (int j = 0; j <= population_size - 1; j++)
            {
                //正規化
                double sum_gaa = 0;
                for (int h = 0; h <= population_length - 1; h++)
                {
                    sum_gaa += weight[j, h];
                }

                for (int k = 0; k <= population_length - 1; k++)
                {
                    weight[j, k] = weight[j, k] / sum_gaa;
                }
            }

            for (int w = 0; w <= population_size - 1; w++)
            {
                population[w] = evluate(covar, weight, population_length, w);
            }
            //
            double population_value = 0;
            for (int w = 0; w <= population_size - 1; w++)
            {
                population_value += population[w];
            }
            population_summation[i] = population_value;
            //
        }

        //
        
        double [] popopo = new double[population_size];
        for(int i=0;i<= population_size - 1; i++)
        {
            double ppp = 0;
            for (int k = 0; k <= population_length - 1; k++)
            {
               ppp+=  weight[i, k];
            }
            popopo[i] = ppp;
        }
        


        double[] result = new double[17];
        double[,] deplay = new double[population_size, 17];

        for (int k = 0; k <= population_size - 1; k++)
        {
            for (int i = 0; i <= 16; i++)
            {
                result[i] = characteristic(behavior, weight, covar, average, population_length, k,FundCount)[i];

            }
            for (int j = 0; j <= 16; j++)
            {
                deplay[k, j] = result[j];
            }

        }
        //投資組合特性參數
        //tb4=最低要求報酬
        double tb4 = lowest_return;
        //tb5=單一標的下限
        double tb5 = Convert.ToDouble(TextBox5.Text) / 100;
        //tb6=單一標的上限
        double tb6 = Convert.ToDouble(TextBox6.Text) / 100;
        //tb7=股票市場投資下限
        double tb7 = Convert.ToDouble(TextBox7.Text) / 100;
        //tb8=股票市場投資上限
        double tb8 = Convert.ToDouble(TextBox8.Text) / 100;
        //tb9=貨幣市場投資下限
        double tb9 = Convert.ToDouble(TextBox9.Text) / 100;
        //tb10=貨幣市場投資上限
        double tb10 = Convert.ToDouble(TextBox10.Text) / 100;
        //tb11=債券市場投資下限
        double tb11 = Convert.ToDouble(TextBox11.Text) / 100;
        //tb12=債券市場投資上限
        double tb12 = Convert.ToDouble(TextBox12.Text) / 100;
        //tb13=指數基金投資下限
        double tb13 = Convert.ToDouble(TextBox13.Text) / 100;
        //tb14=指數基金投資上限
        double tb14 = Convert.ToDouble(TextBox14.Text) / 100;
        //tb15=保本基金投資下限
        double tb15 = Convert.ToDouble(TextBox15.Text) / 100;
        //tb16=保本基金投資上限
        double tb16 = Convert.ToDouble(TextBox16.Text) / 100;
        //tb17=風險等級投資下限
        double tb17 = 0;
        if (FundCount != 0)
        {
            tb17 = Convert.ToDouble(TextBox17.Text);
        }     
        //tb18=風險等級投資上限
        double tb18 = Convert.ToDouble(TextBox18.Text);
        //tb19=台灣市場投資下限
        double tb19 = Convert.ToDouble(TextBox19.Text) / 100;
        //tb20=台灣市場投資上限
        double tb20 = Convert.ToDouble(TextBox20.Text) / 100;
        //tb21=亞洲市場投資下限
        double tb21 = Convert.ToDouble(TextBox21.Text) / 100;
        //tb22=亞洲市場投資上限
        double tb22 = Convert.ToDouble(TextBox22.Text) / 100;
        //tb23=全球市場投資下限
        double tb23 = Convert.ToDouble(TextBox23.Text) / 100;
        //tb24=全球市場投資上限
        double tb24 = Convert.ToDouble(TextBox24.Text) / 100;
        //tb26=新興市場投資下限
        double tb26 = Convert.ToDouble(TextBox26.Text) / 100;
        //tb27=新興市場投資上限
        double tb27 = Convert.ToDouble(TextBox27.Text) / 100;
        //tb50基金加總投資下限
        double tb50 = Convert.ToDouble(TextBox50.Text) / 100;
        //tb52基金加總投資上限
        double tb52 = Convert.ToDouble(TextBox52.Text) / 100;
        //tb53策略加總投資下限
        double tb53 = Convert.ToDouble(TextBox53.Text) / 100;
        //tb54策略加總投資上限
        double tb54 = Convert.ToDouble(TextBox54.Text) / 100;
        for (int i = 0; i <= population_size - 1; i++)
        {
            if (deplay[i, 3] >= 0.99 && 1.001 >= deplay[i, 3] && deplay[i, 2] >= tb4 && deplay[i, 5] >= tb5 && deplay[i, 6] <= tb6 && deplay[i, 7] <= tb8 &&
            deplay[i, 7] >= tb7 && deplay[i, 8] <= tb10 && deplay[i, 8] >= tb9 && deplay[i, 9] <= tb12 && deplay[i, 9] >= tb11 &&
            deplay[i, 10] <= tb14 && deplay[i, 10] >= tb13 && deplay[i, 11] <= tb16 && deplay[i, 11] >= tb15 && deplay[i, 12] <= tb18 &&
            deplay[i, 12] >= tb17 && deplay[i, 13] <= tb20 && deplay[i, 13] >= tb19 && deplay[i, 14] <= tb22 && deplay[i, 14] >= tb21 &&
            deplay[i, 15] <= tb24 && deplay[i, 15] >= tb23 && deplay[i, 16] <= tb27 && deplay[i, 16] >= tb26)
            {
                for (int j = 0; j <= 16; j++)
                {
                    deplay[i, j] = deplay[i, j];
                }
            }
            else
            {
                for (int j = 0; j <= 16; j++)
                {
                    deplay[i, j] = 0;
                }

            }
        }
        //


        for (int i = 0; i <= population_size - 1; i++)
        {
            double weight_fund = 0;
            for(int j = 0; j <= FundCount - 1; j++)
            {
                weight_fund += weight[i, j];
            }
            if(weight_fund<tb50|| weight_fund > tb52)
            {
                for (int k = 0; k <= 16; k++)
                {
                    deplay[i, k] = 0;
                }
            }

            double weight_trad = 0;
            for (int j = FundCount; j <= sumcount - 1; j++)
            {
                weight_trad += weight[i, j];
            }
            if (weight_trad < tb53 || weight_trad > tb54)
            {
                for (int k = 0; k <= 16; k++)
                {
                    deplay[i, k] = 0;
                }
            }

        }



            //
            int sum_deplay = 0;
        for (int i = 0; i <= population_size - 1; i++)
        {
            if (deplay[i, 1] > 0)
            {
                sum_deplay++;
            }
        }



        //
        if (sum_deplay == 0)
        {
            Label154.Text = "沒有找到合適解";
            Button9.Disabled = false;
            double[] ren = new double[2];
            return ren;
        }
        else
        {

            Label154.Text = "";
            //找出result_deplay中的有最高報酬的那一組投資組合
            int location = 0;
            /* int max_number = 0;double Max = 0;
              for(int i = 0; i <= population_size - 1; i++)
              {
                  if(Max< deplay[i, 1] && deplay[i, 1] != 0)
                  {
                      Max = deplay[i, 1];
                      max_number = i;
                  }
              }
              location = max_number;*/

            int min_number = 0; double Min = 10;
            for (int i = 0; i <= population_size - 1; i++)
            {

                if (Min > deplay[i, 1] && deplay[i, 1] != 0)
                {
                    Min = deplay[i, 1];
                    min_number = i;
                }
            }
            location = min_number;

            Label76.Text = Convert.ToString(Math.Round(deplay[location, 0], 3));
            Label78.Text = Convert.ToString(Math.Round(deplay[location, 1], 3));
            Label79.Text = Convert.ToString(Math.Round(deplay[location, 2] * 100, 3)) + "%";
            Label80.Text = Convert.ToString(Math.Round(deplay[location, 3] * 100, 2)) + "%";
            Label81.Text = Convert.ToString(Math.Round(deplay[location, 4], 4));
            Label82.Text = Convert.ToString(Math.Round(deplay[location, 5] * 100, 2)) + "%";
            Label88.Text = Convert.ToString(Math.Round(deplay[location, 6] * 100, 2)) + "%";
            Label83.Text = Convert.ToString(Math.Round(deplay[location, 7] * 100, 2)) + "%";
            Label84.Text = Convert.ToString(Math.Round(deplay[location, 8] * 100, 2)) + "%";
            Label85.Text = Convert.ToString(Math.Round(deplay[location, 9] * 100, 2)) + "%";
            Label86.Text = Convert.ToString(Math.Round(deplay[location, 10] * 100, 2)) + "%";
            Label87.Text = Convert.ToString(Math.Round(deplay[location, 11] * 100, 2)) + "%";
            Label141.Text = Convert.ToString(Math.Round(deplay[location, 12], 4));
            Label89.Text = Convert.ToString(Math.Round(deplay[location, 13] * 100, 2)) + "%";
            Label90.Text = Convert.ToString(Math.Round(deplay[location, 14] * 100, 2)) + "%";
            Label91.Text = Convert.ToString(Math.Round(deplay[location, 15] * 100, 2)) + "%";
            Label93.Text = Convert.ToString(Math.Round(deplay[location, 16] * 100, 2)) + "%";

            Label[] weight_text = new Label[] { Label143, Label144, Label145, Label146, Label147, Label148, Label149, Label150, Label151, Label152, Label179, Label180, Label181, Label182, Label183 };

            for (int i = 0; i <= sumcount - 1; i++)
            {
                weight_text[i].Text = Convert.ToString(Math.Round(weight[location, i] * 100, 2)) + "%";
            }


            //月定期投資=textbox82            
            double tb3 = Convert.ToDouble(TextBox3.Text);
            //定期定額=textbox83            
            double tb25 = Convert.ToDouble(TextBox25.Text);

            Label[] weight_count = new Label[] { Label49, Label50, Label51, Label52, Label53, Label54, Label55, Label100, Label110, Label135, Label184, Label185, Label186, Label187, Label188 };
            for (int i = 0; i <= sumcount - 1; i++)
            {
                weight_count[i].Text = Convert.ToString(Math.Round(tb3 * weight[location, i] / tb25, 0));
            }

           
            //label156=手續費
            //建立手續費字典:基金,<經理費,保管費,手續費>
            Dictionary<string, double[]> FundFee = new Dictionary<string, double[]>();
            for (int i = 0; i <= FundCount - 1; i++)
            {
                double[] beha = new double[3];
                for (int j = 0; j <= 2; j++)
                {
                    
                    if (GridView1.Rows[i].Cells[6 + j].Text !="&nbsp;")
                    {
                        beha[j] = Convert.ToDouble(GridView1.Rows[i].Cells[6 + j].Text);
                    }
                   
                }
                FundFee.Add(GridView1.Rows[i].Cells[0].Text, beha);
            }
            double lab156 = 0;
            for (int i = 0; i <= FundCount - 1; i++)
            {
                double fee = 0;
                for (int j = 0; j <= 2; j++)
                {

                    fee += FundFee[labary[i].Text][j];
               
                }
                lab156 += tb25 * fee * Convert.ToDouble(weight_count[i].Text);
            }
            lab156 += TradCount * 1000;
            Label156.Text = Convert.ToString(Math.Round(lab156,0));



            //回傳變異數,報酬率
            double[] ren = new double[2];
            ren[0] = Math.Round(deplay[location, 0], 5);
            ren[1] = Math.Round(deplay[location, 2], 5);
            return ren;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int FundCount = Convert.ToInt32(DropDownList19.Text);//基金個數
        int TradCount = GridView3.Rows.Count;//策略個數
        int sumcount = FundCount + TradCount;//基金加策略總數



        GridView4.Visible = true;

        double tb4 = Convert.ToDouble(TextBox4.Text) / 100;//要求最低報酬
        main(tb4);

        //
        // check view state is not null  
        string unit = "";
        if (ViewState["AuthorBooks"] != null)
        {
            //get datatable from view state   
            DataTable dtCurrentTable = (DataTable)ViewState["AuthorBooks"];
            DataRow drCurrentRow = null;

            int uu = dtCurrentTable.Rows.Count;
            if (dtCurrentTable.Rows.Count > 0)
            {

                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    /*
                    drCurrentRow = dtCurrentTable.NewRow();
                    if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                    if (Label39.Text != "") drCurrentRow["標的一"] = Label143.Text;
                    if (Label40.Text != "") drCurrentRow["標的二"] = Label144.Text ;
                    if (Label41.Text != "") drCurrentRow["標的三"] = Label145.Text ;
                    if (Label42.Text != "") drCurrentRow["標的四"] = Label146.Text ;
                    if (Label43.Text != "") drCurrentRow["標的五"] = Label147.Text ;
                    if (Label44.Text != "") drCurrentRow["標的六"] = Label148.Text ;
                    if (Label45.Text != "") drCurrentRow["標的七"] = Label149.Text ;
                    if (Label99.Text != "") drCurrentRow["標的八"] = Label150.Text ;
                    if (Label108.Text != "") drCurrentRow["標的九"] = Label151.Text ;
                    if (Label134.Text != "") drCurrentRow["標的十"] =Label152.Text ;
                    if (Label174.Text != "") drCurrentRow["標的十一"] = Label179.Text;
                    if (Label175.Text != "") drCurrentRow["標的十二"] = Label180.Text;
                    if (Label176.Text != "") drCurrentRow["標的十三"] = Label181.Text;
                    if (Label177.Text != "") drCurrentRow["標的十四"] = Label182.Text;
                    if (Label178.Text != "") drCurrentRow["標的十五"] = Label183.Text;
                    if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                    if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                    */

                    
                    //add each row into data table  
                    drCurrentRow = dtCurrentTable.NewRow();
                  /*  switch (sumcount)
                    {
                        case 0:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            break;
                        case 1:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 2:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 3:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 4:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 5:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 6:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 7:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                            if (Label45.Text != "") drCurrentRow["標的七"] = Label45.Text + ":" + Label55.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 8:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                            if (Label45.Text != "") drCurrentRow["標的七"] = Label45.Text + ":" + Label55.Text + "單位";
                            if (Label99.Text != "") drCurrentRow["標的八"] = Label99.Text + ":" + Label100.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 9:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                            if (Label45.Text != "") drCurrentRow["標的七"] = Label45.Text + ":" + Label55.Text + "單位";
                            if (Label99.Text != "") drCurrentRow["標的八"] = Label99.Text + ":" + Label100.Text + "單位";
                            if (Label108.Text != "") drCurrentRow["標的九"] = Label108.Text + ":" + Label110.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                        case 10:
                            if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;
                            if (Label39.Text != "") drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text + "單位";
                            if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                            if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                            if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                            if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                            if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                            if (Label45.Text != "") drCurrentRow["標的七"] = Label45.Text + ":" + Label55.Text + "單位";
                            if (Label99.Text != "") drCurrentRow["標的八"] = Label99.Text + ":" + Label100.Text + "單位";
                            if (Label108.Text != "") drCurrentRow["標的九"] = Label108.Text + ":" + Label110.Text + "單位";
                            if (Label134.Text != "") drCurrentRow["標的十"] = Label134.Text + ":" + Label135.Text + "單位";
                            if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                            if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                            break;
                    }*/
                    if (DropDownList16.Text != "") drCurrentRow["時間"] = DropDownList16.Text;                 
                    if (Label39.Text != "")  drCurrentRow["標的一"] = Label39.Text + ":" + Label49.Text+"單位";
                    if (Label40.Text != "") drCurrentRow["標的二"] = Label40.Text + ":" + Label50.Text + "單位";
                    if (Label41.Text != "") drCurrentRow["標的三"] = Label41.Text + ":" + Label51.Text + "單位";
                    if (Label42.Text != "") drCurrentRow["標的四"] = Label42.Text + ":" + Label52.Text + "單位";
                    if (Label43.Text != "") drCurrentRow["標的五"] = Label43.Text + ":" + Label53.Text + "單位";
                    if (Label44.Text != "") drCurrentRow["標的六"] = Label44.Text + ":" + Label54.Text + "單位";
                    if (Label45.Text != "") drCurrentRow["標的七"] = Label45.Text + ":" + Label55.Text + "單位";
                    if (Label99.Text != "") drCurrentRow["標的八"] = Label99.Text + ":" + Label100.Text + "單位";
                    if (Label108.Text != "") drCurrentRow["標的九"] = Label108.Text + ":" + Label110.Text + "單位";
                    if (Label134.Text != "") drCurrentRow["標的十"] = Label134.Text + ":" + Label135.Text + "單位";
                    if (Label79.Text != "") drCurrentRow["投組報酬"] = Label79.Text;
                    if (Label76.Text != "") drCurrentRow["投組變異數"] = Label76.Text;
                    
                }
                //Remove initial blank row  
                if (dtCurrentTable.Rows[0][0].ToString() == "")
                {
                    dtCurrentTable.Rows[0].Delete();
                    dtCurrentTable.AcceptChanges();

                }

                //add created Rows into dataTable  
                dtCurrentTable.Rows.Add(drCurrentRow);
                //Save Data table into view state after creating each row  
                ViewState["AuthorBooks"] = dtCurrentTable;
                //Bind Gridview with latest Row  
                GridView4.DataSource = dtCurrentTable;
                GridView4.DataBind();
                for(int i=0;i<= GridView4.Rows.Count - 1; i++)
                {
                    for (int j = 0; j <= GridView4.HeaderRow.Cells.Count - 1; j++)
                    {
                        GridView4.Rows[i].Cells[j].Width =97;
                        GridView4.Rows[i].Cells[j].HorizontalAlign = HorizontalAlign.Center;
                    }
                }

                
            }
        }
    }

    public double[] characteristic(double[,] behavior, double[,] weight, double[,] covar, double[] average, int summ, int k,int FundCount)
    {
        //result=最佳資產配置投組特性
        double[] result = new double[17];

        //投組風險(變異數)(%)
        for (int i = 0; i <= summ - 1; i++)
        {
            for (int j = 0; j <= summ - 1; j++)
            {
                result[0] += covar[i, j] * weight[k, i] * weight[k, j];
            }
        }
        //投組風險(標準差)(%)
        result[1] = Math.Sqrt(result[0]);
        //投組報酬
        for (int i = 0; i <= summ - 1; i++)
        {
            result[2] += weight[k, i] * average[i];
        }
        //投資權重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[3] += weight[k, i];
        }
        //VaR(95%)
        result[4] = 1.65 * result[1];
        //單一標的投資下限
        double[] down = new double[summ];
        for (int i = 0; i <= summ - 1; i++)
        {
            down[i] = weight[k, i];
        }
        result[5] = down.Min();
        //單一標的投資上限
        double[] up = new double[summ];
        for (int i = 0; i <= summ - 1; i++)
        {
            up[i] = weight[k, i];
        }
        result[6] = up.Max();
        //股票市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[7] += weight[k, i] * behavior[i, 4];
        }
        //貨幣市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[8] += weight[k, i] * behavior[i, 5];
        }
        //債券市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[9] += weight[k, i] * behavior[i, 6];
        }
        //指數基金投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[10] += weight[k, i] * behavior[i, 7];
        }
        //保本基金投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[11] += weight[k, i] * behavior[i, 8];
        }
        //平均風險等級
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[12] += weight[k, i] * behavior[i, 9];
        }
        //台灣市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[13] += weight[k, i] * behavior[i, 0];
        }
        //亞洲市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[14] += weight[k, i] * behavior[i, 1];
        }
        //全球市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[15] += weight[k, i] * behavior[i, 2];
        }
        //新興市場投資比重
        for (int i = 0; i <= FundCount - 1; i++)
        {
            result[16] += weight[k, i] * behavior[i, 3];
        }
        return result;
    }
    //選擇染色體
    public int[] select(double[] population, int population_size)
    {
        /* int[] pos = new int[2];          
         Random crandom = new Random();
         for (int i = 0; i <= 1; i++)
         {
             int se1, se2,se3,se4,se5,se6,se7;
             se1 = crandom.Next(0, 299);
             do { se2 = crandom.Next(0, 299); }
             while (se1 == se2);
             if (population[se1] > population[se2])
             {
                 pos[i] = se1;
             }
             else { pos[i] = se2; }
         }*/
        double sum_fitness = 0;  // 適應值總合
        double[] column_prob = new double[population_size]; // 累計機率
        double prob1, prob2; // 随機機率   
        int[] pos = new int[2];
        int pos1, pos2;
        Random crandom = new Random();
        //算適應值總和
        for (int i = 0; i <= population_size - 1; i++)
        {
            sum_fitness += 1 / population[i];
        }
        // 計算累計機率累計分配
        column_prob[0] = 1 / population[0] / sum_fitness;
        for (int i = 1; i <= population_size - 1; i++)
        {
            column_prob[i] = column_prob[i - 1] + 1 / population[i] / sum_fitness;
        }
        // 開始隨機抽2 個染色體到交配池

        prob1 = crandom.NextDouble();
        prob2 = crandom.NextDouble();
        for (pos1 = 0; pos1 <= population_size - 1; ++pos1)
        {
            if (prob1 <= column_prob[pos1])
            {
                break;
            }
        }
        for (pos2 = 0; pos2 <= population_size - 1; ++pos2)
        {
            if (prob2 <= column_prob[pos2])
            {
                break;
            }
        }
        pos[0] = pos1;
        pos[1] = pos2;

        return pos;
    }
    //計算函數值
    public double evluate(double[,] covar, double[,] weight, int population_length, int k)
    {

        //投組風險(變異數)(%)
        double ev = 0;
        for (int i = 0; i <= population_length - 1; i++)
        {
            for (int j = 0; j <= population_length - 1; j++)
            {
                ev += covar[i, j] * weight[k, i] * weight[k, j];
            }
        }
        return ev;
    }
    /*
    protected void Button5_Click(object sender, EventArgs e)//效率前緣
    {
        List<List<double>> slist = new List<List<double>>();


        for (double i = 0.15; i <= 0.30; i = i + 0.005)
        {
            List<double> my1d = new List<double>();
            my1d.Add(main(i)[0]);
            my1d.Add(main(i)[1]);
            slist.Add(my1d);
        }
        
        for (double i = 0.03; i <= 0.07; i = i + 0.001)
        {
            List<double> my1d = new List<double>();
            my1d.Add(main(i)[0]);
            my1d.Add(main(i)[1]);
            slist.Add(my1d);
        }
        double[,] array1 = new double[,] {
            {0.01055,0.01014,0.01072,0.01177,0.01161,0.01571,0.01758,0.01701},
            {0.0387,0.03908,0.0441,0.04722,0.04786,0.05088,0.05316,0.05268} };
         double[,] array = new double[,] {
             {0.032276,0.034510,0.037554,0.041029,0.047973,0.052267,0.062008,0.079444,0.155181,0.174940 ,0.170975,0.170975,0.170975,0.170975,0.170975},
             {0.035,0.0375,0.04,0.04250,0.04500,0.0475,0.05,0.0525,0.055,0.0575,0.05665,0.05665,0.05665,0.05665,0.05665} };                          
         
        //只有基金規劃
        double[,] array0 = new double[,] {
   {0.036 ,  0.0365 , 0.0372 , 0.039  , 0.04  ,  0.042  , 0.042 ,  0.043 ,  0.0455 , 0.0475 , 0.05 ,   0.055 ,  0.061 ,  0.067  , 0.077  , 0.079 ,  0.085  , 0.086  , 0.087  , 0.088  , 0.09  ,  0.097  , 0.111 ,  0.124  , 0.14  ,  0.148},
   {0.03218 ,0.03389 ,0.03425, 0.03557 ,0.03677, 0.037  , 0.03706 ,0.03811, 0.03871, 0.04003 ,0.04205 ,0.044  , 0.04527 ,0.04591 ,0.047  , 0.0472 , 0.0482 , 0.0484 , 0.0487 , 0.04963, 0.05022 ,0.05171, 0.05224, 0.05321, 0.05415, 0.0551
}
        };
        //只有策略
        double[,] array1 = new double[,] {
   {0.084 ,  0.084  , 0.092  , 0.096  , 0.104  , 0.109  , 0.115  , 0.122  , 0.138  , 0.145 ,  0.154  , 0.169  , 0.183},
   {0.03054 ,0.03052, 0.03131 ,0.03197 ,0.03241 ,0.03273 ,0.03313, 0.03359, 0.03403, 0.03455 ,0.03501 ,0.0356,  0.036}
        };



        //基金加策略
        double[,] array2 = new double[,] {
   {0.011 ,  0.0135 , 0.0141 , 0.015  , 0.0153 , 0.016  , 0.0168 , 0.0173 , 0.019  , 0.021 ,  0.022 ,  0.026  , 0.034  , 0.04  ,  0.046   ,0.0505 ,  0.053  , 0.056  , 0.06  ,  0.066 ,  0.068 ,  0.074 ,  0.075},
   {0.03278, 0.03403 ,0.03496 ,0.03548 ,0.03671 ,0.03747 ,0.03802, 0.03879 ,0.0406  ,0.04086 ,0.04213 ,0.04335, 0.04488, 0.04592, 0.04731, 0.04752 ,0.04772, 0.04865 ,0.04946, 0.05051, 0.0511 , 0.05222, 0.0525}
        };

        ChartArea area = this.Chart2.ChartAreas[0];
        area.AxisY.Maximum = 0.06;
        area.AxisY.Minimum = 0;
        area.AxisY.Interval = 0.01;

        area.AxisX.Maximum = 0.08;
        area.AxisX.Minimum = 0;
        area.AxisX.Interval = 0.02;
        //標題 最大數值
        Series series1 = new Series("效率前緣");

        //設定線條顏色
        series1.Color = Color.Blue;

        //設定字型
        series1.Font = new System.Drawing.Font("新細明體", 14);

        //折線圖
        series1.ChartType = SeriesChartType.Point;

        //x軸標題
        area.AxisX.Title = "投資組合變異數";
        //y軸標題
        area.AxisY.Title = "投資組合報酬率";
        //將數值顯示在線上
        // series1.IsValueShownAsLabel = true;

        //將數值新增至序列
        for (int index = 0; index <= array0.Length/2-1; index++)
        {
            series1.Points.AddXY(array0[0, index], array0[1, index]);         
        }
        for (int index = 0; index <= array1.Length / 2 - 1; index++)
        {
            series1.Points.AddXY(array1[0, index], array1[1, index]);
        }
        
        for (int index = 0; index <= array2.Length / 2 - 1; index++)
        {
            series1.Points.AddXY(array2[0, index], array2[1, index]);//原
            // series1.Points.AddXY(slist[index][0], slist[index][1]);
            // series1.Points.AddXY(array[0, index], array[1, index]);
        }
        
/*
        for (int index = 0; index <= 29; index++)
        {       
             series1.Points.AddXY(slist[index][0], slist[index][1]);
          
        }
        //將序列新增到圖上
        this.Chart2.Series.Add(series1);
        //標題
        // this.Chart2.Titles.Add("效率前緣圖");
        Chart2.BackColor = Color.Moccasin;
    }*/
    protected void CheckBox48_CheckedChanged(object sender, EventArgs e)//投信公司全選
    {
        CheckBox[] COM = new CheckBox[4] { CheckBox8, CheckBox20, CheckBox22, CheckBox27 };
        if (CheckBox48.Checked == true)
        {
            for (int i = 0; i <= 3; i++)
            {
                COM[i].Checked = true;
            }
        }
        else
        {
            for (int i = 0; i <= 3; i++)
            {
                COM[i].Checked = false;
            }
        }
    }
    protected void CheckBox49_CheckedChanged(object sender, EventArgs e)//區域性全選
    {
        CheckBox[] REG = new CheckBox[3] { CheckBox11, CheckBox12, CheckBox21 };
        if (CheckBox49.Checked == true)
        {
            for (int i = 0; i <= 2; i++)
            {
                REG[i].Checked = true;
            }
        }
        else
        {
            for (int i = 0; i <= 2; i++)
            {
                REG[i].Checked = false;
            }
        }

    }
    protected void CheckBox50_CheckedChanged(object sender, EventArgs e)//投資區域全選
    {

        CheckBox[] ARE = new CheckBox[8] { CheckBox13, CheckBox14, CheckBox15, CheckBox18, CheckBox23, CheckBox28, CheckBox32, CheckBox40 };

        if (CheckBox50.Checked == true)
        {
            for (int i = 0; i <= 7; i++)
            {
                ARE[i].Checked = true;
            }
        }
        else
        {
            for (int i = 0; i <= 7; i++)
            {
                ARE[i].Checked = false;
            }
        }
    }

    protected void CheckBox51_CheckedChanged(object sender, EventArgs e)//基金類型全選
    {
        CheckBox[] TYP = new CheckBox[10] { CheckBox1, CheckBox2, CheckBox3, CheckBox4, CheckBox5, CheckBox6, CheckBox7, CheckBox25, CheckBox26, CheckBox47 };
        if (CheckBox51.Checked == true)
        {
            for (int i = 0; i <= 9; i++)
            {
                TYP[i].Checked = true;
            }
        }
        else
        {
            for (int i = 0; i <= 9; i++)
            {
                TYP[i].Checked = false;
            }
        }
    }
    
    protected void Button8_Click(object sender, EventArgs e)
    {
        int kyc_1 = DropDownList1.SelectedIndex;
        int kyc_2 = DropDownList2.SelectedIndex;
        int kyc_3 = DropDownList3.SelectedIndex;
        int kyc_4 = DropDownList4.SelectedIndex;
        int kyc_5 = DropDownList5.SelectedIndex;
        int kyc_6 = DropDownList6.SelectedIndex;
        int kyc_7 = DropDownList7.SelectedIndex;
        int kyc_8 = DropDownList8.SelectedIndex;
        int kyc_9 = DropDownList9.SelectedIndex;
        int kyc_10 = DropDownList10.SelectedIndex;
        int kyc_11 = DropDownList11.SelectedIndex;
        int kyc_12 = DropDownList12.SelectedIndex;
        int kyc_17 = DropDownList17.SelectedIndex;
        int kyc_18 = DropDownList18.SelectedIndex;

        List<int> labary = new List<int> { kyc_1, kyc_2, kyc_3, kyc_4, kyc_5, kyc_6, kyc_7, kyc_8, 9, kyc_10, kyc_11, kyc_12, kyc_17, kyc_18 };

        int kyc_score = 0;
        String kyc_result = "";
        for (int i = 0; i <= 11; i++)
        {
            kyc_score += calculate_kyc(labary[i]);
        }
        if ((20 <= kyc_score && kyc_score <= 27) || (kyc_7 == 0)) kyc_result = "保守型";
        else if ((28 <= kyc_score && kyc_score <= 36)) kyc_result = "安穩型";
        else if ((37 <= kyc_score && kyc_score <= 47)) kyc_result = "穩健型";
        else if ((48 <= kyc_score && kyc_score <= 60)) kyc_result = "成長型";
        else if ((61 <= kyc_score && kyc_score <= 100)) kyc_result = "積極型";

        string risk = "";
        if (kyc_result == "保守型")
        {
            risk = "RR1";
            TextBox31.Text = "1";
        }
        else if (kyc_result == "安穩型")
        {
            risk = "RR1~RR2";
            TextBox31.Text = "2";
        }
        else if (kyc_result == "穩健型")
        {
            risk = "RR1~RR3";
            TextBox31.Text = "3";
        }
        else if (kyc_result == "成長型")
        {
            risk = "RR1~RR4";
            TextBox31.Text = "4";
        }
        else if (kyc_result == "積極型")
        {
            risk = "RR1~RR5";
            TextBox31.Text = "5";
        }

        Label157.Text = "根據分析結果，您的投資風險屬性為:" + kyc_result + "風險等級為:" + risk;

    }
    public int calculate_kyc(int num)//計算風險分數
    {
        int kyc_score = 0;
        if (num == 0) kyc_score = 2;
        if (num == 1) kyc_score = 4;
        if (num == 2) kyc_score = 6;
        if (num == 3) kyc_score = 8;
        if (num == 4) kyc_score = 10;
        return kyc_score;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Button3.Enabled = true;
        Button9.Disabled = false;

        Label101.Visible = false;
        Label103.Visible = false;
        Label104.Visible = false;
        Label105.Visible = false;

        /*
        //
        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata = "[富邦策略績效分析$]";
                break;
        }
                
       
        //
        */
        
        switch (DropDownList16.SelectedIndex)
        {
            case 0:
                fromdata = "[績效分析$]";
                break;
            case 1:
                fromdata = "[績效分析2014.4.1-2017.3.31$]";
                break;
            case 2:
                fromdata = "[績效分析2014.7.1-2017.6.30$]";
                break;
            case 3:
                fromdata = "[績效分析2014.10.1-2017.9.30$]";
                break;
            case 4:
                fromdata = "[績效分析2015.1.1-2017.12.31$]";
                break;
        }
        

        string tb40 = TextBox40.Text;//日報酬最小值
        string tb41 = TextBox41.Text;//日報酬最大值
        string tb46 = TextBox46.Text;//最大虧損最小值
        string tb47 = TextBox47.Text;//最大虧損最大值
        string tb38 = TextBox38.Text;//勝率最小值
        string tb39 = TextBox39.Text;//勝率最大值
        string tb42 = TextBox42.Text;//交易次數最小值
        string tb43 = TextBox43.Text;//交易次數最大值
        string tb44 = TextBox44.Text;//獲利因子最小值
        string tb45 = TextBox45.Text;//獲利因子最大值
        string tb48 = TextBox48.Text;//夏普比率最小值
        string tb49 = TextBox49.Text;//夏普比率最大值
        string dd14 = Convert.ToString(DropDownList14.SelectedItem);
        string tb50 = DropDownList15.Text;//顯示幾筆策略
        SqlDataSource3.SelectCommand = "SELECT TOP "+ tb50 + " * FROM "+fromdata+ "WHERE " + "([日報酬率] >= " + tb40 + " AND [日報酬率] <= " + tb41 + ")" + "AND ([最大虧損(%)] >= " + tb46 + " AND [最大虧損(%)] <= " + tb47 + ")" + " AND([勝率] >= " + tb38 + " AND [勝率] <= " + tb39 + ")" + " AND([交易次數] >= " + tb42 + " AND [交易次數] <= " + tb43 + ")" + " AND ([獲利因子] >= " + tb44 + " AND [獲利因子] <= " + tb45 + ")" + "AND ([夏普比率] >= " + tb48 + " AND [夏普比率] <= " + tb49 + ")" + " ORDER BY [" + dd14 + "] DESC";
        GridView3.DataSource = SqlDataSource3;
        GridView3.DataBind();
        //SELECT * FROM [績效分析$] WHERE (([交易次數] > @交易次數) AND ([勝率] > @勝率))


        //SqlDataSource4.SelectCommand = "SELECT * FROM [基金基本資料] WHERE " + RESULT + " AND [平均報酬率(%)] >" + r + " AND [風險(變異數)] <" + var + " AND ([成立日] > CAST ('" + BEGIN + "' AS DATE) AND [成立日] < CAST ('" + LAST + "' AS DATE)) AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [Sharpe Ratio] DESC";
        //GridView4.DataBind();
        if (GridView3.Rows.Count > 0)
        {
            GridView3.Visible = true;
            Label167.Text = "篩選完成";
        }
        else
        {
            Label167.Text = "沒有適合的策略";
        }
    }


    protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox48.Checked =false;
    }

    protected void CheckBox20_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox48.Checked = false;
    }

    protected void CheckBox22_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox48.Checked = false;
    }

    protected void CheckBox27_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox48.Checked = false;
    }

    protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox49.Checked = false;
    }

    protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox49.Checked = false;
    }

    protected void CheckBox21_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox49.Checked = false;
    }

    protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox14_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox18_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox40_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox28_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox23_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox32_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox50.Checked = false;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox25_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox26_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }

    protected void CheckBox47_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox51.Checked = false;
    }
    public static string getUrl()
    {
        //只有基金規劃
       /* double[,] nn = new double[,] {
   {0.036 ,  0.0365 , 0.0372 , 0.039  , 0.04  ,  0.042  , 0.042 ,  0.043 ,  0.0455 , 0.0475 , 0.05 ,   0.055 ,  0.061 ,  0.067  , 0.077  , 0.079 ,  0.085  , 0.086  , 0.087  , 0.088  , 0.09  ,  0.097  , 0.111 ,  0.124  , 0.14  ,  0.148},
   {0.03218 ,0.03389 ,0.03425, 0.03557 ,0.03677, 0.037  , 0.03706 ,0.03811, 0.03871, 0.04003 ,0.04205 ,0.044  , 0.04527 ,0.04591 ,0.047  , 0.0472 , 0.0482 , 0.0484 , 0.0487 , 0.04963, 0.05022 ,0.05171, 0.05224, 0.05321, 0.05415, 0.0551 }
};*/
       /*
        //只有策略
        double[,] nn = new double[,] {
   {0.084 ,  0.084  , 0.092  , 0.096  , 0.104  , 0.109  , 0.115  , 0.122  , 0.138  , 0.145 ,  0.154  , 0.169  , 0.183},
   {0.03054 ,0.03052, 0.03131 ,0.03197 ,0.03241 ,0.03273 ,0.03313, 0.03359, 0.03403, 0.03455 ,0.03501 ,0.0356,  0.036}
        };
        */
        
        //基金加策略
        double[,] nn = new double[,] {
   {0.011 ,  0.0135 , 0.0141 , 0.015  , 0.0153 , 0.016  , 0.0168 , 0.0173 , 0.019  , 0.021 ,  0.022 ,  0.026  , 0.034  , 0.04  ,  0.046   ,0.0505 ,  0.053  , 0.056  , 0.06  ,  0.066 ,  0.068 ,  0.074 ,  0.075},
   {0.03278, 0.03403 ,0.03496 ,0.03548 ,0.03671 ,0.03747 ,0.03802, 0.03879 ,0.0406  ,0.04186 ,0.04213 ,0.04335, 0.04488, 0.04592, 0.04731, 0.04752 ,0.04772, 0.04865 ,0.04946, 0.05051, 0.0511 , 0.05222, 0.0525}
        };
        
        string tt = null;
        for (int i = 0; i <= 1; i++)
        {
            for (int j = 0; j <= nn.Length / 2 - 1; j++)
            {
                tt += nn[i, j] + ",";
            }
        }

        return tt;
    }
}