using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KYC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
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
        int kyc_13 = DropDownList13.SelectedIndex;
        int kyc_14 = DropDownList14.SelectedIndex;

        List<int> labary = new List<int> { kyc_1, kyc_2, kyc_3, kyc_4, kyc_5, kyc_6, kyc_7, kyc_8, 9, kyc_10, kyc_11, kyc_12, kyc_13, kyc_14 };

        int kyc_score = 0;
        String kyc_result = "";
        for (int i = 0; i <= 13; i++)
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

        Label1.Text = "根據分析結果，您的投資風險屬性為:" + kyc_result+"風險等級為:"+risk;
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


    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}