﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="JoinThressTables.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID_NUMBER" HeaderText="ID_NUMBER" SortExpression="ID_NUMBER" />
        <asp:BoundField DataField="ALB_ID" HeaderText="ALB_ID" SortExpression="ALB_ID" />
        <asp:BoundField DataField="AUTHOR" HeaderText="AUTHOR" SortExpression="AUTHOR" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT M.ID_NUMBER , A.ALB_ID , S.AUTHOR

FROM MUSICIAN M JOIN ALBUM A 
ON M.ID_NUMBER = A.ID_NUMBER
                 JOIN SONG S 
			     ON A.ID_NUMBER = S.ALB_ID ;
"></asp:SqlDataSource>
</asp:Content>

