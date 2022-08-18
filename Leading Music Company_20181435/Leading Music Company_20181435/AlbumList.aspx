<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AlbumList.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ALB_ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ALB_ID" HeaderText="ALB_ID" ReadOnly="True" SortExpression="ALB_ID" />
        <asp:BoundField DataField="COPY_RIGHT_DATE" HeaderText="COPY_RIGHT_DATE" SortExpression="COPY_RIGHT_DATE" />
        <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
        <asp:BoundField DataField="ID_NUMBER" HeaderText="ID_NUMBER" SortExpression="ID_NUMBER" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT A.*
FROM ALBUM A JOIN MUSICIAN M 
ON A.ID_NUMBER = M.ID_NUMBER
WHERE M.NAME = 'NADA';"></asp:SqlDataSource>
</asp:Content>

