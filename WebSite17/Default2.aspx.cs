using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (CheckBox1.Checked == true)
        {
            boxeuchild.Visible = false;
        }
        else if (CheckBox1.Checked == false)
        {
            boxeuchild.Visible = true;
        }
        if (CheckBox2.Checked == true)
        {
            boxhaschild.Visible = true;
            boxnochild.Visible = false;
        }
        else if (CheckBox2.Checked == false)
        {
            boxhaschild.Visible = false;
            boxnochild.Visible = true;
        }
        if (!Page.IsPostBack)
        {
            for (int i = 20; i <= 80; i++)
            {
                DropDownList1.Items.Add(new ListItem(Convert.ToString(i)));

            }
            for (int i = 1; i <= 20; i++)
            {
                DropDownList6.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList10.Items.Add(new ListItem(Convert.ToString(i)));
            }


            for (int i = 0; i <= 20; i++)
            {
                DropDownList2.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList3.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList11.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList12.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList13.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList17.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList19.Items.Add(new ListItem(Convert.ToString(i)));

            }
            for (int i = 2017; i <= 2067; i++)
            {
                DropDownList4.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList8.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList16.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList18.Items.Add(new ListItem(Convert.ToString(i)));
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList5.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList9.Items.Add(new ListItem(Convert.ToString(i)));

            }
            for (int i = 1; i <= 30; i++)
            {
                DropDownList7.Items.Add(new ListItem(Convert.ToString(i)));
            }
            for (int i = 0; i <= 20; i++)
            {
                DropDownList20.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList22.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList23.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList24.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList25.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList26.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList27.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList28.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList29.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList30.Items.Add(new ListItem(Convert.ToString(i)));
                DropDownList31.Items.Add(new ListItem(Convert.ToString(i)));
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList21.Items.Add(new ListItem(Convert.ToString(i)));
            }

            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            DropDownList1.SelectedValue = "28";
            DropDownList2.SelectedValue = "3";
            DropDownList3.SelectedValue = "1";
            DropDownList4.SelectedValue = "2021";
            DropDownList5.SelectedValue = "80";
            DropDownList6.SelectedValue = "2";
            DropDownList7.SelectedValue = "20";
            DropDownList8.SelectedValue = "2019";
            DropDownList9.SelectedValue = "30";
            DropDownList10.SelectedValue = "0";
            DropDownList11.SelectedValue = "3";
            DropDownList12.SelectedValue = "8";
            DropDownList13.SelectedValue = "4";
            DropDownList16.SelectedValue = "2017";
            DropDownList17.SelectedValue = "5";
            DropDownList19.SelectedValue = "1";
            DropDownList20.SelectedValue = "1";
            DropDownList21.SelectedValue = "100";
            DropDownList22.SelectedValue = "3";
            DropDownList23.SelectedValue = "4";
            DropDownList24.SelectedValue = "3";
            DropDownList25.SelectedValue = "6";
            DropDownList26.SelectedValue = "3";
            DropDownList27.SelectedValue = "3";
            DropDownList28.SelectedValue = "4";
            DropDownList29.SelectedValue = "0";
            DropDownList30.SelectedValue = "1";
            DropDownList31.SelectedValue = "1";
        }
        parameter.Visible = false;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        parameter.Visible = true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}