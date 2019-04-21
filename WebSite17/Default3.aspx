<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="auto-style64">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="2px" Font-Names="微軟正黑體" Font-Size="Medium" Height="473px" Width="1600px" Font-Overline="False" Font-Underline="False" ClientIDMode="Static">
            <HeaderStyle BackColor="#284E98" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" BorderColor="#EFF3FB" BorderWidth="2px" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle Font-Names="Verdana" ForeColor="White" BackColor="#507CD1" />
            <SideBarStyle BackColor="#507CD1" Font-Size="1.2em" VerticalAlign="Top" />
            <SideBarTemplate>
                <asp:DataList ID="SideBarList" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="SideBarButton" runat="server" BackColor="#507CD1" Font-Names="Verdana" ForeColor="White"></asp:LinkButton>
                    </ItemTemplate>
                    <SelectedItemStyle Font-Bold="True" />
                </asp:DataList>
            </SideBarTemplate>
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="下一頁" />
            </StartNavigationTemplate>
            <StepStyle ForeColor="#333333" Font-Size="0.8em" />
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" Title="KYC">
                      <div style="font-size: large">
    
        風險屬性問卷<br />1.請問您的實際年齡：<br /> 
                          <asp:DropDownList ID="DropDownList17" runat="server">
                              <asp:ListItem>a.未滿 20 歲/70 歲(含)以上</asp:ListItem>
                              <asp:ListItem>b.60 歲(含)以上〜70 歲 </asp:ListItem>
                              <asp:ListItem>c.50 歲(含)以上〜60 歲</asp:ListItem>
                              <asp:ListItem>d.40 歲(含)以上〜50 歲 </asp:ListItem>
                              <asp:ListItem>e.20 歲(含)以上〜40 歲</asp:ListItem>
                          </asp:DropDownList>
                          <br />
                          2.請問您的個人年所得(新台幣元)：<br /> 
                          <asp:DropDownList ID="DropDownList18" runat="server">
                              <asp:ListItem>a.50 萬以下</asp:ListItem>
                              <asp:ListItem>b.50 萬(含)〜100 萬</asp:ListItem>
                              <asp:ListItem>c.100 萬(含)〜150 萬 </asp:ListItem>
                              <asp:ListItem>d.150 萬(含)〜200 萬</asp:ListItem>
                              <asp:ListItem>e.200 萬(含)以上</asp:ListItem>
                          </asp:DropDownList>
                          <br />
                          3.請問您投資金融商品最主要的考量因素為何？<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem> a.保持資產的流動性 </asp:ListItem>
            <asp:ListItem> b.保本</asp:ListItem>
            <asp:ListItem> c.賺取固定的利息收益</asp:ListItem>
            <asp:ListItem> d.賺取資本利得(價差)</asp:ListItem>
            <asp:ListItem> e.追求總投資報酬最大</asp:ListItem>
        </asp:DropDownList>
        <br />
                          4.請問您的投資經驗為何？<br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>a.沒有經驗</asp:ListItem>
            <asp:ListItem>b.1 〜 3 年</asp:ListItem>
            <asp:ListItem>c.4 〜 6 年</asp:ListItem>
            <asp:ListItem>d.7 〜 9 年 </asp:ListItem>
            <asp:ListItem>e.10 年以上</asp:ListItem>
        </asp:DropDownList>
        <br />
                          5. 請問您曾經投資過那些金融商品(可複選)？<br />
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>a.台外幣存款、貨幣型基金、儲蓄型保險</asp:ListItem>
            <asp:ListItem>b.債券、債券型基金</asp:ListItem>
            <asp:ListItem>c.股票、股票型基金、ETF</asp:ListItem>
            <asp:ListItem>d.結構型商品、投資型保單</asp:ListItem>
            <asp:ListItem>e.期貨、選擇權或其他衍生性金融商品</asp:ListItem>
        </asp:DropDownList>
        <br />
                          6.請問您有多少年投資經驗在具價值波動性之商品(包括股票、共同基金、外幣、結構型投資商品、認(售)購權證、期貨、選擇權及投資型保單) ？<br /> <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>a.沒有經驗 </asp:ListItem>
            <asp:ListItem>b.1 〜 3 年 </asp:ListItem>
            <asp:ListItem>c.4 〜 6 年 </asp:ListItem>
            <asp:ListItem>d.7 〜 9 年 </asp:ListItem>
            <asp:ListItem>e.10 年以上</asp:ListItem>
        </asp:DropDownList>
        <br />
                          7.請問您目前投資之資產中，約有多少比例是持有前述 6. 所列舉之具價值波動性得商品 ？
        <br />
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>a.0%</asp:ListItem>
            <asp:ListItem>b.介於 0%〜10%(含)</asp:ListItem>
            <asp:ListItem>c.介於 10%〜25%(含) </asp:ListItem>
            <asp:ListItem>d.介於 25%〜50%(含)</asp:ListItem>
            <asp:ListItem>e.超過 50% </asp:ListItem>
        </asp:DropDownList>
        <br />
                          8.在一般情況下，您所能接受之價格波動，大約在那種程度？ <br />
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>a.價格波動介於-5% 〜 +5%之間</asp:ListItem>
            <asp:ListItem>b.價格波動介於-10% 〜 +10%之間</asp:ListItem>
            <asp:ListItem>c.價格波動介於-15% 〜 +15%之間</asp:ListItem>
            <asp:ListItem>d.價格波動介於-20% 〜 +20%之間</asp:ListItem>
            <asp:ListItem>e.價格波動超過±20%</asp:ListItem>
        </asp:DropDownList>
        <br />
                          9.假設您有 NT100 萬元之投資組合，請問您可承擔最大本金下跌幅度為何？ (如果您選擇 a.，您的風險屬性將設定為第一級 保守型)<br />
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem>a.0%</asp:ListItem>
            <asp:ListItem>b.-5%</asp:ListItem>
            <asp:ListItem>c.-10%</asp:ListItem>
            <asp:ListItem>d.-15% </asp:ListItem>
            <asp:ListItem>e.-20%以上</asp:ListItem>
        </asp:DropDownList>
        <br />
                          10.如您持有之整體投資資產下跌超過 15%，請問對您的生活影響程度為何？<br />
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem>a.無法承受</asp:ListItem>
            <asp:ListItem>b.影響程度大</asp:ListItem>
            <asp:ListItem>c.中度影響 </asp:ListItem>
            <asp:ListItem>d.影響程度小 </asp:ListItem>
            <asp:ListItem>e.沒有影響</asp:ListItem>
        </asp:DropDownList>
        <br />
                          11.當您的投資超過預設的停損或停利點時，請問您會採取那種處置方式？<br />
        <asp:DropDownList ID="DropDownList9" runat="server" >
            <asp:ListItem>a.立即賣出所有部位</asp:ListItem>
            <asp:ListItem>b.先賣出一半或一半以上部位</asp:ListItem>
            <asp:ListItem>c.先賣出一半以內部位 </asp:ListItem>
            <asp:ListItem>d.暫時觀望，視情況再因應</asp:ListItem>
            <asp:ListItem>e.繼續持有至回本或不漲為止</asp:ListItem>
        </asp:DropDownList>
        <br />
                          12.當您的投資組合預期平均報酬率達到多少時才會考慮賣出？<br />
        <asp:DropDownList ID="DropDownList10" runat="server">
            <asp:ListItem>a.5%</asp:ListItem>
            <asp:ListItem>b.10% </asp:ListItem>
            <asp:ListItem>c.15% </asp:ListItem>
            <asp:ListItem>d.20% </asp:ListItem>
            <asp:ListItem Value="e.25%以上">e.25%以上</asp:ListItem>
        </asp:DropDownList>
        <br />
                          13.若有臨時且非預期之事件發生時，請問您的備用金相當於您幾個月的家庭開支？ (備用金係指在沒有違約金的前提下可隨時動用的存款) <br />
        <asp:DropDownList ID="DropDownList11" runat="server">
            <asp:ListItem>a.無備用金儲蓄</asp:ListItem>
            <asp:ListItem>b.3 個月以下</asp:ListItem>
            <asp:ListItem>c.3 個月(含)以上 〜 6 個月</asp:ListItem>
            <asp:ListItem>d.6 個月(含)以上〜9 個月 </asp:ListItem>
            <asp:ListItem>e.9 個月(含)以上</asp:ListItem>
        </asp:DropDownList>
        <br />
                          14.請問您偏好以下那類風險及報酬率之投資組合？<br />
        <asp:DropDownList ID="DropDownList12" runat="server">
            <asp:ListItem>a.沒有概念</asp:ListItem>
            <asp:ListItem>b.絕對低度風險投資組合+穩健保本(低度風險，只要保本就好)</asp:ListItem>
            <asp:ListItem>c.低度風險投資組合+低度回報(低風險承擔下，追求低的投資報酬)</asp:ListItem>
            <asp:ListItem>d.中度風險投資組合+中度回報(在中等風險承擔下，要求中等水準的合理報酬)</asp:ListItem>
            <asp:ListItem>e.高風險投資組合+高度回報(願意承擔高度風險，也期待創造超額報酬)</asp:ListItem>
        </asp:DropDownList>
                          <br />
                          <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="執行" Font-Size="Medium" />
                          <br />
                          <asp:Label ID="Label157" runat="server" Font-Size="Large"></asp:Label>
        <br />
    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Step" title="基金商品篩選">
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                        <ProgressTemplate>
                            <asp:Label ID="Label115" runat="server" ForeColor="Red" Text="篩選中請等待．．．"></asp:Label>
                            
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                             <div class="container">
                            <table aria-checked="undefined" dir="auto" style="width:200px; height: 30px;" >
                                <tr >
                                    <td class="auto-style92">

                                        <asp:Label ID="Label169" runat="server" Text="時間:" Font-Size="Medium" Width="50px"></asp:Label>

                                    </td>
                                    <td class="auto-style37">

                                        <asp:DropDownList ID="DropDownList16" runat="server" Font-Size="Medium" Width="200px">
                                            <asp:ListItem>2014年1月-2016年12月</asp:ListItem>
                                            <asp:ListItem>2014年4月-2017年3月</asp:ListItem>
                                            <asp:ListItem>2014年7月-2017年6月</asp:ListItem>
                                            <asp:ListItem>2014年10月-2017年9月</asp:ListItem>
                                            <asp:ListItem>2015年1月-2017年12月</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                </table>                                                          
                                <div class="panel panel-success"  >                                    <div class="panel-heading" style="font-size:16px">投信公司</div>
                                        <div class="panel-body">
                                            <table >                                                        
                                                <tr>                                   
                                                    <td class="auto-style37">
                                                        <asp:CheckBox ID="CheckBox8" runat="server" Text="富邦投信" Font-Names="微軟正黑體" OnCheckedChanged="CheckBox8_CheckedChanged" AutoPostBack="True" Font-Size="Medium" />
                                                    </td>
                                                    <td class="auto-style37">
                                                        <asp:CheckBox ID="CheckBox20" runat="server" Text="國泰投信" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox20_CheckedChanged" Font-Size="Medium" />
                                                    </td>
                                                    <td class="auto-style37">
                                                        <asp:CheckBox ID="CheckBox22" runat="server" Text="元大投信" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox22_CheckedChanged" Font-Size="Medium" />
                                                    </td>
                                                    <td class="auto-style37">
                                                        <asp:CheckBox ID="CheckBox27" runat="server" Text="群益投信" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox27_CheckedChanged" Font-Size="Medium" />
                                                    </td>
                                                    <td class="auto-style37">
                                                        <asp:CheckBox ID="CheckBox48" runat="server" OnCheckedChanged="CheckBox48_CheckedChanged" Text="全選" AutoPostBack="True" Font-Names="微軟正黑體" Font-Size="Medium" />
                                                    </td>
                                                    <td class="auto-style37">
                                                        <asp:Label ID="Label101" runat="server" ForeColor="Red" Text="請至少勾選一個經理公司" Visible="False" Font-Size="Medium"></asp:Label>
                                                    </td>                                   
                                                 </tr>
                                         </table>
                                       </div>
                                     </div>
                                   
                            <div class="panel panel-success"  >                                    <div class="panel-heading" style="font-size:16px">區域性</div>
                                        <div class="panel-body">   
                           
                            <table aria-checked="undefined"  style="width:1000px; height: 30px;" >
                                <tr>
                                    
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="單一國家" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox11_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox12" runat="server" Text="全球型" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox12_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox21" runat="server" Text="區域型" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox21_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox49" runat="server" Text="全選" AutoPostBack="True" OnCheckedChanged="CheckBox49_CheckedChanged" Font-Names="微軟正黑體" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        </td>
                                    <td class="auto-style37">
                                        <asp:Label ID="Label103" runat="server" ForeColor="Red" Text="請至少勾選一個區域性" Visible="False"></asp:Label>
                                    </td>
                                    
                                </tr>
                                </table>
                              </div>
                                     </div>
                       <div class="panel panel-success"  >                                    <div class="panel-heading" style="font-size:16px">投資區域</div>
                                        <div class="panel-body">                               
                            <table  aria-checked="undefined" dir="auto" style="width:1000px; height: 30px;" >
                                <tr>
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text="全球" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox13_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox14" runat="server" Text="台灣" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox14_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                         <asp:CheckBox ID="CheckBox18" runat="server" Font-Names="微軟正黑體" Text="美國" AutoPostBack="True" OnCheckedChanged="CheckBox18_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text="日本" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox40_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                   
                                </tr>
                                <tr>
                                    
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox28" runat="server" Text="中國大陸" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox28_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox23" runat="server" Text="歐洲" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox23_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                         <asp:CheckBox ID="CheckBox32" runat="server" Font-Names="微軟正黑體" Text="亞洲" AutoPostBack="True" OnCheckedChanged="CheckBox32_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox15" runat="server" Text="新興市場" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox15_CheckedChanged" Font-Size="Medium"  />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox50" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox50_CheckedChanged" Text="全選" Font-Names="微軟正黑體" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:Label ID="Label104" runat="server" ForeColor="Red" Text="請至少勾選一個投資區域" Visible="False"></asp:Label>
                                    </td>
                                   
                                </tr>
                               </table>
                                 </div>
                         </div>                           
                                 <div class="panel panel-success"  >                                    <div class="panel-heading" style="font-size:16px">基金類型</div>
                                        <div class="panel-body">                
                            <table aria-checked="undefined" dir="auto" style="width:1000px; height: 30px;" >
                                <tr>
                                    
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="積極成長" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="成長收益" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                          <asp:CheckBox ID="CheckBox3" runat="server" Font-Names="微軟正黑體" Text="成長" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" Font-Size="Medium" />
                                        </td>                                
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox4" runat="server" Font-Names="微軟正黑體" Text="組合型" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37"> &nbsp;</td>
                                    <td class="auto-style37">&nbsp;</td>
                                </tr>
                                <tr>
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="指數型" Font-Names="微軟正黑體" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox6" runat="server" Font-Names="微軟正黑體" Text="收益" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    
                                    <td class="auto-style37"> 
                                        <asp:CheckBox ID="CheckBox7" runat="server" Font-Names="微軟正黑體" Text="貨幣型" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                   
                                   
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox25" runat="server" Font-Names="微軟正黑體" Text="期貨型" AutoPostBack="True" OnCheckedChanged="CheckBox25_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37"> &nbsp;</td>
                                    <td class="auto-style37">&nbsp;</td>
                                   
                                </tr>
                                <tr>
                                    
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox26" runat="server" Font-Names="微軟正黑體" Text="保本型" AutoPostBack="True" OnCheckedChanged="CheckBox26_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                          <asp:CheckBox ID="CheckBox47" runat="server" Font-Names="微軟正黑體" Text="平衡" AutoPostBack="True" OnCheckedChanged="CheckBox47_CheckedChanged" Font-Size="Medium" />
                                    </td>
                                   
                                  
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox51" runat="server" Text="全選" AutoPostBack="True" OnCheckedChanged="CheckBox51_CheckedChanged" Font-Names="微軟正黑體" Font-Size="Medium" />
                                    </td>
                                   
                                    <td class="auto-style37">
                                        <asp:Label ID="Label105" runat="server" ForeColor="Red" Text="請至少勾選一個基金類型" Visible="False"></asp:Label>
                                    </td>
                                   
                                </tr>
                                 </table>
                             </div>
                         </div>         
                        <div class="panel panel-success"  >                                    <div class="panel-heading" style="font-size:16px">其他參數</div>
                                        <div class="panel-body">        
                             <table aria-checked="undefined" dir="auto" style="width:1225px; height: 30px;" >
                                <tr>
                                    <td class="auto-style113">
                                        <asp:Label ID="Label107" runat="server" Text="風險等級：" Font-Names="微軟正黑體" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style114" style="font-size: 15px" >
                                        <asp:TextBox ID="TextBox30" runat="server" Width="45px" Font-Size="Medium" style="text-align: center;" CssClass="form-control">1</asp:TextBox>
                                       </td>
                                    <td   class="auto-style103">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label193" runat="server" Font-Size="Medium" Text="至"></asp:Label>
                                    </td>
                                    <td class="auto-style60">&nbsp;<asp:TextBox ID="TextBox31" runat="server" Width="45px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control" >5</asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp; 　</td>
                                    <td class="auto-style37">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox30" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">請輸入最低風險等級</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style88"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox31" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">請輸入最高風險等級</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style37">
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox30" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="5" MinimumValue="1" Font-Size="Medium">最低風險等級輸入範圍為1~5</asp:RangeValidator>
                                    </td>
                                    <td class="auto-style37">
                                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox31" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="5" MinimumValue="1" Font-Size="Medium">最高風險等級輸入範圍為1~5</asp:RangeValidator>
                                    </td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style61"></td>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style62"></td>
                                </tr>
                                 </table>
                                 <table aria-checked="undefined" dir="auto" class="auto-style105" >
                                <tr class="auto-style37">
                                    <td class="auto-style127">
                                        
                                       
                                        <asp:Label ID="Label192" runat="server" Font-Size="Medium" Text="平均報酬率、風險(變異數)計算"></asp:Label>
                                        
                                       
                                    </td>
                                    <td class="auto-style126">

                                        <asp:Button ID="Button6" runat="server" BackColor="#00CCFF" Cssclass="btn btn-info" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Medium" Height="42px" OnClick="Button6_Click" Text="計 算" Width="61px" />
                                    </td>
                                    <td class="auto-style120">
                                         &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style103">
                                        <asp:Label ID="Label6" runat="server" Text="平均報酬率：" Font-Names="微軟正黑體" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style126">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control">0.015</asp:TextBox>
                                    </td>
                                    <td class="auto-style78">

                                        <asp:Label ID="Label195" runat="server" Font-Size="Medium" Text="以上"></asp:Label>

                                    </td>
                                    <td class="auto-style112">
                                        <asp:Label ID="Label153" runat="server" Text="風險(變異數)：" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style28">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control">3</asp:TextBox>
                                    </td>
                                    <td class="auto-style121">

                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="以下"></asp:Label>

                                    </td>
                                    <td class="auto-style90">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">請輸入平均報酬率</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style60">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">請輸入風險</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style60">
                                        </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr class="auto-style37">
                                    <td class="auto-style127" style="font-family: 微軟正黑體">
                                        &nbsp;<asp:Label ID="Label189" runat="server" Font-Size="Medium" Text="顯示幾檔基金:"></asp:Label>
                                    </td>
                                    <td class="auto-style32">
                                        <asp:DropDownList ID="DropDownList19" runat="server" Font-Size="Medium"  >
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label190" runat="server" Font-Size="Medium" Text="排序依據: "></asp:Label>
                                    </td>
                                    <td class="auto-style125">                                      
                                        <asp:DropDownList ID="DropDownList13" runat="server" Font-Size="Medium">
                                            <asp:ListItem>平均報酬率(%)</asp:ListItem>
                                            <asp:ListItem>夏普指數</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style124">
                                        <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" Cssclass="btn btn-info" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Medium" Height="42px" OnClick="Button1_Click" Text="查 詢" Width="61px" />
                                    </td>
                                    <td class="auto-style122">
                                        &nbsp;</td>
                                </tr>
                              
                            </table>
                                              </div>
                         </div>    
                            <asp:Label ID="Label116" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>

 

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <br />
                            <div>                              
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Visible="False" Height="178px" Width="1225px" Font-Names="微軟正黑體" Font-Size="Medium"  >
                                <AlternatingRowStyle BackColor="#CCFFCC" />
                                <Columns>
                                    <asp:BoundField DataField="基金" HeaderText="基金" SortExpression="基金" />
                                    <asp:BoundField DataField="基金型態" HeaderText="基金型態" SortExpression="基金型態" />
                                    <asp:BoundField DataField="基金類型" HeaderText="基金類型" SortExpression="基金類型" />
                                    <asp:BoundField DataField="區域性" HeaderText="區域性" SortExpression="區域性" >
                                    <HeaderStyle BorderStyle="None" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="投資地區" HeaderText="投資地區" SortExpression="投資地區" />
                                    <asp:BoundField DataField="成_立_日" DataFormatString="{0:d}" HeaderText="成_立_日" SortExpression="成_立_日" />
                                    <asp:BoundField DataField="基金經理費" HeaderText="基金經理費" SortExpression="基金經理費" />
                                    <asp:BoundField DataField="基金保管費" HeaderText="基金保管費" SortExpression="基金保管費" />
                                    <asp:BoundField DataField="手續費率(%)" HeaderText="手續費率" SortExpression="手續費率(%)" />
                                    <asp:BoundField DataField="單筆申購" HeaderText="單筆申購" SortExpression="單筆申購" />
                                    <asp:BoundField DataField="定期定額" HeaderText="定期定額" SortExpression="定期定額" />
                                    <asp:BoundField DataField="風險等級" HeaderText="風險等級" SortExpression="風險等級" />
                                    <asp:BoundField DataField="平均報酬率(%)" HeaderText="平均報酬率" SortExpression="平均報酬率(%)" />
                                    <asp:BoundField DataField="風險(變異數)(%)" HeaderText="風險(變異數)" SortExpression="風險(變異數)(%)" />
                                    <asp:BoundField DataField="台灣" HeaderText="台灣" SortExpression="台灣" />
                                    <asp:BoundField DataField="亞洲" HeaderText="亞洲" SortExpression="亞洲" />
                                    <asp:BoundField DataField="全球" HeaderText="全球" SortExpression="全球" />
                                    <asp:BoundField DataField="新興市場" HeaderText="新興市場" SortExpression="新興市場" />
                                    <asp:BoundField DataField="股票" HeaderText="股票" SortExpression="股票" />
                                    <asp:BoundField DataField="貨幣" HeaderText="貨幣" SortExpression="貨幣" />
                                    <asp:BoundField DataField="債券" HeaderText="債券" SortExpression="債券" />
                                    <asp:BoundField DataField="指數" HeaderText="指數" SortExpression="指數" />
                                    <asp:BoundField DataField="保本" HeaderText="保本" SortExpression="保本" />
                                    <asp:BoundField DataField="夏普指數" HeaderText="夏普指數" SortExpression="夏普指數" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"  />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                
                            </asp:GridView>
                              </div>   
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FundConnectionString %>" SelectCommand="SELECT 基金, 基金型態, 基金類型, 區域性, 投資地區, [成 立 日] AS 成_立_日, 基金經理費, 基金保管費, [手續費率(%)], 單筆申購, 定期定額, 風險等級, [平均報酬率(%)], [風險(變異數)(%)], 台灣, 亞洲, 全球, 新興市場, 股票, 貨幣, 債券, 指數, 保本, 夏普指數 FROM 基金基本資料$"></asp:SqlDataSource>
                            <br />
