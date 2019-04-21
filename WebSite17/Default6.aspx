<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">








    <style type="text/css">
        .auto-style2 {
            height: 120px;
        }
    </style>








</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                  

                       
                              <asp:Panel ID="Panel2" runat="server" GroupingText="111">
                                   <table aria-checked="undefined" dir="auto" style="width:1225px; height: 30px;" >
                                <tr >
                                    <td class="auto-style75">

                                        <asp:Label ID="Label169" runat="server" Text="時間:" Font-Size="Medium"></asp:Label>

                                    </td>
                                    <td class="auto-style37">

                                        <asp:DropDownList ID="DropDownList16" runat="server" Font-Size="Medium">
                                            <asp:ListItem>2014.1-2016.12</asp:ListItem>
                                            <asp:ListItem>2014.4-2017.3</asp:ListItem>
                                            <asp:ListItem>2014.7-2017.6</asp:ListItem>
                                            <asp:ListItem>2014.10-2017.9</asp:ListItem>
                                            <asp:ListItem>2015.1-2017.12</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                        </table>
                                  </asp:Panel>
                            <asp:Panel ID="Panel1" runat="server" GroupingText="222">
                                <table aria-checked="undefined" dir="auto" style="width:1225px; height: 30px;" >
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label1" runat="server" Text="投信公司：" Font-Names="微軟正黑體" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox8" runat="server" Text="富邦投信" Font-Names="微軟正黑體"  AutoPostBack="True" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox20" runat="server" Text="國泰投信" Font-Names="微軟正黑體" AutoPostBack="True" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox22" runat="server" Text="元大投信" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox27" runat="server" Text="群益投信" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="CheckBox48" runat="server"  Text="全選" AutoPostBack="True" Font-Names="微軟正黑體" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label101" runat="server" ForeColor="Red" Text="請至少勾選一個經理公司" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                    </table>
                                </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" GroupingText="222">
                                <table aria-checked="undefined" dir="auto" style="width:1225px; height: 30px;" >
                                <tr>
                                    <td class="auto-style75">
                                        <asp:Label ID="Label4" runat="server" Text="區域性：" Font-Names="微軟正黑體" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="單一國家" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style71">
                                        <asp:CheckBox ID="CheckBox12" runat="server" Text="全球型" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox21" runat="server" Text="區域型" Font-Names="微軟正黑體" AutoPostBack="True" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox49" runat="server" Text="全選" AutoPostBack="True"  Font-Names="微軟正黑體" Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                        &nbsp;</td>
                                    <td class="auto-style37">
                                        <asp:Label ID="Label103" runat="server" ForeColor="Red" Text="請至少勾選一個區域性" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style37">&nbsp;</td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                </tr>
                                      </table>
                                </asp:Panel>
                     <asp:Panel ID="Panel4" runat="server" GroupingText="222">
                                <table aria-checked="undefined" dir="auto" style="width:1225px; height: 30px;" >
                                <tr>
                                    <td class="auto-style75">
                                        <asp:Label ID="Label5" runat="server" Text="投資區域：" Font-Names="微軟正黑體" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text="全球" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style71">
                                        <asp:CheckBox ID="CheckBox14" runat="server" Text="台灣" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37">
                                         <asp:CheckBox ID="CheckBox18" runat="server" Font-Names="微軟正黑體" Text="美國" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                   
                                    <td class="auto-style37">
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text="日本" Font-Names="微軟正黑體" AutoPostBack="True"  Font-Size="Medium" />
                                    </td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                    <td class="auto-style37"></td>
                                </tr>
                                     </table>
                                </asp:Panel>
                                
                           



                 
    
                    
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
</asp:Content>

