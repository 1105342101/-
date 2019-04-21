using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class 投組最佳化 : System.Web.UI.Page
{
    public int fund_count;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button3.Enabled = true;
        Button5.Enabled = true;

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
        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr = "SELECT [平均報酬率(%)] , [風險(變異數)(%)] FROM[基金基本資料$]WHERE " + RESULT + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [夏普指數] DESC";

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
        Button5.Enabled = true;

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
        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr = "SELECT [平均報酬率(%)] , [風險(變異數)(%)] FROM[基金基本資料$]WHERE " + RESULT + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [夏普指數] DESC";

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

        SqlDataSource1.SelectCommand = "SELECT TOP 10[基金], [基金型態], [基金類型], [區域性], [投資地區], [成 立 日] AS 成_立_日, [基金經理費], [基金保管費],[手續費率(%)],[單筆申購], [定期定額], [風險等級], [平均報酬率(%)] , [風險(變異數)(%)] , [台灣], [亞洲], [全球], [新興市場], [股票], [貨幣], [債券], [指數], [保本], [夏普指數] FROM [基金基本資料$] WHERE " + RESULT + " AND [平均報酬率(%)] >" + r + " AND [風險(變異數)(%)] <" + var + "AND ([風險等級] >= " + lowrisk + " AND [風險等級] <= " + hightrisk + ") ORDER BY [夏普指數] DESC";
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
        int FundCount = GridView1.Rows.Count;

        string[] fu = new string[GridView1.Rows.Count];

        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            fu[i] = GridView1.Rows[i].Cells[0].Text;
        }


        ConnectionStringSettings WORKFLOWGP = ConfigurationManager.ConnectionStrings["FundConnectionString"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = WORKFLOWGP.ConnectionString;
        conn.Open();

        string queryStr = "SELECT *FROM[基金日報酬$]where [FundName] LIKE N'" + fu[0];
        for (int i = 1; i <= GridView1.Rows.Count - 1; i++)
        {
            queryStr += "%'OR [FundName] LIKE N'" + fu[i];
        }
        // "%'OR [FundName] LIKE N'" + fu[1] + "%'OR [FundName] LIKE N'" + fu[2] + "%'OR [FundName] LIKE N'" + fu[3] + "%'OR [FundName] LIKE N'" + fu[4] + "%'OR [FundName] LIKE N'" + fu[5] + "%'OR [FundName] LIKE N'" + fu[6] + "%'OR [FundName] LIKE N'" + fu[7] + "%'OR [FundName] LIKE N'" + fu[8] + "%'OR [FundName] LIKE N'" + fu[9];
        queryStr += "%'ORDER BY [夏普指數] DESC";
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
        Label[] labary = new Label[] { Label39, Label40, Label41, Label42, Label43, Label44, Label45, Label99, Label108, Label134 };
        for (int i = 0; i <= FundCount - 1; i++)
        {
            labary[i].Text = Convert.ToString(fu[i]);
        }

        //將基金日報酬放進rearray
        double[,] rearray = new double[FundCount, 248];
        for (int i = 0; i <= FundCount - 1; i++)
        {
            for (int j = 0; j <= 249; j++)
            {
                if (LoadData[i][j] == "")
                {
                    LoadData[i][j] = -100;
                }
            }
        }
        for (int i = 0; i <= FundCount - 1; i++)
        {
            for (int j = 0; j <= 247; j++)
            {

                rearray[i, j] = Convert.ToDouble(LoadData[i][j + 2]);
            }
        }
        //covar=共變異數矩陣
        double[,] covar = new double[FundCount, FundCount];

        for (int i = 0; i <= FundCount - 1; i++)
        {
            for (int k = 0; k <= FundCount - 1; k++)
            {
                int sum_covar = 0;
                for (int j = 0; j <= 245; j++)
                {
                    if ((rearray[k, j] != -100) && (rearray[i, j] != -100))
                    {
                        sum_covar++;
                        covar[i, k] += (rearray[i, j] - rearray[i, 246]) * (rearray[k, j] - rearray[k, 246]);
                    }
                }
                covar[i, k] = covar[i, k] / (double)(sum_covar - 1);
            }
        }
        //behavior=基金特性 第11行=風險等級，14~22是基金特性
        double[,] behavior = new double[FundCount, 10];
        for (int i = 0; i <= FundCount - 1; i++)
        {
            for (int j = 0; j <= 8; j++)
            {
                behavior[i, j] = Convert.ToDouble(GridView1.Rows[i].Cells[14 + j].Text);
            }
            behavior[i, 9] = Convert.ToDouble(GridView1.Rows[i].Cells[11].Text);
        }
        //average=基金平均報酬
        double[] average = new double[FundCount];
        for (int i = 0; i <= FundCount - 1; i++)
        {
            average[i] = rearray[i, 246];
        }

        //基因演算法
        int population_size = 300;       /*定義族群大小*/
        int population_length = FundCount;      /*定義染色體長度 16檔基金*/
        double mutation_rate = 0.01;        /*定義突變率*/
        int max_generation = 3000;      /*定義演化代數*/
        Random crandom = new Random();
        double[] population = new double[population_size];//設定染色體大小
                                                          //weight=基金權重
        double[,] weight = new double[population_size, FundCount];


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


        double[] result = new double[17];
        double[,] deplay = new double[population_size, 17];

        for (int k = 0; k <= population_size - 1; k++)
        {
            for (int i = 0; i <= 16; i++)
            {
                result[i] = characteristic(behavior, weight, covar, average, population_length, k)[i];

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
        double tb17 = Convert.ToDouble(TextBox17.Text);
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

        int sum_deplay = 0;
        for (int i = 0; i <= population_size - 1; i++)
        {
            if (deplay[i, 1] > 0)
            {
                sum_deplay++;
            }
        }
        if (sum_deplay == 0)
        {
            Label154.Text = "沒有找到合適解";
            Button5.Enabled = false;
            double[] ren = new double[2];
            return ren;
        }
        else
        {


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

            Label[] weight_text = new Label[] { Label143, Label144, Label145, Label146, Label147, Label148, Label149, Label150, Label151, Label152 };

            for (int i = 0; i <= FundCount - 1; i++)
            {
                weight_text[i].Text = Convert.ToString(Math.Round(weight[location, i] * 100, 2)) + "%";
            }


            //月定期投資=textbox82            
            double tb3 = Convert.ToDouble(TextBox3.Text);
            //定期定額=textbox83            
            double tb25 = Convert.ToDouble(TextBox25.Text);

            Label[] weight_count = new Label[] { Label49, Label50, Label51, Label52, Label53, Label54, Label55, Label100, Label110, Label135 };
            for (int i = 0; i <= FundCount - 1; i++)
            {
                weight_count[i].Text = Convert.ToString(Math.Round(tb3 * weight[location, i] / tb25, 0));
            }

            double lab156 = 0;
            for (int i = 0; i <= FundCount - 1; i++)
            {
                double fee = Convert.ToDouble(GridView1.Rows[i].Cells[8].Text);
                lab156 += tb25 * fee * Convert.ToDouble(weight_count[i].Text);
            }
            Label156.Text = Convert.ToString(lab156);



            //回傳變異數,報酬率
            double[] ren = new double[2];
            ren[0] = Math.Round(deplay[location, 0], 5);
            ren[1] = Math.Round(deplay[location, 2], 5);
            return ren;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        double tb4 = Convert.ToDouble(TextBox4.Text) / 100;
        main(tb4);


    }

    public double[] characteristic(double[,] behavior, double[,] weight, double[,] covar, double[] average, int summ, int k)
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
        for (int i = 0; i <= summ - 1; i++)
        {
            result[7] += weight[k, i] * behavior[i, 4];
        }
        //貨幣市場投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[8] += weight[k, i] * behavior[i, 5];
        }
        //債券市場投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[9] += weight[k, i] * behavior[i, 6];
        }
        //指數基金投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[10] += weight[k, i] * behavior[i, 7];
        }
        //保本基金投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[11] += weight[k, i] * behavior[i, 8];
        }
        //平均風險等級
        for (int i = 0; i <= summ - 1; i++)
        {
            result[12] += weight[k, i] * behavior[i, 9];
        }
        //台灣市場投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[13] += weight[k, i] * behavior[i, 0];
        }
        //亞洲市場投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[14] += weight[k, i] * behavior[i, 1];
        }
        //全球市場投資比重
        for (int i = 0; i <= summ - 1; i++)
        {
            result[15] += weight[k, i] * behavior[i, 2];
        }
        //新興市場投資比重
        for (int i = 0; i <= summ - 1; i++)
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

    protected void Button5_Click(object sender, EventArgs e)
    {
        List<List<double>> slist = new List<List<double>>();

        /*for (double i = 0.035; i <= 0.055; i = i + 0.0025)
        {
            List<double> my1d = new List<double>();
            my1d.Add(main(i)[0]);
            my1d.Add(main(i)[1]);
            slist.Add(my1d);
        }*/
        double[,] array1 = new double[,] {
            {0.01055,0.01014,0.01072,0.01177,0.01161,0.01571,0.01758,0.01701},
            {0.0387,0.03908,0.0441,0.04722,0.04786,0.05088,0.05316,0.05268} };
        /* double[,] array = new double[,] {
             {0.032276,0.034510,0.037554,0.041029,0.047973,0.052267,0.062008,0.079444,0.155181,0.174940 ,0.170975,0.170975,0.170975,0.170975,0.170975},
             {0.035,0.0375,0.04,0.04250,0.04500,0.0475,0.05,0.0525,0.055,0.0575,0.05665,0.05665,0.05665,0.05665,0.05665} };*/

        double[,] array2 = new double[,] {
   {0.00692,0.00716,0.00813,0.0103,0.01211,0.01331,0.01465,0.01838},
   {0.03792,0.03826,0.041,0.04286,0.04644,0.0503,0.05261,0.05267} };

        ChartArea area = this.Chart2.ChartAreas[0];
        area.AxisY.Maximum = 0.08;
        area.AxisY.Minimum = 0.01;
        area.AxisY.Interval = 0.01;

        area.AxisX.Maximum = 0.03;
        area.AxisX.Minimum = 0;
        area.AxisX.Interval = 0.001;
        //標題 最大數值
        Series series1 = new Series("效率前緣");

        //設定線條顏色
        series1.Color = Color.Blue;

        //設定字型
        series1.Font = new System.Drawing.Font("新細明體", 14);

        //折線圖
        series1.ChartType = SeriesChartType.Line;

        //x軸標題
        area.AxisX.Title = "投資組合變異數";
        //y軸標題
        area.AxisY.Title = "投資組合報酬率";
        //將數值顯示在線上
        // series1.IsValueShownAsLabel = true;

        //將數值新增至序列
        for (int index = 0; index <= 7; index++)
        {
            series1.Points.AddXY(array2[0, index], array2[1, index]);
            //series1.Points.AddXY(slist[index][0], slist[index][1]);
            //series1.Points.AddXY(array[0, index], array[1, index]);
        }
        //將序列新增到圖上
        this.Chart2.Series.Add(series1);
        //標題
        // this.Chart2.Titles.Add("效率前緣圖");
    }


    protected void CheckBox48_CheckedChanged(object sender, EventArgs e)
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
    protected void CheckBox49_CheckedChanged(object sender, EventArgs e)
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
    protected void CheckBox50_CheckedChanged(object sender, EventArgs e)
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



    protected void CheckBox51_CheckedChanged(object sender, EventArgs e)
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

        List<int> labary = new List<int> { kyc_1, kyc_2, kyc_3, kyc_4, kyc_5, kyc_6, kyc_7, kyc_8, 9, kyc_10, kyc_11, kyc_12 };

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
        if (kyc_result == "保守型") risk = "RR1";
        else if (kyc_result == "安穩型") risk = "RR1~RR2";
        else if (kyc_result == "穩健型") risk = "RR1~RR3";
        else if (kyc_result == "成長型") risk = "RR1~RR4";
        else if (kyc_result == "積極型") risk = "RR1~RR5";

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
}
