<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Decibal.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:decibal.ece8803ConnectionString2 %>" SelectCommand="SELECT [UserID], [FirstName], [LastName], [Username], [Balance] FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [Username], [Balance]) VALUES (@FirstName, @LastName, @Username, @Balance)" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Balance] = @Balance WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Balance" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Balance" Type="Single" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="UserID">
        <Settings ShowFilterRow="True" />
        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FirstName">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="LastName">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Username">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Balance">
                </dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Username" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Balance" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="c">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UserID" Name="ID" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
        </Columns>
</dx:ASPxGridView>
</asp:Content>
