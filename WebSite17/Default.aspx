<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
          // Some raw data (not necessarily accurate)
          var a="kk"
        var data = google.visualization.arrayToDataTable([
         ['Month', a, 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda'],
         ['2004/05',  165,      938,         522,             998,           450],
         ['2005/06',  135,      1120,        599,             1268,          288],
         ['2006/07',  157,      1167,        587,             807,           397],
         ['2007/08',  139,      1110,        615,             968,           215],
         ['2008/09',  136,      691,         629,             1026,          366]
      ]);

    var options = {
      title : 'Monthly Coffee Production by Country',
      vAxis: {title: 'Cups'},
      hAxis: {title: 'Month'},
      seriesType: 'bars',
      series: {5: {type: 'line'}}
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="chart_div" style="width: 900px; height: 500px;">
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Medium" Height="294px" Width="759px">
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="下一頁" />
            </StartNavigationTemplate>
            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" Width="20px" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                    <asp:Panel ID="Panel2" runat="server" Height="66px" Width="224px">
                    </asp:Panel>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                    <asp:Panel ID="Panel1" runat="server" Height="108px" Width="349px">
                    </asp:Panel>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>
    </form>
</body>
</html>
