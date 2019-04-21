<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basic.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <title></title>
    <style type="text/css">
        .panel panel-default {
            width: 50px;
        }
         
        
        
        
    </style>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script src="JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server" >
        
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:cornsilk">
                基本資料(自住之房產、家用汽、機車……等，並非〝可投資資產〞)
            </div>
            <div style="height: 46px" class="panel-body">
            我今年
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            歲。累積目前可投資資產為
            <asp:TextBox ID="TextBox1" runat="server" Text="30" Width="40px" style="text-align: center"></asp:TextBox>
            <span >萬元。 期望的投資報酬率為<asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            %</span>
            </div>
        </div> 
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:aqua" > 收入支出</div>
            <div style="height: 41px" class="panel-body">
                目前年收入<asp:TextBox ID="TextBox2" runat="server" Width="40px" style="text-align: center">45</asp:TextBox>
            &nbsp;萬元，成長率為
             
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>

                %。目前年支出為<asp:TextBox ID="TextBox3" runat="server" Width="40px" style="text-align: center">24</asp:TextBox>
                萬元。
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:aquamarine">
                購屋
            </div>
            <div style="height: 49px" class="panel-body">
                我打算在
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
                年買房子。房子總價<asp:TextBox ID="TextBox4" runat="server" Width="40px" style="text-align: center">800</asp:TextBox>
                萬元。裝潢、傢俱、稅金等總計約<asp:TextBox ID="TextBox5" runat="server" Width="40px" style="text-align: center">100</asp:TextBox>
                萬元。貸款比例<asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
                %。房貸利率預估<asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
                %。房貸預計貸<asp:DropDownList ID="DropDownList7" runat="server">
                </asp:DropDownList>
                年。
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:coral">
                購車
            </div>
            <div class="panel-body"> 
                我打算在
                <asp:DropDownList ID="DropDownList8" runat="server">
                </asp:DropDownList>
                年買車子。我喜歡的車子價格是
                <asp:TextBox ID="TextBox6" runat="server" Width="40px" style="text-align: center">50</asp:TextBox>
                萬元。車險、稅金等總計約<asp:TextBox ID="TextBox7" runat="server" Width="40px" style="text-align: center">0</asp:TextBox>
                萬元。車子貸款比例<asp:DropDownList ID="DropDownList9" runat="server">
                </asp:DropDownList>
                %。車子貸款利率<asp:DropDownList ID="DropDownList10" runat="server">
                </asp:DropDownList>
                %。車子預計貸<asp:DropDownList ID="DropDownList11" runat="server">
                </asp:DropDownList>
                年。我打算每隔<asp:DropDownList ID="DropDownList12" runat="server">
                </asp:DropDownList>
                年換車。這一生大約想換<asp:DropDownList ID="DropDownList13" runat="server">
                </asp:DropDownList>
                部車。
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:darksalmon">
                教育
            </div>
            <div class="panel-body">
                <div>  
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="我不打算生小孩" AutoPostBack="True"   />
                </div>
            <br />
                <div id="boxeuchild" runat="server" >
                    <div>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="目前有小孩" AutoPostBack="True" />
                    </div>
                    <div id="boxhaschild" runat="server">
                        今年<asp:DropDownList ID="DropDownList17" runat="server"></asp:DropDownList> 歲。   
                    </div>   
                    <div id="boxnochild" runat="server">
                        我預計在<asp:DropDownList ID="DropDownList16" runat="server"> </asp:DropDownList>年生小孩。
                    </div>           
                </div>    
             </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" style="background-color:lightcyan">
                退休
            </div>
            <div class="panel-body">
                我打算
             
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="40px" style="text-align: center">60</asp:TextBox>
                歲退休。每個月<asp:TextBox ID="TextBox9" runat="server" Width="40px" style="text-align: center">2.5</asp:TextBox>
                萬元生活費。我預估活到<asp:TextBox ID="TextBox10" runat="server" TextMode="Number" Width="40px" style="text-align: center">85</asp:TextBox>
                歲完成精彩人生。
            </div>
        </div>

        <div class="panel panel-default"> 
            <div class="panel-heading" style="background-color:violet">
                旅遊
            </div>
            <div class="panel-body">
                我打算在
             
                <asp:DropDownList ID="DropDownList18" runat="server">
                </asp:DropDownList>
                年旅遊。預計花費<asp:TextBox ID="TextBox11" runat="server" Width="40px" style="text-align: center">6</asp:TextBox>
                萬元。(若一年多次，可以在預算上加總，填寫金額為當度旅遊總花費)我打算每隔<asp:DropDownList ID="DropDownList19" runat="server">
                </asp:DropDownList>
                年旅遊一次。這一生大約到<asp:TextBox ID="TextBox12" runat="server" TextMode="Number" Width="40px" style="text-align: center">70</asp:TextBox>
                歲不再旅遊。
            </div>
        </div>
        <div >

            <asp:Button ID="Button2" runat="server" Height="28px" Text="設定參數" Width="86px" OnClick="Button2_Click" />
            

           

        </div>
        <div id="parameter" runat="server" class="panel panel-default">
            <div class="panel-heading" style="background-color:khaki">
                計算參數
            </div>
            <div style="height: 342px" class="panel-body">
                通膨率
                <asp:DropDownList ID="DropDownList20" runat="server">
                </asp:DropDownList>
                %支出比例<asp:DropDownList ID="DropDownList21" runat="server">
                </asp:DropDownList>
                %學費上漲率<asp:DropDownList ID="DropDownList22" runat="server">
                </asp:DropDownList>
                %<br />
                嬰幼兒學費、養育費每年<asp:TextBox ID="TextBox13" runat="server" Width="40px" style="text-align: center">0</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList23" runat="server">
                </asp:DropDownList>
                年。<br />
                幼兒園學費、養育費每年<asp:TextBox ID="TextBox15" runat="server" Width="40px" style="text-align: center">8</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList24" runat="server">
                </asp:DropDownList>
                年。<br />
                小學學費、養育費每年<asp:TextBox ID="TextBox17" runat="server" Width="40px" style="text-align: center">8</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList25" runat="server">
                </asp:DropDownList>
                年。<br />
                國中學費、養育費每年<asp:TextBox ID="TextBox19" runat="server" Width="40px" style="text-align: center">11</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList26" runat="server">
                </asp:DropDownList>
                年。<br />
                高中學費、養育費每年<asp:TextBox ID="TextBox21" runat="server" Width="40px" style="text-align: center">11</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList27" runat="server">
                </asp:DropDownList>
                年。<br />
                大學學費、養育費每年<asp:TextBox ID="TextBox23" runat="server" Width="40px" style="text-align: center">10</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList28" runat="server">
                </asp:DropDownList>
                年。<br />
                研究所學費、養育費每年<asp:TextBox ID="TextBox25" runat="server" Width="40px" style="text-align: center">5</asp:TextBox>
                萬元，共供給<asp:DropDownList ID="DropDownList29" runat="server">
                </asp:DropDownList>
                年。<br />
                房屋上漲幅度<asp:DropDownList ID="DropDownList30" runat="server">
                </asp:DropDownList>
                %，購買房屋後，年生活費調整額度為<asp:TextBox ID="TextBox27" runat="server" Width="40px" style="text-align: center">1.2</asp:TextBox>
                萬元。<br />
               (購屋後會增加房屋稅、地價稅、社區管理費……等；可能減少租金支出……。房貸應繳本息，系統會自動計算，不列入本欄位中)

                <br />
                車子年上漲幅度<asp:DropDownList ID="DropDownList31" runat="server">
                </asp:DropDownList>
                %購買車子後，年生活費調整額度為<asp:TextBox ID="TextBox28" runat="server" Width="40px" style="text-align: center">12</asp:TextBox>
                萬元。<br />
                (若為第一次買車，將會增加稅金、油錢、保養、停車位…..等費用；可能減少支付公共交通費用。車貸應繳本息，系統會自動計算，不列入本欄位中)<br />
&nbsp;<asp:Button ID="Button3" runat="server" Height="29px" OnClick="Button3_Click" Text="離開" Width="51px" />
            

            <button type="button" id="Button1"  onclick="re()">試算</button>
                 <span id="chart_div" ></span>
                <span id="chart2_div" ></span>
            </div>
        </div>
    </form>
    
</body>
</html>
