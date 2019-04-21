<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KYC.aspx.cs" Inherits="KYC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        風險屬性問卷<br />
        1.請問您的實際年齡：<br />
        <asp:DropDownList ID="DropDownList13" runat="server">
            <asp:ListItem>a.未滿 20 歲/70 歲(含)以上</asp:ListItem>
            <asp:ListItem>b.60 歲(含)以上〜70 歲 </asp:ListItem>
            <asp:ListItem>c.50 歲(含)以上〜60 歲</asp:ListItem>
            <asp:ListItem>d.40 歲(含)以上〜50 歲 </asp:ListItem>
            <asp:ListItem>e.20 歲(含)以上〜40 歲</asp:ListItem>
        </asp:DropDownList>
        <br />
        2.請問您的個人年所得(新台幣元)：<br />
        <asp:DropDownList ID="DropDownList14" runat="server">
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
        6.請問您有多少年投資經驗在具價值波動性之商品(包括股票、共同基金、外幣、結構型投資商品、認(售)購權證、期貨、選擇權及投資型保單) ？<br />
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>a.沒有經驗 </asp:ListItem>
            <asp:ListItem>b.1 〜 3 年 </asp:ListItem>
            <asp:ListItem>c.4 〜 6 年 </asp:ListItem>
            <asp:ListItem>d.7 〜 9 年 </asp:ListItem>
            <asp:ListItem>e.10 年以上</asp:ListItem>
        </asp:DropDownList>
        <br />
        7.請問您目前投資之資產中，約有多少比例是持有前述 2.4 所列舉之具價值波動性得商品 ？ (風險評估-偏好)
        <br />
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>a.0%</asp:ListItem>
            <asp:ListItem>b.介於 0%〜10%(含)</asp:ListItem>
            <asp:ListItem>c.介於 10%〜25%(含) </asp:ListItem>
            <asp:ListItem>d.介於 25%〜50%(含)</asp:ListItem>
            <asp:ListItem>e.超過 50% </asp:ListItem>
        </asp:DropDownList>
        <br />
        8.在一般情況下，您所能接受之價格波動，大約在那種程度？<br />
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
        <asp:DropDownList ID="DropDownList9" runat="server" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged">
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
    
    </div>
        <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="執行" Width="61px" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
