<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ThreeSubQueries.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_NUMBER" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID_NUMBER" HeaderText="ID_NUMBER" ReadOnly="True" SortExpression="ID_NUMBER" />
        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
        <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT M.* 
FROM MUSICIAN M 
WHERE M.ID_NUMBER = ( SELECT A.ID_NUMBER
                                            FROM ALBUM A 
                                             WHERE A.ALB_ID =  
                                           (SELECT S.ALB_ID
                                            FROM SONG S
                                            WHERE S.TITLE = 'YOUM TALAT'));"></asp:SqlDataSource>
</asp:Content>

