<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Charger1.aspx.cs" Inherits="Decibal.WebForm1" %>
<%@ Register assembly="DevExpress.Dashboard.v18.2.Web.WebForms, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.DashboardWeb" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="dx-justification">
        <tr>
            <td style="text-align: center; font-size: medium; font-weight: bold;" class="dxflEmptyItem_MetropolisBlue" colspan="2">CAR CHARGER NO. 1</td>
            <td style="width: 212px; text-align: center; height: 21px; font-weight: bold; font-size: medium;">ID = 1001</td>
            <td class="dxfm-filterViewDateCell" style="width: 191px; height: 21px"></td>
            <td style="width: 238px; height: 21px"></td>
            <td class="dxflEmptyItem_MetropolisBlue"></td>
        </tr>
        <tr>
            <td style="text-align: center; width: 251px; height: 20px;">State of Charge</td>
            <td class="dxfm-filterViewDateCell" style="width: 242px; height: 20px; text-align: center;">Battery Capacity (mAh)</td>
            <td class="dxflEmptyItem_MetropolisBlue" style="height: 20px; text-align: center; width: 212px;">Battery Voltage (Vdc)</td>
            <td class="dxflEmptyItem_MetropolisBlue" style="height: 20px; width: 191px; text-align: center;">Battery Current (mAmps)</td>
            <td class="dxflEmptyItem_MetropolisBlue" style="height: 20px; width: 238px; text-align: center;">&nbsp;</td>
            <td class="dxflEmptyItem_MetropolisBlue" style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td class="dxspdtDesignMode" style="width: 251px">
    <dx:ASPxGaugeControl ID="ASPxGaugeControl1" runat="server" BackColor="White" Height="262px" Value="100" Width="258px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl1_CustomCallback" ClientInstanceName="gauge" ShowLoadingPanel="False">
        <SettingsLoadingPanel Enabled="False" />
        <ClientSideEvents EndCallback="function(s, e) { timer.Start(); }" />
        <Gauges>
            <dx:LinearGauge Bounds="0, 0, 258, 262" Name="Gauge0">
                <scales>
                    <dx:LinearScaleComponent AcceptOrder="0" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="7" MajorTickmark-ShapeType="Linear_Style10_1" MajorTickmark-TextOffset="35" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="7" MinorTickmark-ShapeType="Linear_Style10_2" Name="scale1" StartPoint="62.5, 230" Value="100">
                    </dx:LinearScaleComponent>
                    <dx:LinearScaleComponent AcceptOrder="0" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="7" MajorTickmark-ShapeType="Linear_Style10_1" MajorTickmark-TextOffset="35" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="7" MinorTickmark-ShapeType="Linear_Style10_2" Name="scale2" StartPoint="62.5, 230">
                    </dx:LinearScaleComponent>
                </scales>
                <levels>
                    <dx:LinearScaleLevelComponent AcceptOrder="50" LinearScale="" Name="level1" ScaleID="scale1" ShapeType="Style10" ZOrder="-50" />
                </levels>
                <backgroundlayers>
                    <dx:LinearScaleBackgroundLayerComponent AcceptOrder="-1000" LinearScale="" Name="bg1" ScaleEndPos="0.5, 0.08" ScaleID="scale1" ScaleStartPos="0.5, 0.92" ShapeType="Linear_Style10" ZOrder="1000" />
                </backgroundlayers>
            </dx:LinearGauge>
        </Gauges>
        <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0">
        </LayoutPadding>
    </dx:ASPxGaugeControl>
            </td>
            <td class="dxfm-filterViewDateCell" style="width: 242px; text-align: center;">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl2" runat="server" BackColor="White" Height="250px" Value="000,000" Width="178px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl2_CustomCallback" ClientInstanceName="gauge2" ShowLoadingPanel="False">
                    <SettingsLoadingPanel Enabled="False" />
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#34000000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="0, 0, 237, 250" DigitCount="4" Name="Gauge0" Padding="20, 20, 20, 20" Text="000,000">
                            <backgroundlayers>
                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="211.85, 99.9625" Name="digitalBackgroundLayerComponent13" ShapeType="Style4" TopLeft="20, 0" ZOrder="1000" />
                            </backgroundlayers>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="width: 212px; text-align: center;">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl3" runat="server" BackColor="White" Height="250px" Value="00,000" Width="178px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl3_CustomCallback" ClientInstanceName="gauge3" ShowLoadingPanel="False">
                    <SettingsLoadingPanel Enabled="False" />
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#34000000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="0, 0, 250, 250" DigitCount="4" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                            <backgroundlayers>
                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="211.85, 99.9625" Name="digitalBackgroundLayerComponent13" ShapeType="Style4" TopLeft="20, 0" ZOrder="1000" />
                            </backgroundlayers>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td class="dxfm-filterViewDateCell" style="width: 191px; text-align: center;">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl4" runat="server" BackColor="White" Height="250px" Value="0" Width="179px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl4_CustomCallback" ClientInstanceName="gauge4" ShowLoadingPanel="False">
                    <SettingsLoadingPanel Enabled="False" />
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#34000000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="0, 0, 179, 250" DigitCount="4" Name="Gauge0" Padding="20, 20, 20, 20">
                            <backgroundlayers>
                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="211.85, 99.9625" Name="digitalBackgroundLayerComponent13" ShapeType="Style4" TopLeft="20, 0" ZOrder="1000" />
                            </backgroundlayers>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="width: 238px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="dxspdtDesignMode" style="width: 251px; text-align: center;">
                Charge Rate (C)</td>
            <td class="dxfm-filterViewDateCell" style="width: 242px; text-align: center;">
                Battery Power (W)</td>
            <td style="width: 212px; text-align: center;">Charger State</td>
            <td class="dxfm-filterViewDateCell" style="width: 191px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="dxspdtDesignMode" style="width: 251px">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl6" runat="server" BackColor="White" Height="262px" Value="1" Width="258px" ShowLoadingPanel="False" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl6_CustomCallback" ClientInstanceName="gauge6">
                    <SettingsLoadingPanel Enabled="False" />
                    <Gauges>
                        <dx:LinearGauge Bounds="0, 0, 258, 262" Name="lGauge1">
                            <scales>
                                <dx:LinearScaleComponent AcceptOrder="0" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Silver&quot;/&gt;" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-ShapeOffset="7" MajorTickmark-ShapeType="Linear_Style10_1" MajorTickmark-TextOffset="35" MaxValue="2" MinorTickCount="4" MinorTickmark-ShapeOffset="7" MinorTickmark-ShapeType="Linear_Style10_2" Name="scale1" StartPoint="62.5, 230" Value="1">
                                </dx:LinearScaleComponent>
                            </scales>
                            <levels>
                                <dx:LinearScaleLevelComponent AcceptOrder="50" LinearScale="" Name="level1" ScaleID="scale1" ShapeType="Style10" ZOrder="-50" />
                            </levels>
                            <backgroundlayers>
                                <dx:LinearScaleBackgroundLayerComponent AcceptOrder="-1000" LinearScale="" Name="bg1" ScaleEndPos="0.5, 0.08" ScaleID="scale1" ScaleStartPos="0.5, 0.92" ShapeType="Linear_Style10" ZOrder="1000" />
                            </backgroundlayers>
                        </dx:LinearGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td class="dxfm-filterViewDateCell" style="width: 242px; text-align: center;">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl5" runat="server" BackColor="White" Height="250px" Value="00,000" Width="178px" ShowLoadingPanel="False" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl5_CustomCallback" ClientInstanceName="gauge5">
                    <SettingsLoadingPanel Enabled="False" />
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#34000000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="0, 0, 250, 250" DigitCount="4" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                            <backgroundlayers>
                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="211.85, 99.9625" Name="digitalBackgroundLayerComponent13" ShapeType="Style4" TopLeft="20, 0" ZOrder="1000" />
                            </backgroundlayers>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="width: 212px; text-align: center;">
                <dx:ASPxGaugeControl ID="ASPxGaugeControl7" runat="server" BackColor="White" Height="260px" Value="0" Width="177px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl7_CustomCallback" ClientInstanceName="gauge7">
                    <Gauges>
                        <dx:StateIndicatorGauge Bounds="0, 0, 177, 260" Name="Gauge0">
                            <indicators>
                                <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" Name="stateIndicatorComponent2" Size="200, 200" StateIndex="0">
                                    <states>
                                        <dx:IndicatorStateWeb Name="Charging" ShapeType="CarBattery3" />
                                        <dx:IndicatorStateWeb Name="Discharging" ShapeType="CarBattery1" />
                                        <dx:IndicatorStateWeb Name="Standby" ShapeType="CarBattery2" />
                                        <dx:IndicatorStateWeb Name="Innactive" ShapeType="CarBattery4" />
                                    </states>
                                </dx:StateIndicatorComponent>
                            </indicators>
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Arial, 24pt, style=Bold" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="125, 250" Size="350, 50" Text="Charging" ZOrder="-1001" />
                            </labels>
                        </dx:StateIndicatorGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td class="dxfm-filterViewDateCell" style="width: 191px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:sqldatasource runat="server" ID="SqlDataSource1" 
        SelectCommand="SELECT * FROM [Chargers]" ConnectionString="<%$ ConnectionStrings:decibal.ece8803ConnectionString %>" DeleteCommand="DELETE FROM [Chargers] WHERE [RecordID] = @RecordID" InsertCommand="INSERT INTO [Chargers] ([RecordTime], [ArduinoID], [BatteryCapacity], [BatterySoC], [ChargerState], [BatteryVoltage], [BatteryCurrent], [BatteryPower], [ChargerRate]) VALUES (@RecordTime, @ArduinoID, @BatteryCapacity, @BatterySoC, @ChargerState, @BatteryVoltage, @BatteryCurrent, @BatteryPower, @ChargerRate)" UpdateCommand="UPDATE [Chargers] SET [RecordTime] = @RecordTime, [ArduinoID] = @ArduinoID, [BatteryCapacity] = @BatteryCapacity, [BatterySoC] = @BatterySoC, [ChargerState] = @ChargerState, [BatteryVoltage] = @BatteryVoltage, [BatteryCurrent] = @BatteryCurrent, [BatteryPower] = @BatteryPower, [ChargerRate] = @ChargerRate WHERE [RecordID] = @RecordID">
        <DeleteParameters>
            <asp:Parameter Name="RecordID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="ArduinoID" Type="Int32" />
            <asp:Parameter Name="BatteryCapacity" Type="Single" />
            <asp:Parameter Name="BatterySoC" Type="Single" />
            <asp:Parameter Name="ChargerState" Type="String" />
            <asp:Parameter Name="BatteryVoltage" Type="Single" />
            <asp:Parameter Name="BatteryCurrent" Type="Single" />
            <asp:Parameter Name="BatteryPower" Type="Single" />
            <asp:Parameter Name="ChargerRate" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="ArduinoID" Type="Int32" />
            <asp:Parameter Name="BatteryCapacity" Type="Single" />
            <asp:Parameter Name="BatterySoC" Type="Single" />
            <asp:Parameter Name="ChargerState" Type="String" />
            <asp:Parameter Name="BatteryVoltage" Type="Single" />
            <asp:Parameter Name="BatteryCurrent" Type="Single" />
            <asp:Parameter Name="BatteryPower" Type="Single" />
            <asp:Parameter Name="ChargerRate" Type="Single" />
            <asp:Parameter Name="RecordID" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
    <dx:ASPxTimer ID="timer" runat="server" Interval="5000" ClientInstanceName="timer">
    <ClientSideEvents Tick="function(s, e) { timer.Stop(); gauge.PerformCallback(); gauge2.PerformCallback(); gauge3.PerformCallback(); gauge4.PerformCallback(); gauge5.PerformCallback(); gauge6.PerformCallback(); gauge7.PerformCallback(); }" />
    </dx:ASPxTimer>
</asp:Content>
