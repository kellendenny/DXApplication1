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
            <td style="text-align: center; width: 251px;">State of Charge</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="dxspdtDesignMode" style="width: 251px">
    <dx:ASPxGaugeControl ID="ASPxGaugeControl1" runat="server" BackColor="White" Height="262px" Value="250" Width="258px" EnableClientSideAPI="True" OnCustomCallback ="ASPxGaugeControl1_CustomCallback" ClientInstanceName="gauge">
        <ClientSideEvents EndCallback="function(s, e) { timer.Start(); }" />
        <Gauges>
            <dx:LinearGauge Bounds="0, 0, 258, 262" Name="Gauge0">
                <scales>
                    <dx:LinearScaleComponent AcceptOrder="0" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="6" MajorTickmark-ShapeType="Linear_Style11_2" MajorTickmark-TextOffset="35" MaxValue="500" MinorTickCount="4" MinorTickmark-ShapeOffset="6" MinorTickmark-ShapeType="Linear_Style11_1" Name="scale1" StartPoint="62.5, 230" Value="250">
                    </dx:LinearScaleComponent>
                    <dx:LinearScaleComponent AcceptOrder="0" AppearanceMajorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMajorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-BorderBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceMinorTickmark-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:White&quot;/&gt;" AppearanceTickmarkText-TextBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:Black&quot;/&gt;" EndPoint="62.5, 20" MajorTickCount="6" MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeOffset="-18" MajorTickmark-ShapeType="Linear_Style11_3" MajorTickmark-TextOffset="-32" MaxValue="50" MinorTickCount="4" MinorTickmark-ShapeOffset="-12" MinorTickmark-ShapeType="Linear_Style11_4" Name="scale2" StartPoint="62.5, 230">
                    </dx:LinearScaleComponent>
                </scales>
                <levels>
                    <dx:LinearScaleLevelComponent AcceptOrder="50" LinearScale="" Name="level1" ScaleID="scale1" ShapeType="Style11" ZOrder="-50" />
                </levels>
                <backgroundlayers>
                    <dx:LinearScaleBackgroundLayerComponent AcceptOrder="-1000" LinearScale="" Name="bg1" ScaleEndPos="0.5075, 0.08" ScaleID="scale1" ScaleStartPos="0.5075, 0.92" ShapeType="Linear_Style11" ZOrder="1000" />
                </backgroundlayers>
            </dx:LinearGauge>
        </Gauges>
        <LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0">
        </LayoutPadding>
    </dx:ASPxGaugeControl>
            </td>
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
    <dx:ASPxTimer ID="timer" runat="server" Interval="2000" ClientInstanceName="timer">
    <ClientSideEvents Tick="function(s, e) { timer.Stop(); gauge.PerformCallback(); }" />
    </dx:ASPxTimer>
</asp:Content>
