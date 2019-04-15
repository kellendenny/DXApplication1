<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="Decibal._Default" %>

<%@ Register assembly="DevExpress.XtraCharts.v18.2.Web, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Data From Raspberry Pi</h2>
    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" DataSourceID="decibal2" Height="300px" Width="640px">
        <DiagramSerializable>
            <cc1:XYDiagram>
            <axisx visibleinpanesserializable="-1">
                <datetimescaleoptions aggregatefunction="None" autogrid="False" gridalignment="Second" measureunit="Second" gridspacing="15">
                </datetimescaleoptions>
            </axisx>
            <axisy visibleinpanesserializable="-1">
            </axisy>
            <secondaryaxesx>
                <cc1:SecondaryAxisX Alignment="Near" AxisID="0" Name="Secondary AxisX 1" VisibleInPanesSerializable="-1">
                </cc1:SecondaryAxisX>
            </secondaryaxesx>
            </cc1:XYDiagram>
        </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
        <SeriesSerializable>
            <cc1:Series ArgumentDataMember="Time" ArgumentScaleType="DateTime" DataSourceSorted="True" LabelsVisibility="True" Name="Series 1" ValueDataMembersSerializable="Value">
            <datetimesummaryoptions measureunit="Second" measureunitmultiplier="1" useaxismeasureunit="False" />
            <viewserializable>
                <cc1:LineSeriesView AggregateFunction="None">
                </cc1:LineSeriesView>
            </viewserializable>
            </cc1:Series>
        </SeriesSerializable>
        <SeriesTemplate ValueDataMembersSerializable="Value" />
</dx:WebChartControl>
    <asp:SqlDataSource ID="decibal2" runat="server" ConnectionString="<%$ ConnectionStrings:decibal.ece8803ConnectionString %>" SelectCommand="SELECT [Time], [Value] FROM [RampTest]"></asp:SqlDataSource>
<asp:SqlDataSource ID="decibal" runat="server" ConnectionString="<%$ ConnectionStrings:db2ConnectionString %>" SelectCommand="SELECT [Voltage], [DateTime] FROM [Table1]"></asp:SqlDataSource>
    <p class="MsoNormal">
        <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;
mso-fareast-font-family:&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">The primary of objective of the decibal. project is two fold. The first objective is to prevent the overloading of distribution transformers during peak grid demand times. This could be done with simple demand reduction or demand response techniques, however many users would be unsatisfied with longer charge times or long queues for charging. That is why the second main objective of the decibal. project is to provide users monetary incentives for delaying the charging of their electric vehicle as well as using their vehicle to support the charging of nearby vehicles in an EV to Grid configuration. <o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;
mso-fareast-font-family:&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast"><o:p>&nbsp;</o:p></span></p>
    <p class="MsoNormal">
        <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;
mso-fareast-font-family:&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">The decibal project provides a working proof of concept testbed for accomplishing these main objectives through four main parts. Those four main components are:<o:p></o:p></span></p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .5in; margin-bottom: .0001pt; mso-add-space: auto; text-indent: -.25in; mso-list: l0 level1 lfo1; line-height: 107%; font-size: 11.0pt; font-family: Calibri, sans-serif;">
        <![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-font-family:
Calibri;mso-bidi-theme-font:minor-latin"><span style="mso-list:Ignore">1.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-fareast-font-family:
&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">Testbed hardware (Device and Control Layer)<o:p></o:p></span></p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .5in; margin-bottom: .0001pt; mso-add-space: auto; text-indent: -.25in; mso-list: l0 level1 lfo1; line-height: 107%; font-size: 11.0pt; font-family: Calibri, sans-serif;">
        <![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-font-family:
Calibri;mso-bidi-theme-font:minor-latin"><span style="mso-list:Ignore">2.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-fareast-font-family:
&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">User Interface (Cyber Layer and System Control Layer)<o:p></o:p></span></p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .5in; margin-bottom: .0001pt; mso-add-space: auto; text-indent: -.25in; mso-list: l0 level1 lfo1; line-height: 107%; font-size: 11.0pt; font-family: Calibri, sans-serif;">
        <![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-font-family:
Calibri;mso-bidi-theme-font:minor-latin"><span style="mso-list:Ignore">3.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-fareast-font-family:
&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">Centralized Database (Cyber Layer and Market Layer)<o:p></o:p></span></p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .5in; margin-bottom: 8.0pt; mso-add-space: auto; text-indent: -.25in; mso-list: l0 level1 lfo1; line-height: 107%; font-size: 11.0pt; font-family: Calibri, sans-serif;">
        <![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-font-family:
Calibri;mso-bidi-theme-font:minor-latin"><span style="mso-list:Ignore">4.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-fareast-font-family:
&quot;Yu Mincho&quot;;mso-fareast-theme-font:minor-fareast">Distributed Algorithm (System Control Layer)<o:p></o:p></span></p>
<p>
</p>

    <h3>Overview</h3>
<p>
    <asp:Image ID="Image1" runat="server" Height="800px" ImageUrl="/Pictures/overview.PNG" Width="1000px" />
</p>

    <h3>Database</h3>
    <p>
&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="/Pictures/Database.PNG" />
    </p>

    <h3>Hardware</h3>
    <p>
        <asp:Image ID="Image4" runat="server" Height="700px" ImageUrl="/Pictures/hardware.PNG" Width="1000px" />
&nbsp;</p>

    <h3>Algorithm</h3>
    <p>
        <asp:Image ID="Image5" runat="server" ImageUrl="/Pictures/algorithm.PNG" Width="1000px" />
    </p>
    </asp:Content>