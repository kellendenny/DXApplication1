﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="MarketData.aspx.cs" Inherits="Decibal.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:decibal.ece8803ConnectionString2 %>" SelectCommand="SELECT [RecordID], [RecordTime], [ControllerID], [MarketPrice], [DemandResponse] FROM [MarketData]" DeleteCommand="DELETE FROM [MarketData] WHERE [RecordID] = @RecordID" InsertCommand="INSERT INTO [MarketData] ([RecordTime], [ControllerID], [MarketPrice], [DemandResponse]) VALUES (@RecordTime, @ControllerID, @MarketPrice, @DemandResponse)" UpdateCommand="UPDATE [MarketData] SET [RecordTime] = @RecordTime, [ControllerID] = @ControllerID, [MarketPrice] = @MarketPrice, [DemandResponse] = @DemandResponse WHERE [RecordID] = @RecordID">
        <DeleteParameters>
            <asp:Parameter Name="RecordID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="ControllerID" Type="Int32" />
            <asp:Parameter Name="MarketPrice" Type="Single" />
            <asp:Parameter Name="DemandResponse" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="ControllerID" Type="Int32" />
            <asp:Parameter Name="MarketPrice" Type="Single" />
            <asp:Parameter Name="DemandResponse" Type="Single" />
            <asp:Parameter Name="RecordID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="RecordID">
        <Settings ShowFilterRow="True" />
        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="RecordTime">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="ControllerID">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="MarketPrice">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="DemandResponse">
                </dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="RecordID" VisibleIndex="1" ReadOnly="True">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="RecordTime" VisibleIndex="2">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="ControllerID" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MarketPrice" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DemandResponse" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
        </Columns>
</dx:ASPxGridView>
</asp:Content>
