<%@ Page Title="Book Record" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Book Record</h3>
    <asp:Table ID="tblBooks" runat="server" CssClass="table table-stripe">
        <asp:TableHeaderRow>

            <asp:TableHeaderCell>Title</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author</asp:TableHeaderCell>  
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publisher</asp:TableHeaderCell>           
            <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
            <asp:TableHeaderCell>Word Count</asp:TableHeaderCell>

        </asp:TableHeaderRow>
    </asp:Table>
    <br />
</asp:Content>