<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        height: 29px;
    }
        .auto-style3 {
            width: 407px;
        }
        .auto-style4 {
            width: 400px;
        }
        .auto-style5 {
            width: 321px;
        }
        .auto-style7 {
            width: 300px;
        }
        .auto-style8 {
            width: 299px;
        }
        .auto-style10 {
            width: 191px;
        }
        .auto-style12 {
            left: 17px;
            position: relative;
            top: 10px;
        }
        .auto-style14 {
            left: 99px;
            position: relative;
            top: 0px;
        }
        .auto-style15 {
            left: 98px;
            position: relative;
            top: 0px;
        }
        .auto-style16 {
            width: 174px;
        }
        .auto-style17 {
            left: 98px;
            position: relative;
            top: 0px;
            width: 174px;
        }
        .auto-style18 {
            
            position: relative;
            
            width: 174px;
        }
        .auto-style19 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="Large" Height="546px" Width="1300px" ActiveStepIndex="1" HeaderText="理財規劃" >
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" HorizontalAlign="Left" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="Medium" VerticalAlign="Top" Width="100px" />
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="基本資料">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="基本資料設定" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Panel ID="Panel8" runat="server" style="left: 100px; position: relative" Width="626px">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label2" runat="server" Text="年齡："></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="TextBox1" runat="server" Width="100px" style="TEXT-ALIGN:center">23</asp:TextBox>
                                歲</td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label3" runat="server" Text="通貨膨脹率："></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="TextBox2" runat="server" Width="100px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                %</td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label4" runat="server" Text="學費上漲率："></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="TextBox3" runat="server" Width="100px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                %</td>
                            <td class="auto-style15"></td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
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
            <asp:WizardStep runat="server" title="購屋">
                <br />
                <asp:Panel ID="Panel1" runat="server" Width="626px" CssClass="auto-style11">
                    <table style="width:100%;" class="auto-style12">
                        <tr>
                            <td class="auto-style18">預計購屋年齡：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox4" runat="server" Width="130px" style="TEXT-ALIGN:center">40</asp:TextBox>
                                歲</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style18">目前總價：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox5" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">10,000,000</asp:TextBox>
                                元</td>
                           
                        </tr>
                        <tr>
                            <td class="auto-style18">裝潢、交易等初期費用：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox6" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">500,000</asp:TextBox>
                                元</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style18">標的物年上漲幅度：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox7" runat="server" Width="130px" style="TEXT-ALIGN:center">1</asp:TextBox>
                                %</td>
                           
                        </tr>
                        <tr>
                            <td class="auto-style18">貸款比例：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox8" runat="server" Width="130px" style="TEXT-ALIGN:center">70</asp:TextBox>
                                %</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style18">貸款期間(年)：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox9" runat="server" Width="130px" style="TEXT-ALIGN:center">20</asp:TextBox>
                                年</td>                          
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                貸款利率：
                            </td>
                            <td class="auto-style14">                                
                                <asp:TextBox ID="TextBox10" runat="server" Width="130px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                %
                            </td>                            
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td class="auto-style14">
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="計算" />
                            </td>
                           
                        </tr>
                    </table>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <asp:Panel ID="Panel6" runat="server" Visible="False" Width="626px" CssClass="auto-style16">
                    <table style="width: 100%; height: 36px;">
                        <tr>
                            <td class="auto-style5">需求總額(當年度)：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">預估需貸款金額：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">需求缺口：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style15"></td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="購車">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Panel ID="Panel2" runat="server" style="right: -3px; left: 3px; position: relative; top: -36px; height: 246px" Width="626px" CssClass="auto-style13">
                    <table class="auto-style12" style="width:100%;">
                        <tr>
                            <td class="auto-style18">預計買車年齡：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox11" runat="server" Width="130px" style="TEXT-ALIGN:center">23</asp:TextBox>
                                歲</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">目前總價：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox12" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">600,000</asp:TextBox>
                                元</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">車險、稅金等費用：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox13" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">0</asp:TextBox>
                                元</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">標的物年上漲幅度：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox14" runat="server" Width="130px" style="TEXT-ALIGN:center">1</asp:TextBox>
                                %</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">貸款比例：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox15" runat="server" Width="130px" style="TEXT-ALIGN:center">60</asp:TextBox>
                                %</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">貸款期間(年)：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox16" runat="server" Width="130px" style="TEXT-ALIGN:center">5</asp:TextBox>
                                年</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">貸款利率：</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="TextBox17" runat="server" Width="130px" style="TEXT-ALIGN:center">4</asp:TextBox>
                                %</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td class="auto-style14">
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="計算" />
                            </td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel7" runat="server" Visible="False" Width="626px" CssClass="auto-style16">
                    <table style="width: 100%; height: 36px;">
                        <tr>
                            <td class="auto-style19">需求總額(當年度)：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style19">預估需貸款金額：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style19">需求缺口：</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label12" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style15"></td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="教育">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="已有小孩" AutoPostBack="True" GroupName="ch" OnCheckedChanged="RadioButton2_CheckedChanged" Checked="True" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" Text="未來打算生小孩" GroupName="ch" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Text="預計本人年齡：" Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox50" runat="server" Visible="False" Width="130px" style="TEXT-ALIGN:center">35</asp:TextBox>
                <asp:Label ID="Label24" runat="server" Text="歲" Visible="False"></asp:Label>
                <br />
                <asp:Panel ID="Panel9" runat="server" Height="263px" Width="865px" style="left: 100px; position: relative">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td class="auto-style46">預估學雜費及補習費</td>
                            <td class="auto-style46">預估生活費及撫養費</td>
                            <td class="auto-style47">供給(剩餘)年數</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style47">嬰幼兒</td>
                            <td class="auto-style46">&nbsp;</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox35" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">110,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox42" runat="server" Width="80px" style="TEXT-ALIGN:center">4</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox42" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">幼稚園</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox29" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">86,787</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox36" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">90,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox43" runat="server" Width="80px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox43" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">小學</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox30" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">89,340</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox37" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">90,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox44" runat="server" Width="80px" style="TEXT-ALIGN:center">6</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label27" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox44" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">國中</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox31" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">117,418</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox38" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">90,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox45" runat="server" Width="80px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label28" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox45" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">高中/職</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox32" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">117,418</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox39" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">120,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox46" runat="server" Width="80px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label29" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox46" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">大學</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox33" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">108,338</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox40" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">140,000</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox47" runat="server" Width="80px" style="TEXT-ALIGN:center">4</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label30" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox47" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">研究所</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox34" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">59,490</asp:TextBox>
                                元</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox41" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">0</asp:TextBox>
                                元</td>
                            <td class="auto-style47">
                                <asp:TextBox ID="TextBox48" runat="server" Width="80px" style="TEXT-ALIGN:center">2</asp:TextBox>
                                年</td>
                            <td>
                                <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="請輸入預估金額" Visible="False"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox48" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入供給年數</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td class="auto-style46">&nbsp;</td>
                            <td class="auto-style46">&nbsp;</td>
                            <td class="auto-style47">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style47">已準備養育基金</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="TextBox49" runat="server" Width="130px" AutoPostBack="True" style="TEXT-ALIGN:center">0</asp:TextBox>
                                元</td>
                            <td class="auto-style46">&nbsp;</td>
                            <td class="auto-style47">
                                <asp:Button ID="Button7" runat="server" Text="計算" OnClick="Button7_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel10" runat="server" Height="97px" Width="626px" Visible="False" style="left: 100px; position: relative">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style10">預估教養費總需求：</td>
                            <td>
                                <asp:Label ID="Label20" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">已準備養育金：</td>
                            <td>
                                <asp:Label ID="Label21" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">教養費使用當年需求缺口：</td>
                            <td>
                                <asp:Label ID="Label22" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="退休">
                <asp:Panel ID="Panel4" runat="server" Width="726px" Height="129px" style="left: 103px; position: relative; top: -79px;">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style7">預定退休年齡：</td>
                            <td class="auto-style23">
                                <asp:TextBox ID="TextBox18" runat="server" Width="130px" style="TEXT-ALIGN:center">65</asp:TextBox>
                                歲</td>
                            <td class="auto-style15">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">期望退休月生活費(現值)：</td>
                            <td class="auto-style23">
                                <asp:TextBox ID="TextBox19" runat="server" AutoPostBack="True" Width="130px" style="TEXT-ALIGN:center">25,000</asp:TextBox>
                                元</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">預估壽命：</td>
                            <td class="auto-style24">
                                <asp:TextBox ID="TextBox20" runat="server" Width="130px"  AutoPostBack="True" style="TEXT-ALIGN:center">80</asp:TextBox>
                                歲</td>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">

                                

                            </td>
                            <td>
                                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="計算" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>


                <asp:Panel ID="Panel5" runat="server" Width="626px" Visible="False" CssClass="auto-style9">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style8">預估退休後餘年：</td>
                            <td class="auto-style41">
                                <asp:Label ID="Label18" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style41"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">退休月生活費(終值)：</td>
                            <td>
                                <asp:Label ID="Label19" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">退休時需求缺口：</td>
                            <td>
                                <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        
                    </table>
                </asp:Panel>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="缺口清單">
                 <asp:Panel ID="Panel13" runat="server" style="left: 30px; position: relative; top: 0px; width: 600px; height: 594px;">
                    <br />
                    <table class="auto-style127">
                        <tr>
                            <td class="auto-style118">
                                <asp:Label ID="Label65" runat="server" Text="投資報酬率："></asp:Label>
                                <asp:TextBox ID="TextBox67" runat="server" Width="63px" style="TEXT-ALIGN:center">3</asp:TextBox>
                                %</td>
                            <td class="auto-style130">
                                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" style="height: 21px" Text="計算" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox67" ErrorMessage="RequiredFieldValidator" ForeColor="Red">請輸入報酬率</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style16">
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox67" Enabled="False" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer">請輸入適當報酬率</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118">&nbsp;</td>
                            <td class="auto-style130">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style118" colspan="3" style ="border:5px solid rgb(0, 0, 0);">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label52" runat="server" Font-Bold="True" Text="缺口清單"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style ="border:5px double rgb(0, 0, 0);">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label74" runat="server" Font-Bold="True" Text="項目"></asp:Label>
                                </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label75" runat="server" Font-Bold="True" Text="時間"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label76" runat="server" Font-Bold="True" Text="每月應準備"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label77" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label54" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label61" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">                             
                                <asp:Label ID="Label78" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label66" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label67" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr >
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                
                                <asp:Label ID="Label79" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label55" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label62" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                               
                                <asp:Label ID="Label80" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label56" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label63" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15" style="border:5px double rgb(0, 0, 0);">
                                
                                <asp:Label ID="Label81" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style15" style="border:5px double rgb(0, 0, 0);"><asp:Label ID="Label57" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style17" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label64" runat="server"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                
                                <asp:Label ID="Label82" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label68" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label69" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                               
                                <asp:Label ID="Label83" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label70" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label71" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                               
                                <asp:Label ID="Label84" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style118" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label72" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label73" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style112">
                                </td>
                            <td class="auto-style113">
                            </td>
                            <td class="auto-style16"></td>
                        </tr>
                        <tr>
                            <td class="auto-style106" style="border:5px double rgb(0, 0, 0);">
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label60" runat="server" Text="每月應投入金額=" Visible="False" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style108" style="border:5px double rgb(0, 0, 0);">
                                <asp:Label ID="Label59" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style16" style="border:5px double rgb(0, 0, 0);">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style105">
                                &nbsp;</td>
                            <td class="auto-style107">
                                &nbsp;</td>
                            <td class="auto-style16">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Chart ID="Chart1" runat="server" BackColor="239, 243, 251" style="z-index: 1; left: 780px; top: 220px; position: absolute; width: 493px; height: 331px;" BorderlineColor="Control" Height="600px" Width="800px">
                    <Series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" Font="標楷體, 18world" IsXValueIndexed="True" BackImageAlignment="Center" CustomProperties="PieLineColor=Black, MinimumRelativePieSize=50, PieDrawingStyle=Concave, PieLabelStyle=Outside" Label="#VALX#PERCENT{P1}" LabelBorderColor="White" MarkerBorderWidth="99" MarkerSize="1">
                            <SmartLabelStyle AllowOutsidePlotArea="Yes" CalloutBackColor="Control" CalloutLineDashStyle="Dash" />
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>



</asp:Content>

