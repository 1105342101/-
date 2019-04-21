<%@ Page Language="C#" AutoEventWireup="true" CodeFile="投組最佳化.aspx.cs" Inherits="投組最佳化"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            height: 28px;
            width: 147px;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            height: 28px;
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 459px">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="170px" Width="1272px">
            <HeaderStyle BackColor="#284E98" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" BorderColor="#EFF3FB" BorderWidth="2px" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle Font-Names="Verdana" ForeColor="White" BackColor="#507CD1" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle ForeColor="#333333" Font-Size="0.8em" />
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" Title="KYC">
                      <div style="font-size: medium">
    
        風險屬性問卷<br />
        1.請問您投資金融商品最主要的考量因素為何？(投資目的)<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem> a.保持資產的流動性 </asp:ListItem>
            <asp:ListItem> b.保本</asp:ListItem>
            <asp:ListItem> c.賺取固定的利息收益</asp:ListItem>
            <asp:ListItem> d.賺取資本利得(價差)</asp:ListItem>
            <asp:ListItem> e.追求總投資報酬最大</asp:ListItem>
        </asp:DropDownList>
        <br />
        2.請問您的投資經驗為何？(投資經驗-時間)<br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>a.沒有經驗</asp:ListItem>
            <asp:ListItem>b.1 〜 3 年</asp:ListItem>
            <asp:ListItem>c.4 〜 6 年</asp:ListItem>
            <asp:ListItem>d.7 〜 9 年 </asp:ListItem>
            <asp:ListItem>e.10 年以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        3. 請問您曾經投資過那些金融商品(可複選)？(投資經驗-商品)<br />
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>a.台外幣存款、貨幣型基金、儲蓄型保險</asp:ListItem>
            <asp:ListItem>b.債券、債券型基金</asp:ListItem>
            <asp:ListItem>c.股票、股票型基金、ETF</asp:ListItem>
            <asp:ListItem>d.結構型商品、投資型保單</asp:ListItem>
            <asp:ListItem>e.期貨、選擇權或其他衍生性金融商品</asp:ListItem>
        </asp:DropDownList>
        <br />
        4.請問您有多少年投資經驗在具價值波動性之商品(包括股票、共同基金、外幣、結構型投資商品、認(售)購權證、期貨、選擇權及投資型保單) ？(風險評估-偏好)<br /> <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>a.沒有經驗 </asp:ListItem>
            <asp:ListItem>b.1 〜 3 年 </asp:ListItem>
            <asp:ListItem>c.4 〜 6 年 </asp:ListItem>
            <asp:ListItem>d.7 〜 9 年 </asp:ListItem>
            <asp:ListItem>e.10 年以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        5.請問您目前投資之資產中，約有多少比例是持有前述 2.4 所列舉之具價值波動性得商品 ？ (風險評估-偏好)
        <br />
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>a.0%</asp:ListItem>
            <asp:ListItem>b.介於 0%〜10%(含)</asp:ListItem>
            <asp:ListItem>c.介於 10%〜25%(含) </asp:ListItem>
            <asp:ListItem>d.介於 25%〜50%(含)</asp:ListItem>
            <asp:ListItem>e.超過 50% </asp:ListItem>
        </asp:DropDownList>
        <br />
        6.在一般情況下，您所能接受之價格波動，大約在那種程度？ (風險評估-偏好)<br />
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>a.價格波動介於-5% 〜 +5%之間</asp:ListItem>
            <asp:ListItem>b.價格波動介於-10% 〜 +10%之間</asp:ListItem>
            <asp:ListItem>c.價格波動介於-15% 〜 +15%之間</asp:ListItem>
            <asp:ListItem>d.價格波動介於-20% 〜 +20%之間</asp:ListItem>
            <asp:ListItem>e.價格波動超過±20%</asp:ListItem>
        </asp:DropDownList>
        <br />
        7.假設您有 NT100 萬元之投資組合，請問您可承擔最大本金下跌幅度為何？(風險評估- 承受力) (如果您選擇 a.，您的風險屬性將設定為第一級 保守型)<br />
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem>a.0%</asp:ListItem>
            <asp:ListItem>b.-5%</asp:ListItem>
            <asp:ListItem>c.-10%</asp:ListItem>
            <asp:ListItem>d.-15% </asp:ListItem>
            <asp:ListItem>e.-20%以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        8.如您持有之整體投資資產下跌超過 15%，請問對您的生活影響程度為何？(風險評估-承受力)(現金流量期望)<br />
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem>a.無法承受</asp:ListItem>
            <asp:ListItem>b.影響程度大</asp:ListItem>
            <asp:ListItem>c.中度影響 </asp:ListItem>
            <asp:ListItem>d.影響程度小 </asp:ListItem>
            <asp:ListItem>e.沒有影響</asp:ListItem>
        </asp:DropDownList>
        <br />
        9.當您的投資超過預設的停損或停利點時，請問您會採取那種處置方式？(風險評估-偏好) (現金流量期望)<br />
        <asp:DropDownList ID="DropDownList9" runat="server" >
            <asp:ListItem>a.立即賣出所有部位</asp:ListItem>
            <asp:ListItem>b.先賣出一半或一半以上部位</asp:ListItem>
            <asp:ListItem>c.先賣出一半以內部位 </asp:ListItem>
            <asp:ListItem>d.暫時觀望，視情況再因應</asp:ListItem>
            <asp:ListItem>e.繼續持有至回本或不漲為止</asp:ListItem>
        </asp:DropDownList>
        <br />
        10.當您的投資組合預期平均報酬率達到多少時才會考慮賣出？(風險評估) (現金流量期望)<br />
        <asp:DropDownList ID="DropDownList10" runat="server">
            <asp:ListItem>a.5%</asp:ListItem>
            <asp:ListItem>b.10% </asp:ListItem>
            <asp:ListItem>c.15% </asp:ListItem>
            <asp:ListItem>d.20% </asp:ListItem>
            <asp:ListItem Value="e.25%以上">e.25%以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        11.若有臨時且非預期之事件發生時，請問您的備用金相當於您幾個月的家庭開支？ (備用金係指在沒有違約金的前提下可隨時動用的存款) (風險評估-承受力)<br />
        <asp:DropDownList ID="DropDownList11" runat="server">
            <asp:ListItem>a.無備用金儲蓄</asp:ListItem>
            <asp:ListItem>b.3 個月以下</asp:ListItem>
            <asp:ListItem>c.3 個月(含)以上 〜 6 個月</asp:ListItem>
            <asp:ListItem>d.6 個月(含)以上〜9 個月 </asp:ListItem>
            <asp:ListItem>e.9 個月(含)以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        12.請問您偏好以下那類風險及報酬率之投資組合？(期望報酬)<br />
        <asp:DropDownList ID="DropDownList12" runat="server">
            <asp:ListItem>a.沒有概念</asp:ListItem>
            <asp:ListItem>b.絕對低度風險投資組合+穩健保本(低度風險，只要保本就好)</asp:ListItem>
            <asp:ListItem>c.低度風險投資組合+低度回報(低風險承擔下，追求低的投資報酬)</asp:ListItem>
            <asp:ListItem>d.中度風險投資組合+中度回報(在中等風險承擔下，要求中等水準的合理報酬)</asp:ListItem>
            <asp:ListItem>e.高風險投資組合+高度回報(願意承擔高度風險，也期待創造超額報酬)</asp:ListItem>
        </asp:DropDownList>
                          <br />
                          <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="執行" />
                          <br />
                          <asp:Label ID="Label157" runat="server"></asp:Label>
        <br />
    
    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Step" title="基金商品篩選">
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                        <ProgressTemplate>
                            <asp:Label ID="Label115" runat="server" ForeColor="Red" Text="篩選中請等待．．．"></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <table aria-checked="undefined" dir="auto" style="width:99%; height: 304px;">
                                <tr>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label1" runat="server" Text="投信公司："></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox8" runat="server" Text="富邦投信" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox20" runat="server" Text="國泰投信" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox22" runat="server" Text="元大投信" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox27" runat="server" Text="群益投信" />
                                    </td>
                                    <td class="auto-style60">
                                        <asp:CheckBox ID="CheckBox48" runat="server" OnCheckedChanged="CheckBox48_CheckedChanged" Text="全選" AutoPostBack="True" />
                                    </td>
                                    <td class="auto-style61">
                                        <asp:Label ID="Label101" runat="server" ForeColor="Red" Text="請至少勾選一個經理公司" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style44"></td>
                                    <td class="auto-style48"></td>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style45"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label4" runat="server" Text="區域性："></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="單一國家" />
                                    </td>
                                    <td class="auto-style4">
                                        <asp:CheckBox ID="CheckBox12" runat="server" Text="全球型" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox21" runat="server" Text="區域型" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox49" runat="server" Text="全選" AutoPostBack="True" OnCheckedChanged="CheckBox49_CheckedChanged" />
                                    </td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label103" runat="server" ForeColor="Red" Text="請至少勾選一個區域性" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label5" runat="server" Text="投資區域："></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text="全球" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox14" runat="server" Text="台灣" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox18" runat="server" Text="美國" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text="日本" />
                                    </td>
                                    <td class="auto-style60">&nbsp;</td>
                                    <td class="auto-style61">&nbsp;</td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style48">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style45">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox28" runat="server" Text="中國大陸" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox23" runat="server" Text="歐洲" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox32" runat="server" Text="亞洲" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox15" runat="server" Text="新興市場" />
                                    </td>
                                    <td class="auto-style60">
                                        <asp:CheckBox ID="CheckBox50" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox50_CheckedChanged" Text="全選" />
                                    </td>
                                    <td class="auto-style61">
                                        <asp:Label ID="Label104" runat="server" ForeColor="Red" Text="請至少勾選一個投資區域" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style48">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style45">&nbsp;</td>
                                </tr>
                               
                                <tr>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label98" runat="server" Text="基金類型："></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="積極成長" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="成長收益" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox3" runat="server" Text="成長" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox4" runat="server" Text="組合型" />
                                    </td>
                                    <td class="auto-style60"></td>
                                    <td class="auto-style61"></td>
                                    <td class="auto-style44"></td>
                                    <td class="auto-style48"></td>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style45"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="指數型" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text="收益" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox7" runat="server" Text="貨幣型" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox25" runat="server" Text="期貨型" />
                                    </td>
                                    <td class="auto-style60">&nbsp;</td>
                                    <td class="auto-style61">&nbsp;</td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style48">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style45">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style5">
                                        <asp:CheckBox ID="CheckBox26" runat="server" Text="保本型" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBox47" runat="server" Text="平衡" />
                                    </td>
                                    <td class="auto-style47">
                                        <asp:CheckBox ID="CheckBox51" runat="server" Text="全選" AutoPostBack="True" OnCheckedChanged="CheckBox51_CheckedChanged" />
                                    </td>
                                    <td class="auto-style47">&nbsp;</td>
                                    <td class="auto-style60">
                                        <asp:Label ID="Label105" runat="server" ForeColor="Red" Text="請至少勾選一個基金類型" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style61">&nbsp;</td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style48">&nbsp;</td>
                                    <td class="auto-style41">&nbsp;</td>
                                    <td class="auto-style45">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">
                                        <asp:Label ID="Label107" runat="server" Text="風險等級："></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox30" runat="server" Width="66px">1</asp:TextBox>
                                    </td>
                                    <td class="auto-style3">至 &nbsp;<asp:TextBox ID="TextBox31" runat="server" Width="66px">5</asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　</td>
                                    <td class="auto-style47">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox30" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入最低風險等級</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style47"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox31" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入最高風險等級</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style60">
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox30" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="5" MinimumValue="1">最低風險等級輸入範圍為1~5</asp:RangeValidator>
                                    </td>
                                    <td class="auto-style61">
                                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox31" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="5" MinimumValue="1">最高風險等級輸入範圍為1~5</asp:RangeValidator>
                                    </td>
                                    <td class="auto-style44"></td>
                                    <td class="auto-style48"></td>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style45"></td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        
                                       
                                    </td>
                                    <td class="auto-style5">

                                        平均報酬率、風險(變異數)計算</td>
                                    <td>
                                         <asp:Button ID="Button6" runat="server" Text="計算" OnClick="Button6_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label6" runat="server" Text="平均報酬率："></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="45px">1.5</asp:TextBox>
                                        ％以上</td>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label153" runat="server" Text="風險(變異數)："></asp:Label>
                                    </td>
                                    <td class="auto-style47">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="45px">3</asp:TextBox>
                                        <asp:Label ID="Label8" runat="server" Text="以下"></asp:Label>
                                    </td>
                                    <td class="auto-style47">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入平均報酬率</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style60">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入風險</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style61">
                                        &nbsp;</td>
                                    <td class="auto-style44">&nbsp;</td>
                                    <td class="auto-style48"></td>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style45"></td>
                                </tr>
                            </table>
                            <asp:Label ID="Label116" runat="server" ForeColor="Red"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查詢" />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Visible="False" Height="178px" Width="1176px">
                                <AlternatingRowStyle BackColor="#CCFFCC" />
                                <Columns>
                                    <asp:BoundField DataField="基金" HeaderText="基金" SortExpression="基金" />
                                    <asp:BoundField DataField="基金型態" HeaderText="基金型態" SortExpression="基金型態" />
                                    <asp:BoundField DataField="基金類型" HeaderText="基金類型" SortExpression="基金類型" />
                                    <asp:BoundField DataField="區域性" HeaderText="區域性" SortExpression="區域性" />
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
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FundConnectionString %>" SelectCommand="SELECT 基金, 基金型態, 基金類型, 區域性, 投資地區, [成 立 日] AS 成_立_日, 基金經理費, 基金保管費, [手續費率(%)], 單筆申購, 定期定額, 風險等級, [平均報酬率(%)], [風險(變異數)(%)], 台灣, 亞洲, 全球, 新興市場, 股票, 貨幣, 債券, 指數, 保本, 夏普指數 FROM 基金基本資料$"></asp:SqlDataSource>
                            <br />
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
                    <asp:Label ID="Label12" runat="server" Text="每月定期投資:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" style="TEXT-ALIGN:center">50000</asp:TextBox>
                    <asp:Label ID="Label94" runat="server" Text="每單位基金:"></asp:Label>
                    <asp:TextBox ID="TextBox25" runat="server" AutoPostBack="True" style="TEXT-ALIGN:center">3000</asp:TextBox>
                     &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="最低要求報酬:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="40px" style="TEXT-ALIGN:center">3</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="單一標的投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label20" runat="server" Text="股票市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="貨幣市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label24" runat="server" Text="債券市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="單一標的投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="股票市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="貨幣市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="債券市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <br />
                    <asp:Label ID="Label26" runat="server" Text="指數基金投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Text="保本基金投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox15" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label30" runat="server" Text="平均風險等級下限:"></asp:Label>
                    <asp:TextBox ID="TextBox17" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label32" runat="server" Text="台灣市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox19" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label27" runat="server" Text="指數基金投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox14" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label29" runat="server" Text="保本基金投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox16" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label31" runat="server" Text="平均風險等級上限:"></asp:Label>
                    <asp:TextBox ID="TextBox18" runat="server" Width="40px" style="TEXT-ALIGN:center">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label33" runat="server" Text="台灣市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox20" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <br />
                    <asp:Label ID="Label34" runat="server" Text="亞洲市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox21" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label36" runat="server" Text="全球市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox23" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label95" runat="server" Text="新興市場投資下限:"></asp:Label>
                    <asp:TextBox ID="TextBox26" runat="server" Width="40px" style="TEXT-ALIGN:center">0</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <asp:Label ID="Label35" runat="server" Text="亞洲市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox22" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label37" runat="server" Text="全球市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox24" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label96" runat="server" Text="新興市場投資上限:"></asp:Label>
                    <asp:TextBox ID="TextBox27" runat="server" Width="40px" style="TEXT-ALIGN:center">100</asp:TextBox>
                    &nbsp;%<br />
                    <br />
                    <br />
                </asp:WizardStep>
                
                 <asp:WizardStep ID="Step3" runat="server" StepType="Finish" Title="最佳投資組合">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate>
                            <asp:Label ID="Label97" runat="server" ForeColor="Red">篩選中請等待．．．</asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <br />
                            <br />
                            <br />
                            <table aria-hidden="False" dir="auto" style="width:906px; margin-top: 0px; height: 284px;">
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label130" runat="server" Font-Bold="True" Text="基金名稱"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label142" runat="server" Text="基金權重"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label131" runat="server" Font-Bold="True" Text="基金單位數"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label132" runat="server" Font-Bold="True" Text="基金特性"></asp:Label>
                                    </td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label133" runat="server" Font-Bold="True" Text="基金特性"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        &nbsp;</td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label39" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label143" runat="server"></asp:Label>
                                   </td>

                                    <td class="auto-style33">
                                        <asp:Label ID="Label49" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label60" runat="server" Text="投組風險(變異數)"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label76" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label67" runat="server" Text="股票市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label83" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label40" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label144" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label50" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label140" runat="server" Text="投組風險(標準差)"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label78" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label68" runat="server" Text="貨幣市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label84" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label41" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label145" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label51" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label62" runat="server" Text="投組報酬"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label79" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label69" runat="server" Text="債券市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label85" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label42" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label146" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label52" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label63" runat="server" Text="投組權重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label80" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label70" runat="server" Text="指數基金投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label86" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label43" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label147" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label53" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label139" runat="server" Text="VAR(95%)"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label81" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label71" runat="server" Text="保本基金投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label87" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label44" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label148" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label54" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label138" runat="server" Text="單一標的投資下限"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label82" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label73" runat="server" Text="台灣市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label89" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label45" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label149" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label55" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label137" runat="server" Text="單一標的投資上限"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label88" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label74" runat="server" Text="亞洲市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label90" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label99" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label150" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label100" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label136" runat="server" Text="平均風險等級"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label141" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label75" runat="server" Text="全球市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label91" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label108" runat="server" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label151" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label110" runat="server" Width="50px"></asp:Label>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="Label155" runat="server" Text="手續費"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label156" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="Label92" runat="server" Text="新興市場投資比重"></asp:Label>
                                    </td>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label93" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style49">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <asp:Label ID="Label134" runat="server" Width="150px"></asp:Label>
                                       
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="Label152" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label135" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style40">&nbsp;</td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style46">&nbsp;</td>
                                    <td class="auto-style43">&nbsp;</td>
                                    <td class="auto-style49">&nbsp;</td>
                                </tr>
                                
                                
                            </table>
                            <asp:Label ID="Label154" runat="server" ForeColor="Red" Height="20px" Width="106px"></asp:Label>
                            <br />
                            <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" Text="求算最佳基金配置" Width="151px" Enabled="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="效率前緣" Height="41px" Width="103px" Enabled="False" />
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FundConnectionString %>" SelectCommand="SELECT * FROM [基金日報酬$]"></asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:Chart ID="Chart2" runat="server" Height="500px" Width="500px" ImageType="Jpeg">
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Titles>
                                    <asp:Title Font="標楷體, 20.25pt" Name="Title1" Text="效率前緣圖">
                                    </asp:Title>
                                </Titles>
                            </asp:Chart>
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
    </form>
</body>
</html>
