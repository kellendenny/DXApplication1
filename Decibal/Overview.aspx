<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="Decibal.WebForm5" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <table class="dx-justification">
        <tr>
            <td rowspan="3">&nbsp;</td>
            <td style="text-align: center; height: 115px;">
                <dx:ASPxGaugeControl ID="MarketCost" runat="server" AutoLayout="False" BackColor="White" Height="118px" style="margin-bottom: 0px" Value="00.000" Width="250px">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="0, 50, 250, 82" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Market Cost$" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td colspan="2" style="text-align: center; height: 115px;">
                <asp:Image ID="Image1" runat="server" Height="229px" ImageAlign="Right" ImageUrl="~/Pictures/transformer.png" Width="347px" />
                <dx:ASPxTrackBar ID="FeederReduction" runat="server" EnableClientSideAPI="True" EnableTheming="True" Orientation="Vertical" Position="0" PositionStart="0" Step="10" Theme="Aqua" Width="150px">
                </dx:ASPxTrackBar>
            </td>
            <td style="text-align: center; height: 115px;">
                <dx:ASPxGaugeControl ID="FeederLoad" runat="server" BackColor="White" Height="260px" LayoutInterval="6" Value="20" Width="260px">
                    <Gauges>
                        <dx:LinearGauge Bounds="6, 6, 248, 248" Name="linearGauge13">
                            <scales>
                                <dx:LinearScaleComponent AcceptOrder="0" Appearance-Brush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#4D4D4D&quot;/&gt;" Appearance-Width="4" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceScale-Brush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#4D4D4D&quot;/&gt;" AppearanceScale-Width="4" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#4D4D4D&quot;/&gt;" AutoRescaling="True" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-7" MajorTickmark-ShapeScale="1.1, 1" MajorTickmark-ShapeType="Circular_Style28_1" MajorTickmark-TextOffset="-20" MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeOffset="-14" MinorTickmark-ShapeType="Circular_Style28_1" MinorTickmark-ShowTick="False" Name="scale2" StartPoint="62.5, 230" Value="20">
                                    <ranges>
                                        <dx:LinearScaleRangeWeb AppearanceRange-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59BB71&quot;/&gt;" EndThickness="11" EndValue="60" Name="Range0" ShapeOffset="10" StartThickness="11" />
                                        <dx:LinearScaleRangeWeb AppearanceRange-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#F5E16B&quot;/&gt;" EndThickness="11" EndValue="80" Name="Range1" ShapeOffset="10" StartThickness="11" StartValue="60" />
                                        <dx:LinearScaleRangeWeb AppearanceRange-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#D54367&quot;/&gt;" EndThickness="11" EndValue="100" Name="Range2" ShapeOffset="10" StartThickness="11" StartValue="80" />
                                    </ranges>
                                </dx:LinearScaleComponent>
                            </scales>
                            <rangebars>
                                <dx:LinearScaleRangeBarComponent AcceptOrder="100" AppearanceRangeBar-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E73141&quot;/&gt;" EndOffset="8" LinearScale="" Name="linearGauge2_RangeBar1" ScaleID="scale2" StartOffset="4" ZOrder="-100" />
                            </rangebars>
                        </dx:LinearGauge>
                    </Gauges>
