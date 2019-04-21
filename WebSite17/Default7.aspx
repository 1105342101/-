 <html>
  <head>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
             
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        function re() {

        
        google.charts.load('current', { packages: ['corechart', 'line'] });
        google.charts.setOnLoadCallback(drawCurveTypes);

        function drawCurveTypes() {
            var data = new google.visualization.DataTable();
            data.addColumn('number', 'X');
            data.addColumn('number', '效率前緣線');

            
           

            data.addRows([
              [0.036, 0.03218], [0.0365, 0.03389], [0.0372, 0.03425], [0.039, 0.03557], [0.04, 0.03677], [0.042, 0.037], [0.042, 0.03706], [0.043, 0.03811], [0.0455, 0.03871], [0.0475, 0.04003], [0.05, 0.04205], [0.055, 0.044], [0.061, 0.04527], [0.067, 0.04591], [0.077, 0.047], [0.079, 0.0472], [0.085, 0.0482], [0.086, 0.0484], [0.087, 0.0487], [0.088, 0.04963], [0.09, 0.05022], [0.097, 0.05171], [0.111, 0.05224], [0.124, 0.05321], [0.14, 0.05415], [0.148, 0.0551]
            ]);

            var options = {
                hAxis: {
                    title: '投資組合變異數'
                },
                vAxis: {
                    title: '投資組合報酬率'
                },
                backgroundColor: '#FBEBCD',
                series: {
                    1: { curveType: 'function' }

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
          <div id="chart_div" style="width: 900px; height: 500px"> </div>
      </div>   
      </form>
  </body>
</html>
