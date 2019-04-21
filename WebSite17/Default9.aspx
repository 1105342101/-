<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
             
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        function re() {

        
       google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawCrosshairs);

function drawCrosshairs() {
      var data = new google.visualization.DataTable();
      data.addColumn('number', 'X');
      data.addColumn('number', '效率前緣線');
      
       var srcUrl = "<%=getUrl()%>";  
            var k = srcUrl.split(",");

            for (var i = 0; i <= (k.length-1) / 2 - 1; i = i + 1) {
                
                data.addRows([
                   [Number(k[i]), Number(k[i + (k.length - 1) / 2])]
                ]);
            }

      var options = {
        hAxis: {
          title: '投資組合變異數'
        },
        vAxis: {
          title: '投資組合報酬率'
        },
        backgroundColor: '#FFFAD5',
        colors: ['#a52714'],
        crosshair: {
          color: '#000',
          trigger: 'selection'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    

    }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
           <button type="button" id="Button1"  onclick="re()">試算</button>
          <div id="chart_div" style="width: 800px; height: 500px"> </div>
     </div>   
    
    </form>
</body>
</html>