<LayoutPadding All="6" Left="6" Top="6" Right="6" Bottom="6"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td rowspan="3"></td>
        </tr>
        <tr>
            <td class="dxcpCurrentColor" style="text-align: center; height: 30px;"></td>
            <td class="dxcpCurrentColor" style="text-align: left; height: 30px;">Demand Reduction</td>
            <td class="dxcpCurrentColor" style="text-align: center; height: 30px;">Distribution Feeder</td>
            <td class="dxcpCurrentColor" style="text-align: center; height: 30px;">Distribution Feeder Loading</td>
        </tr>
        <tr>
            <td style="text-align: center; height: 38px;">&nbsp;</td>
            <td style="text-align: center; height: 38px;">&nbsp;</td>
            <td style="text-align: center; height: 38px;">&nbsp;</td>
            <td style="text-align: center; height: 38px;"></td>
        </tr>
        <tr>
            <td class="dxflEmptyItem_MetropolisBlue"></td>
            <td colspan="4" style="text-align: center; background-color: #000080;" class="dxflEmptyItem_MetropolisBlue"></td>
            <td class="dxflEmptyItem_MetropolisBlue"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center; font-size: 20px; font-weight: bold;">1001<dx:ASPxGaugeControl ID="CarState1" runat="server" BackColor="White" Height="80px" Value="0" Width="112px" EnableClientSideAPI="True" ClientInstanceName="carstate1" ShowLoadingPanel="False">
                <SettingsLoadingPanel Enabled="False" />
                <Gauges>
                    <dx:StateIndicatorGauge Bounds="0, 0, 260, 260" Name="Gauge0">
                        <indicators>
                            <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" Name="stateIndicatorComponent2" Size="200, 200" StateIndex="0">
                                <states>
                                    <dx:IndicatorStateWeb Name="State1" ShapeType="Arrow1" />
                                    <dx:IndicatorStateWeb Name="State2" ShapeType="Arrow2" />
                                    <dx:IndicatorStateWeb Name="State3" ShapeType="Arrow3" />
                                    <dx:IndicatorStateWeb Name="State4" ShapeType="Arrow4" />
                                    <dx:IndicatorStateWeb Name="State5" ShapeType="Arrow5" />
                                    <dx:IndicatorStateWeb Name="State6" ShapeType="Arrow6" />
                                    <dx:IndicatorStateWeb Name="State7" ShapeType="Arrow7" />
                                    <dx:IndicatorStateWeb Name="State8" ShapeType="Arrow8" />
                                    <dx:IndicatorStateWeb Name="State9" ShapeType="Arrow9" />
                                    <dx:IndicatorStateWeb Name="State10" ShapeType="Arrow10" />
                                </states>
                            </dx:StateIndicatorComponent>
                        </indicators>
                    </dx:StateIndicatorGauge>
                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; font-size: 20px; font-weight: bold;">1002<dx:ASPxGaugeControl ID="CarState2" runat="server" BackColor="White" Height="80px" Value="0" Width="112px" EnableClientSideAPI="True" ClientInstanceName="carstate2" ShowLoadingPanel="False">
                <SettingsLoadingPanel Enabled="False" />
                <Gauges>
                    <dx:StateIndicatorGauge Bounds="0, 0, 260, 260" Name="Gauge0">
                        <indicators>
                            <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" Name="stateIndicatorComponent2" Size="200, 200" StateIndex="0">
                                <states>
                                    <dx:IndicatorStateWeb Name="State1" ShapeType="Arrow1" />
                                    <dx:IndicatorStateWeb Name="State2" ShapeType="Arrow2" />
                                    <dx:IndicatorStateWeb Name="State3" ShapeType="Arrow3" />
                                    <dx:IndicatorStateWeb Name="State4" ShapeType="Arrow4" />
                                    <dx:IndicatorStateWeb Name="State5" ShapeType="Arrow5" />
                                    <dx:IndicatorStateWeb Name="State6" ShapeType="Arrow6" />
                                    <dx:IndicatorStateWeb Name="State7" ShapeType="Arrow7" />
                                    <dx:IndicatorStateWeb Name="State8" ShapeType="Arrow8" />
                                    <dx:IndicatorStateWeb Name="State9" ShapeType="Arrow9" />
                                    <dx:IndicatorStateWeb Name="State10" ShapeType="Arrow10" />
                                </states>
                            </dx:StateIndicatorComponent>
                        </indicators>
                    </dx:StateIndicatorGauge>
                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; font-size: 20px; font-weight: bold;">1003<dx:ASPxGaugeControl ID="CarState3" runat="server" BackColor="White" Height="80px" Value="0" Width="112px" EnableClientSideAPI="True" ClientInstanceName="carstate3" ShowLoadingPanel="False">
                <SettingsLoadingPanel Enabled="False" />
                <Gauges>
                    <dx:StateIndicatorGauge Bounds="0, 0, 260, 260" Name="Gauge0">
                        <indicators>
                            <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" Name="stateIndicatorComponent2" Size="200, 200" StateIndex="0">
                                <states>
                                    <dx:IndicatorStateWeb Name="State1" ShapeType="Arrow1" />
                                    <dx:IndicatorStateWeb Name="State2" ShapeType="Arrow2" />
                                    <dx:IndicatorStateWeb Name="State3" ShapeType="Arrow3" />
                                    <dx:IndicatorStateWeb Name="State4" ShapeType="Arrow4" />
                                    <dx:IndicatorStateWeb Name="State5" ShapeType="Arrow5" />
                                    <dx:IndicatorStateWeb Name="State6" ShapeType="Arrow6" />
                                    <dx:IndicatorStateWeb Name="State7" ShapeType="Arrow7" />
                                    <dx:IndicatorStateWeb Name="State8" ShapeType="Arrow8" />
                                    <dx:IndicatorStateWeb Name="State9" ShapeType="Arrow9" />
                                    <dx:IndicatorStateWeb Name="State10" ShapeType="Arrow10" />
                                </states>
                            </dx:StateIndicatorComponent>
                        </indicators>
                    </dx:StateIndicatorGauge>
                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; font-size: 20px; font-weight: bold;">1004<dx:ASPxGaugeControl ID="CarState4" runat="server" BackColor="White" Height="80px" Value="0" Width="112px" EnableClientSideAPI="True" ClientInstanceName="carstate4" ShowLoadingPanel="False">
                <SettingsLoadingPanel Enabled="False" />
                <Gauges>
                    <dx:StateIndicatorGauge Bounds="0, 0, 260, 260" Name="Gauge0">
                        <indicators>
                            <dx:StateIndicatorComponent AcceptOrder="0" Center="124, 124" Name="stateIndicatorComponent2" Size="200, 200" StateIndex="0">
                                <states>
                                    <dx:IndicatorStateWeb Name="State1" ShapeType="Arrow1" />
                                    <dx:IndicatorStateWeb Name="State2" ShapeType="Arrow2" />
                                    <dx:IndicatorStateWeb Name="State3" ShapeType="Arrow3" />
                                    <dx:IndicatorStateWeb Name="State4" ShapeType="Arrow4" />
                                    <dx:IndicatorStateWeb Name="State5" ShapeType="Arrow5" />
                                    <dx:IndicatorStateWeb Name="State6" ShapeType="Arrow6" />
                                    <dx:IndicatorStateWeb Name="State7" ShapeType="Arrow7" />
                                    <dx:IndicatorStateWeb Name="State8" ShapeType="Arrow8" />
                                    <dx:IndicatorStateWeb Name="State9" ShapeType="Arrow9" />
                                    <dx:IndicatorStateWeb Name="State10" ShapeType="Arrow10" />
                                </states>
                            </dx:StateIndicatorComponent>
                        </indicators>
                    </dx:StateIndicatorGauge>
                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
    <dx:ASPxGaugeControl ID="CarGauge1" runat="server" BackColor="White" Height="262px" Value="100" Width="258px" EnableClientSideAPI="True" ClientInstanceName="cargauge1" ShowLoadingPanel="False">
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
            <td style="text-align: center">
    <dx:ASPxGaugeControl ID="CarGauge2" runat="server" BackColor="White" Height="262px" Value="100" Width="258px" EnableClientSideAPI="True" ClientInstanceName="cargauge2" ShowLoadingPanel="False">
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
            <td style="text-align: center">
    <dx:ASPxGaugeControl ID="CarGauge3" runat="server" BackColor="White" Height="262px" Value="100" Width="258px" EnableClientSideAPI="True"  ClientInstanceName="cargauge3" ShowLoadingPanel="False">
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
            <td style="text-align: center">
    <dx:ASPxGaugeControl ID="CarGauge4" runat="server" BackColor="White" Height="262px" Value="100" Width="258px" EnableClientSideAPI="True" ClientInstanceName="cargauge4" ShowLoadingPanel="False">
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 74px"></td>
            <td style="text-align: center; height: 74px;">
                <dx:ASPxGaugeControl ID="CarMultiplier1" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carmultiplier1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Multiplier" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; height: 74px;">
                <dx:ASPxGaugeControl ID="CarMultiplier2" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carmultiplier1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Multiplier" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; height: 74px;">
                <dx:ASPxGaugeControl ID="CarMultiplier3" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carmultiplier1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Multiplier" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center; height: 74px;">
                <dx:ASPxGaugeControl ID="CarMultiplier4" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carmultiplier1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Multiplier" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="height: 74px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNetm1" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnetm1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net $" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNetm2" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnetm1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net $" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNetm3" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnetm1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net $" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNetm4" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnetm1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net $" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNete1" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnete1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net Energy" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNete2" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnete1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net Energy" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNete3" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnete1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net Energy" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarNete4" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carnete1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Net Energy" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarEstrem1" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carestrem1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Est. Time Rem" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarEstrem2" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carestrem1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Est. Time Rem" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarEstrem3" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carestrem1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Est. Time Rem" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td style="text-align: center">
                <dx:ASPxGaugeControl ID="CarEstrem4" runat="server" AutoLayout="False" BackColor="White" Height="91px" style="margin-bottom: 0px" Value="00.000" Width="250px" EnableClientSideAPI="True" ClientInstanceName="carestrem1" ShowLoadingPanel="False">
                    <Gauges>
                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Bounds="1, 41, 250, 58" DigitCount="-2" Name="Gauge0" Padding="20, 20, 20, 20" Text="00.000">
                            <labels>
                                <dx:LabelComponent AcceptOrder="1001" AppearanceText-Font="Tahoma, 24pt" AppearanceText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" Name="Gauge0_Label1" Position="150, -25" Size="350, 50" Text="Est. Time Rem" ZOrder="-1001" />
                            </labels>
                        </dx:DigitalGauge>
                    </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                </dx:ASPxGaugeControl>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


