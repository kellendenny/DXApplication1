<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="Decibal.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:decibal.ece8803ConnectionString2 %>" SelectCommand="SELECT [RecordID], [RecordTime], [UserID], [TransactionFinal], [ChargerActive], [StartTime], [EndTime], [EstimatedMinToCharge], [BatteryCapacity], [BatteryCurrentSoC], [BatteryMinCharge], [BatteryMaxCharge], [UserMaxCost], [UserNetCost], [UserNetEnergy], [UserCurrentPriceMultiplier] FROM [Transactions]" DeleteCommand="DELETE FROM [Transactions] WHERE [RecordID] = @RecordID" InsertCommand="INSERT INTO [Transactions] ([RecordTime], [UserID], [TransactionFinal], [ChargerActive], [StartTime], [EndTime], [EstimatedMinToCharge], [BatteryCapacity], [BatteryCurrentSoC], [BatteryMinCharge], [BatteryMaxCharge], [UserMaxCost], [UserNetCost], [UserNetEnergy], [UserCurrentPriceMultiplier]) VALUES (@RecordTime, @UserID, @TransactionFinal, @ChargerActive, @StartTime, @EndTime, @EstimatedMinToCharge, @BatteryCapacity, @BatteryCurrentSoC, @BatteryMinCharge, @BatteryMaxCharge, @UserMaxCost, @UserNetCost, @UserNetEnergy, @UserCurrentPriceMultiplier)" UpdateCommand="UPDATE [Transactions] SET [RecordTime] = @RecordTime, [UserID] = @UserID, [TransactionFinal] = @TransactionFinal, [ChargerActive] = @ChargerActive, [StartTime] = @StartTime, [EndTime] = @EndTime, [EstimatedMinToCharge] = @EstimatedMinToCharge, [BatteryCapacity] = @BatteryCapacity, [BatteryCurrentSoC] = @BatteryCurrentSoC, [BatteryMinCharge] = @BatteryMinCharge, [BatteryMaxCharge] = @BatteryMaxCharge, [UserMaxCost] = @UserMaxCost, [UserNetCost] = @UserNetCost, [UserNetEnergy] = @UserNetEnergy, [UserCurrentPriceMultiplier] = @UserCurrentPriceMultiplier WHERE [RecordID] = @RecordID">
        <DeleteParameters>
            <asp:Parameter Name="RecordID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="TransactionFinal" Type="Boolean" />
            <asp:Parameter Name="ChargerActive" Type="Boolean" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="EndTime" Type="DateTime" />
            <asp:Parameter Name="EstimatedMinToCharge" Type="Int32" />
            <asp:Parameter Name="BatteryCapacity" Type="Single" />
            <asp:Parameter Name="BatteryCurrentSoC" Type="Single" />
            <asp:Parameter Name="BatteryMinCharge" Type="Single" />
            <asp:Parameter Name="BatteryMaxCharge" Type="Single" />
            <asp:Parameter Name="UserMaxCost" Type="Single" />
            <asp:Parameter Name="UserNetCost" Type="Single" />
            <asp:Parameter Name="UserNetEnergy" Type="Single" />
            <asp:Parameter Name="UserCurrentPriceMultiplier" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RecordTime" Type="DateTime" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="TransactionFinal" Type="Boolean" />
            <asp:Parameter Name="ChargerActive" Type="Boolean" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="EndTime" Type="DateTime" />
            <asp:Parameter Name="EstimatedMinToCharge" Type="Int32" />
            <asp:Parameter Name="BatteryCapacity" Type="Single" />
            <asp:Parameter Name="BatteryCurrentSoC" Type="Single" />
            <asp:Parameter Name="BatteryMinCharge" Type="Single" />
            <asp:Parameter Name="BatteryMaxCharge" Type="Single" />
            <asp:Parameter Name="UserMaxCost" Type="Single" />
            <asp:Parameter Name="UserNetCost" Type="Single" />
            <asp:Parameter Name="UserNetEnergy" Type="Single" />
            <asp:Parameter Name="UserCurrentPriceMultiplier" Type="Single" />
            <asp:Parameter Name="RecordID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="RecordID">
    <Settings ShowFilterRow="True" />
    <SettingsDataSecurity AllowDelete="False" />
    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="EstimatedMinToCharge">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BatteryMinCharge">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BatteryMaxCharge">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="UserMaxCost">
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
        <dx:GridViewDataTextColumn FieldName="UserID" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="TransactionFinal" VisibleIndex="4">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataCheckColumn FieldName="ChargerActive" VisibleIndex="5">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataDateColumn FieldName="StartTime" VisibleIndex="6">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataDateColumn FieldName="EndTime" VisibleIndex="7">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="EstimatedMinToCharge" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BatteryCapacity" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BatteryCurrentSoC" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BatteryMinCharge" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BatteryMaxCharge" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UserMaxCost" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UserNetCost" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UserNetEnergy" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UserCurrentPriceMultiplier" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>
</asp:Content>