</div>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                   
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:WizardStep>
                 <asp:WizardStep runat="server" StepType="Step" Title="投資策略篩選">

                     &nbsp;<br />
                    <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                        <ProgressTemplate>
                            <asp:Label ID="Label115" runat="server" ForeColor="Red" Text="篩選中請等待．．．"></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <div class="container">
                            <table aria-checked="undefined" dir="auto" style="width:1225px; height: 304px ;border-collapse:separate; border-spacing:0px 15px;">
                                <tr class="auto-style3">
                                    <td class="auto-style77">
                                        <asp:Label ID="Label160" runat="server" Text="日報酬率" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="TextBox40" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style54" style="font-size: 15px">
                                        至</td>
                                    <td class="auto-style28">

                                        <asp:TextBox ID="TextBox41" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                  
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style77">
                                        <asp:Label ID="Label161" runat="server" Text="最大虧損(%)" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="TextBox46" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style55 " style="font-size: 15px">
                                        至</td>
                                    <td class="auto-style30">

                                        <asp:TextBox ID="TextBox47" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label162" runat="server" Font-Names="微軟正黑體" Text="勝率：" Font-Size="Medium" ></asp:Label>
                                    </td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="TextBox38" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style55" style="font-size: 15px">
                                        至</td>
                                   <td class="auto-style30">

                                       <asp:TextBox ID="TextBox39" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label163" runat="server" Font-Names="微軟正黑體" Text="交易次數：" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="TextBox42" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style55"style="font-size: 15px">
                                        至</td>
                                     </td>
                                    <td>

                                        <asp:TextBox ID="TextBox43" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                               
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label164" runat="server" Text="獲利因子:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="TextBox44" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style55" style="font-size: 15px">
                                        至</td>
                                    </td>
                                    <td>

                                        <asp:TextBox ID="TextBox45" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label165" runat="server" Text="夏普比率:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="TextBox48" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td class="auto-style55" style="font-size: 15px">
                                        至</td>
                                   </td>
                                    <td>

                                        <asp:TextBox ID="TextBox49" runat="server" Width="75px" Font-Size="Medium" style="text-align: center;" CssClass="form-control" ></asp:TextBox>

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label166" runat="server" Text="排序依據" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:DropDownList ID="DropDownList14" runat="server" Font-Size="Medium">
                                            <asp:ListItem>日報酬率</asp:ListItem>
                                            <asp:ListItem>最大虧損(%)</asp:ListItem>
                                            <asp:ListItem>勝率</asp:ListItem>
                                            <asp:ListItem>交易次數</asp:ListItem>
                                            <asp:ListItem>獲利因子</asp:ListItem>
                                            <asp:ListItem>夏普比率</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                   </td>
                                    <td class="auto-style55">

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        <asp:Label ID="Label168" runat="server" Text="顯示幾筆:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:DropDownList ID="DropDownList15" runat="server" Font-Size="Medium">
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                 
                                </tr>
                                
                                <tr>
                                    <td class="auto-style78">
                                        
                                       
                                        <asp:Label ID="Label167" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
                                        
                                       
                                    </td>
                                    <td class="auto-style87">

                                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查詢"  Cssclass="btn btn-info" Font-Size="Medium" Height="43px" Width="69px" />
                                    </td>
                                   
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2 " Font-Size="Medium" Height="259px" Width="706px">
                                 <AlternatingRowStyle BackColor="#CCFFCC" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FundConnectionString %>" SelectCommand="SELECT * FROM [績效分析$]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                            <br />
                                </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                

                </asp:WizardStep>
                 <asp:WizardStep runat="server" StepType="Step" title="投資組合特性設定">
                    <asp:Label ID="Label12" runat="server" Text="每月定期投資:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" style="TEXT-ALIGN:center" Font-Size="Medium">50000</asp:TextBox>
                    <asp:Label ID="Label94" runat="server" Text="每單位基金:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox25" runat="server" AutoPostBack="True" style="TEXT-ALIGN:center" Font-Size="Medium">3000</asp:TextBox>
                     &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="最低要求報酬:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">3</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="單一標的投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                     &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label20" runat="server" Text="股票市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="貨幣市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label24" runat="server" Text="債券市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="單一標的投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="股票市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="貨幣市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="債券市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <br />
                    <asp:Label ID="Label26" runat="server" Text="指數基金投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Text="保本基金投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox15" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label30" runat="server" Text="平均風險等級下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox17" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label32" runat="server" Text="台灣市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox19" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label27" runat="server" Text="指數基金投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox14" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label29" runat="server" Text="保本基金投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox16" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label31" runat="server" Text="平均風險等級上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox18" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label33" runat="server" Text="台灣市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox20" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <br />
                    <asp:Label ID="Label34" runat="server" Text="亞洲市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox21" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label36" runat="server" Text="全球市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox23" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label95" runat="server" Text="新興市場投資下限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox26" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">0</asp:TextBox>
                     &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <br />
                    <asp:Label ID="Label35" runat="server" Text="亞洲市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox22" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label37" runat="server" Text="全球市場投資上限:" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="TextBox24" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" Text="新興市場投資上限:" ID="Label96" Font-Size="Medium"></asp:Label>

                    <asp:TextBox ID="TextBox27" runat="server" Width="40px" style="TEXT-ALIGN:center" Font-Size="Medium">100</asp:TextBox>
                     &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                     <br />
                     <asp:Label ID="Label170" runat="server" Text="基金加總投資下限:" Font-Size="Medium"></asp:Label>
                     <asp:TextBox ID="TextBox50" runat="server" style="TEXT-ALIGN:center" Width="40px" Font-Size="Medium">0</asp:TextBox>
                     %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label171" runat="server" Text="基金加總投資上限:" Font-Size="Medium"></asp:Label>
                     <asp:TextBox ID="TextBox52" runat="server" style="TEXT-ALIGN:center" Width="40px" Font-Size="Medium">100</asp:TextBox>
                     %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label172" runat="server" Text="策略加總投資下限:" Font-Size="Medium"></asp:Label>
                     <asp:TextBox ID="TextBox53" runat="server" style="TEXT-ALIGN:center" Width="40px" Font-Size="Medium">0</asp:TextBox>
                     %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label173" runat="server" Text="策略加總投資上限:" Font-Size="Medium"></asp:Label>
                     <asp:TextBox ID="TextBox54" runat="server" style="TEXT-ALIGN:center" Width="40px" Font-Size="Medium">100</asp:TextBox>
                     %<br />
                     <asp:Label ID="Label158" runat="server" Width="1326px" Font-Size="Medium"></asp:Label>
                    <br />
                </asp:WizardStep>
                
                 <asp:WizardStep ID="Step3" runat="server" StepType="Finish" Title="最佳投資組合">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate>
                            <asp:Label ID="Label97" runat="server" ForeColor="Red" Font-Size="Medium">篩選中請等待．．．</asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <br />
                            <br />
                            <table aria-hidden="False" dir="auto" style="width:1225px;  height: 284px; ">
                                <tr>
                                    <td class="auto-style143">
                                       
                                        <asp:Label ID="Label130" runat="server" Font-Bold="True" Text="投資名稱" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label142" runat="server" Text="投資權重" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label131" runat="server" Font-Bold="True" Text="投資單位數" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label132" runat="server" Font-Bold="True" Text="投資特性" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label133" runat="server" Font-Bold="True" Text="投資特性" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        &nbsp;</td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style144">
                                        <asp:Label ID="Label39" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label143" runat="server" Font-Size="Medium" ></asp:Label>
                                   </td>

                                    <td class="auto-style33">
                                        <asp:Label ID="Label49" runat="server" Width="50px" Font-Size="Medium" ></asp:Label>
                                    </td>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label60" runat="server" Text="投組風險(變異數)" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style44">
                                        <asp:Label ID="Label76" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label67" runat="server" Text="股票市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style44">
                                        <asp:Label ID="Label83" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style140">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label40" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label144" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label50" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label140" runat="server" Text="投組風險(標準差)" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label78" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label68" runat="server" Text="貨幣市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label84" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label41" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label145" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label51" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label62" runat="server" Text="投組報酬" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label79" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label69" runat="server" Text="債券市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label85" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label42" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label146" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label52" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label63" runat="server" Text="投組權重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label80" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label70" runat="server" Text="指數基金投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label86" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label43" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label147" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label53" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label139" runat="server" Text="VAR(95%)" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label81" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label71" runat="server" Text="保本基金投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label87" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label44" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label148" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label54" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label138" runat="server" Text="單一標的投資下限" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label82" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label73" runat="server" Text="台灣市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label89" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style144">
                                        <asp:Label ID="Label45" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label149" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label55" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label137" runat="server" Text="單一標的投資上限" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style44">
                                        <asp:Label ID="Label88" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label74" runat="server" Text="亞洲市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style44">
                                        <asp:Label ID="Label90" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style63">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style132">
                                        <asp:Label ID="Label99" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label150" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label100" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label136" runat="server" Text="平均風險等級" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label141" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style129">
                                        <asp:Label ID="Label75" runat="server" Text="全球市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label91" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label108" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label151" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label110" runat="server" Width="50px" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label155" runat="server" Text="總手續費" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label156" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style130">
                                        <asp:Label ID="Label92" runat="server" Text="新興市場投資比重" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label93" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">
                                        <asp:Label ID="Label134" runat="server" Width="180px" Font-Size="Medium"></asp:Label>
                                       
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label152" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label135" runat="server" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style130">&nbsp;</td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style49">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style144">

                                        <asp:Label ID="Label174" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                   <td class="auto-style36">

                                       <asp:Label ID="Label179" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                     <td class="auto-style33">

                                         <asp:Label ID="Label184" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        <asp:Label ID="Label175" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                   <td class="auto-style36">

                                       <asp:Label ID="Label180" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                     <td class="auto-style33">

                                         <asp:Label ID="Label185" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        <asp:Label ID="Label176" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                   <td class="auto-style36">

                                       <asp:Label ID="Label181" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                     <td class="auto-style33">

                                         <asp:Label ID="Label186" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        <asp:Label ID="Label177" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                   <td class="auto-style36">

                                       <asp:Label ID="Label182" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                     <td class="auto-style33">

                                         <asp:Label ID="Label187" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style143">

                                        <asp:Label ID="Label178" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                   <td class="auto-style36">

                                       <asp:Label ID="Label183" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                     <td class="auto-style33">

                                         <asp:Label ID="Label188" runat="server" Font-Size="Medium"></asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        &nbsp;</td>
                                   <td class="auto-style36">

                                       &nbsp;</td>
                                     <td class="auto-style33">

                                         &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        &nbsp;</td>
                                   <td class="auto-style36">

                                       &nbsp;</td>
                                     <td class="auto-style33">

                                         &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style143">

                                        &nbsp;</td>
                                   <td class="auto-style36">

                                       &nbsp;</td>
                                     <td class="auto-style33">

                                         &nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <asp:Label ID="Label154" runat="server" ForeColor="Red" Height="20px" Width="106px" Font-Size="Medium"></asp:Label>
                            <br />
                            <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" Text="求算最佳資產配置" Width="151px" Enabled="False" Font-Size="Medium" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <button id="Button9" runat="server" style="height:38px;width:103px;font-size: medium" onclick="re()" type="button" disabled="disabled">
                                效率前緣
                            </button>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FundConnectionString %>" SelectCommand="SELECT * FROM [基金日報酬$]"></asp:SqlDataSource>
                            <asp:GridView ID="GridView4" runat="server" AllowCustomPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Font-Size="Medium" Visible="False">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />

                            </asp:GridView>
                         
                            <div class="container">
                                <div id="chart_div" style="width: 800px; height: 500px">
                                </div>
                            </div>
                         
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <br />
&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>
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
          title: '投資組合變異數',
          ticks: [0.02, 0.04, 0.06, 0.08]
        },
        vAxis: {
            title: '投資組合報酬率',
            ticks: [ 0.02, 0.03, 0.04, 0.05, 0.06]
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
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
         <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script src="~/JavaScript.js"></script>
    <style type="text/css">
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            width: 280px;
        }
        .auto-style28 {
            height: 30px;
            width: 46px;
        }
        .auto-style30 {
            width: 177px;
        }
        .auto-style32 {
            height: 19px;
            width: 56px;
        }
        .auto-style33 {
            height: 30px;
            width: 239px;
        }
        .auto-style35 {
            height: 25px;
            width: 76px;
        }
        .auto-style36 {
            height: 30px;
            width: 177px;
        }
        .auto-style37 {
            height: 25px;
            width: 156px;
        }
        .auto-style40 {
            width: 279px;
        }
        .auto-style41 {
            height: 30px;
            width: 279px;
        }
        .auto-style43 {
            width: 246px;
        }
        .auto-style44 {
            height: 30px;
            width: 246px;
        }
        .auto-style49 {
            width: 277px;
        }
        .auto-style54 {
            height: 30px;
            width: 38px;
        }
        .auto-style55 {
            width: 38px;
        }
        .auto-style60 {
            height: 30px;
            width: 156px;
        }
        .auto-style61 {
            width: 206px;
            height: 30px;
        }
        .auto-style62 {
            width: 241px;
            height: 30px;
        }
        .auto-style63 {
            width: 182px;
            height: 30px;
        }
        .auto-style64 {
            height: 546px;
        }
        .auto-style77 {
            height: 30px;
            width: 96px;
        }
        .auto-style78 {
            width: 76px;
        }
        .auto-style86 {
            height: 25px;
            width: 40px;
        }
        .auto-style87 {
            width: 40px;
        }
        .auto-style88 {
            height: 25px;
            width: 176px;
        }
        .auto-style90 {
            height: 30px;
            width: 176px;
        }
        .auto-style92 {
            height: 25px;
            width: 264px;
        }
        .auto-style103 {
            height: 30px;
            width: 129px;
        }
        .auto-style105 {
            width: 1225px;
            height: 304px;
        }
       
        .auto-style112 {
            height: 30px;
            width: 138px;
        }
        .auto-style113 {
            height: 30px;
            width: 151px;
        }
        .auto-style114 {
            height: 30px;
            width: 83px;
        }
               
        .auto-style120 {
            height: 30px;
            width: 76px;
        }
       
        .auto-style121 {
            width: 56px;
        }
        .auto-style122 {
            height: 25px;
            width: 56px;
        }
        .auto-style124 {
            height: 25px;
            width: 46px;
        }
        .auto-style125 {
            height: 25px;
            width: 138px;
        }
        .auto-style126 {
            height: 30px;
            width: 56px;
        }
        .auto-style127 {
            height: 25px;
            width: 129px;
        }
       
        .auto-style129 {
            height: 19px;
            width: 230px;
        }
        .auto-style130 {
            width: 230px;
            height: 30px;
        }
       
        .auto-style132 {
            height: 19px;
            width: 210px;
        }
               
        .auto-style140 {
            width: 277px;
            height: 30px;
        }
       
        .auto-style141 {
            height: 25px;
            width: 217px;
        }
        .auto-style142 {
            height: 30px;
            width: 217px;
        }
        .auto-style143 {
            height: 25px;
            width: 210px;
        }
        .auto-style144 {
            height: 30px;
            width: 210px;
        }
       
        </style>
</asp:Content>


