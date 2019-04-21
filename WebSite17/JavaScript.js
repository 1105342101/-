function re() {
    google.charts.load('current', { 'packages': ['line'] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
       //取得現在時間 
        var Today = new Date();
        year=Number(Today.getFullYear());
          //tb10=活到幾歲
          var tb10 = Number(TextBox10.value);
          //dd1=現在幾歲
          dd1 = Number(DropDownList1.value);
          
          //設定資料陣列
          var basicdata = new Array(tb10 - dd1);
          for (var i = 0; i <= tb10 - dd1; i++) {
              basicdata[i] = new Array(9);
          }
          for (var i = 0; i <= tb10 - dd1; i++) {
              for (var j = 0; j <= 9; j++) {
                  basicdata[i][j]=0
              }
          }
            //設定年=basicdata[:][0]
          for (var i = 0; i <= tb10-dd1;i++){
              basicdata[i][0]=String(year+i);
          }
          //basicdata[:][1]=收入
          //tb8=幾歲退休
          tb8 = Number(TextBox8.value);
          //tb2=年收入
          tb2 = Number(TextBox2.value);
          //dd3=收入成長率
          dd3=Number(DropDownList3.value);
          for (var i = 0; i <= tb8 - dd1-1 ; i++) {
              basicdata[i][1] = Math.round(tb2 * Math.pow(1 + dd3 / 100, i));
          }
          //basicdata[:][2]=支出
          //tb3=年支出
          tb3 = Number(TextBox3.value);
          //dd20=通膨率
          dd20 = Number(DropDownList20.value);
          //dd21=支出比例
          dd21 = Number(DropDownList21.value);
          for (var i = 0; i <= tb8 - dd1 - 1; i++) {
              basicdata[i][2] = Math.round(tb3*dd21/100*Math.pow(1+dd20 / 100,i));
          }
        //basicdata[:][3]購屋
        //dd4=何時購屋
          dd4 = Number(DropDownList4.value);
        //tb4=房子價格
          tb4 = Number(TextBox4.value);
        //tb5=裝潢、稅金
          tb5 = Number(TextBox5.value);
        //dd5=貸款比例
          dd5 = Number(DropDownList5.value);
        //dd6=房貸利率
          dd6 = Number(DropDownList6.value);
        //dd7=房貸幾年
          dd7 = Number(DropDownList7.value);
        //dd30=房屋上漲幅度
          dd30 = Number(DropDownList30.value);
        //tb27=買房屋後，年生活費調整額度
          tb27 = Number(TextBox27.value);
        //ho=房子總價
          ho = Math.round(tb4 * Math.pow((1 + dd30 / 100), (dd4 - year)) + tb5);
        
        //年金現值利率因子pvifa=(1/i)-1/(i*(i+1)^n)
          pvifahourse = 1 / (dd6 / 100) - 1 / ((dd6 / 100) * Math.pow(1 + (dd6 / 100), dd7));
        //hr=每年房貸
          hr = (ho * dd5 / 100) / pvifahourse;
          for (var i = dd4 -year; i <= dd7 + dd4-year; i++) {
              if (i == (dd4 - year)) {
                  basicdata[i][3]=ho*(1-dd5/100)+hr;
              }
              else {
                  basicdata[i][3] = hr ;
              }
          }

          for (var i = dd4 - year; i <= tb10 - dd1; i++) {
              basicdata[i][3] += tb27;
          }
        
        //basicdata[:][4]=購車
        //dd8=何時買車
          dd8 = Number(DropDownList8.value);
        //tb6=車子價格
          tb6 = Number(TextBox6.value);
        //tb7=車子稅金
          tb7 = Number(TextBox7.value);
        //dd9=車貸比例
          dd9 = Number(DropDownList9.value);
        //dd10=車貸利率
          dd10 = Number(DropDownList10.value);
        //dd11=車貸幾年
          dd11 = Number(DropDownList11.value);
        //dd12=每隔幾年換車
          dd12 = Number(DropDownList12.value);
        //dd13= 一生換幾部車
          dd13 = Number(DropDownList13.value);
        //dd31=車子上漲幅度
          dd31 = Number(DropDownList31.value);
        //tb28=買車子後，年生活費調整額度
          tb28 = Number(TextBox28.value);

          for (var i = dd8 - year; i <= dd12 * dd13; i=i+ dd12) {
              //car=車子價格
              car = Math.round(tb6 * Math.pow((1 + dd31 / 100), i) + tb7);
              //年金現值利率因子pvifa=(1/i)-1/(i*(i+1)^n)
              pvifacar = 1 / (dd10 / 100) - 1 / ((dd10 / 100) * Math.pow(1 + (dd10 / 100), dd11));
              //cr=每年車貸              
              cr = (car * dd9 / 100) / pvifacar;          
              basicdata[i][4] = car * (1 - dd9 / 100) ;
              for (var j=i ; j <= i+dd11; j++) {
                  basicdata[j][4] += cr ;
              }
          }
          for (var i = dd8 - year; i <= dd12 * dd13; i++) {
              basicdata[i][4] += tb28;
          }
        
        //basicdata[:][5]=教育
        
        
        //tb13=每年嬰幼兒學費、養育費
          tb13 = Number(TextBox13.value);    
        //tb15=每年幼兒園學費、養育費
          tb15 = Number(TextBox15.value);
        //tb17=每年小學學費、養育費
          tb17 = Number(TextBox17.value);       
        //tb19=每年國中學費、養育費
          tb19 = Number(TextBox19.value);
        //tb21=每年高中學費、養育費
          tb21 = Number(TextBox21.value);
        //tb23=每年大學學費、養育費
          tb23 = Number(TextBox23.value);
        //tb25=每年研究所學費、養育費
          tb25 = Number(TextBox25.value);   
        //dd22=學費上漲率
          dd22 = Number(DropDownList22.value);
        //dd23=嬰幼兒共給?年
          dd23 = Number(DropDownList23.value);
        //dd24=幼兒園共給?年
          dd24 = Number(DropDownList24.value);
        //dd25=小學共給?年
          dd25 = Number(DropDownList25.value);
        //dd26=國中共給?年
          dd26 = Number(DropDownList26.value);
        //dd27=高中共給?年
          dd27 = Number(DropDownList27.value);
        //dd28=大學共給?年
          dd28 = Number(DropDownList28.value);
        //dd29=研究所共給?年
          dd29 = Number(DropDownList29.value);
          
        //不生小孩
          if (CheckBox1.checked == true) {
              
          }
          //已生小孩
          else if (CheckBox2.checked == true) {
              //dd17=小孩今年幾歲
              dd17 = Number(DropDownList17.value);
              //嬰兒
              if (dd17 <= dd23) {
                  ag = dd23 - dd17;
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb13 * Math.pow(1 + dd22 / 100, i))
                  }
                  for (var i = ag; i <= ag + dd24 - 1; i++) {
                      basicdata[i][5] = Math.round(tb15 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd24; i <= ag + dd24 + dd25 - 1; i++) {
                      basicdata[i][5] = Math.round(tb17 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd24 + dd25; i <= ag + dd24 + dd25 + dd26 - 1; i++) {
                      basicdata[i][5] = Math.round(tb19 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd24 + dd25 + dd26; i <= ag + dd24 + dd25 + dd26 + dd27 - 1; i++) {
                      basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd24 + dd25 + dd26 + dd27; i <= ag + dd24 + dd25 + dd26 + dd27 + dd28 - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd24 + dd25 + dd26 + dd27 + dd28; i <= ag + dd24 + dd25 + dd26 + dd27 + dd28 + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }
              }
                  //幼稚園
              else if (dd17 <= dd23 + dd24) {
                  ag = dd23 + dd24 - dd17;
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb15 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag; i <= ag + dd25 - 1; i++) {
                      basicdata[i][5] = Math.round(tb17 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd25; i <= ag + dd25 + dd26 - 1; i++) {
                      basicdata[i][5] = Math.round(tb19 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd25 + dd26; i <= ag + dd25 + dd26 + dd27 - 1; i++) {
                      basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd25 + dd26 + dd27; i <= ag + dd25 + dd26 + dd27 + dd28 - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd25 + dd26 + dd27 + dd28; i <= ag + dd25 + dd26 + dd27 + dd28 + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }
                  //小學
              } else if (dd17 <= dd23 + dd24 + dd25) {
                  ag = dd23 + dd24 + dd25 - dd17;
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb17 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag; i <= ag + dd26 - 1; i++) {
                      basicdata[i][5] = Math.round(tb19 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd26; i <= ag + dd26 + dd27 - 1; i++) {
                      basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd26 + dd27; i <= ag + dd26 + dd27 + dd28 - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd26 + dd27 + dd28; i <= ag + dd26 + dd27 + dd28 + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }

                  //國中
              } else if (dd17 <= dd23 + dd24 + dd25 + dd26) {
                  ag = dd23 + dd24 + dd25 + dd26 - dd17
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb19 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag; i <= ag + dd27 - 1; i++) {
                      basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd27; i <= ag + dd27 + dd28 - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd27 + dd28; i <= ag + dd27 + dd28 + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }

                  //高中
              } else if (dd17 <= dd23 + dd24 + dd25 + dd26 + dd27) {
                  ag = dd23 + dd24 + dd25 + dd26 + dd27 - dd17
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag; i <= ag + dd28 - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag + dd28; i <= ag + dd28 + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }

                  //大學
              } else if (dd17 <= dd23 + dd24 + dd25 + dd26 + dd27 + dd28) {
                  ag = dd23 + dd24 + dd25 + dd26 + dd27 + dd28 - dd17;
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
                  }
                  for (var i = ag; i <= ag + dd29 - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }

                  //研究所
              } else if (dd17 <= dd23 + dd24 + dd25 + dd26 + dd27 + dd28 + dd29) {
                  ag = dd23 + dd24 + dd25 + dd26 + dd27 + dd28 + dd29 - dd17
                  for (var i = 0; i <= ag - 1; i++) {
                      basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
                  }
              }
          }
              
          else {

              //dd16=何時生小孩        
              dd16 = Number(DropDownList16.value);
              ag = dd16-year;
              for (var i = 0; i <= ag - 1; i++) {
                  basicdata[i][5]=0
              }
              for (var i = ag; i <= ag + dd23 - 1; i++) {
                  basicdata[i][5] = Math.round(tb13 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23; i <= ag + dd23 + dd24 - 1; i++) {
                  basicdata[i][5] = Math.round(tb15 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23 + dd24; i <= ag + dd23 + dd24 + dd25 - 1; i++) {
                  basicdata[i][5] = Math.round(tb17 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23 + dd24 + dd25; i <= ag + dd23 + dd24 + dd25 + dd26 - 1; i++) {
                  basicdata[i][5] = Math.round(tb19 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23 + dd24 + dd25 + dd26; i <= ag + dd23 + dd24 + dd25 + dd26 + dd27 - 1; i++) {
                  basicdata[i][5] = Math.round(tb21 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23 + dd24 + dd25 + dd26 + dd27; i <= ag + dd23 + dd24 + dd25 + dd26 + dd27 + dd28 - 1; i++) {
                  basicdata[i][5] = Math.round(tb23 * Math.pow(1 + dd22 / 100, i));
              }
              for (var i = ag + dd23 + dd24 + dd25 + dd26 + dd27 + dd28; i <= ag + dd23 + dd24 + dd25 + dd26 + dd27 + dd28 + dd29 - 1; i++) {
                  basicdata[i][5] = Math.round(tb25 * Math.pow(1 + dd22 / 100, i));
              }
          }
        
        //basicdata[:][6]=退休
        //tb9=每月退休後生活費
          tb9 = Number(TextBox9.value);
          for (var i = tb8 - dd1; i <= tb10 - dd1; i++) {
              basicdata[i][6] = Math.round(tb9 * 12 * Math.pow(1 + dd20 / 100, i));
          }

        //basicdata[:][7]=旅遊
        //dd18=何時旅遊
          dd18 = Number(DropDownList18.value);
        //tb11=旅遊花費
          tb11 = Number(TextBox11.value);
        //dd19=旅遊頻率(年)
          dd19 = Number(DropDownList19.value);
        //tb12=幾歲就不旅遊
          tb12 = Number(TextBox12.value);
          for (var i = dd18 - year; i <= tb12 - dd1; i = i + dd19) {
              basicdata[i][7] = Math.round(tb11 * Math.pow(1 + dd20 / 100, i));
          }
        //basicdata[:][8]=當期資金餘額
        //tb1=可投資資產
          tb1 = Number(TextBox1.value);
        //dd2=期望投資報酬率
          dd2 = Number(DropDownList2.value);
        //每年當期資金餘額
          basicdata[0][8] = tb1 + basicdata[0][1];
          for (var i = 1; i <= tb10 - dd1; i++) {
              basicdata[i][8] = Math.round(tb1 * Math.pow( dd2 / 100, i))+basicdata[i][1];
          }
          for (var i = 0; i <= tb10 - dd1; i++) {
              for (var j = 2; j <= 7; j++) {
                  basicdata[i][8] -= basicdata[i][j];
              }
          }
        //basicdata[i][9]每年累積資金餘額
          
          for (var i = 0; i <= tb10 - dd1; i++) {
              sum=0
              for (var j = 0; j <= i; j++) {
                   sum+= basicdata[j][8]
                 
              }
              basicdata[i][9] = sum;
          }
          
        //第一張圖
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Year');
          data.addColumn('number', '收入(萬)');
          data.addColumn('number', '支出(萬)');
          data.addColumn('number', '購屋(萬)');
          data.addColumn('number', '購車(萬)');
          data.addColumn('number', '教育(萬)');
          data.addColumn('number', '退休(萬)');
          data.addColumn('number', '旅遊(萬)');
          data.addColumn('number', '當期資金餘額(萬)');
          for (var i = 0; i <= tb10-dd1; i++) {
              data.addRows([[basicdata[i][0], basicdata[i][1], basicdata[i][2],basicdata[i][3], basicdata[i][4], basicdata[i][5], basicdata[i][6], basicdata[i][7], basicdata[i][8]]]);
          }
           

          var options = {
              chart: {
                  title: '理財規劃試算'
                  
              },
              width: 1300,
              height: 500
          };

          var chart = new google.charts.Line(document.getElementById('chart_div'));

          chart.draw(data, google.charts.Line.convertOptions(options));
        //第二張圖
          var data2 = new google.visualization.DataTable();
          data2.addColumn('string', 'Year');
          data2.addColumn('number', '累積資金餘額(萬)');
          for (var i = 0; i <= tb10 - dd1; i++) {
              data2.addRows([[basicdata[i][0],basicdata[i][9]]]);
          }


          var options2 = {
             
              width: 1300,
              height: 500
          };

          var chart2 = new google.charts.Line(document.getElementById('chart2_div'));

          chart2.draw(data2, google.charts.Line.convertOptions(options2));


  }
}