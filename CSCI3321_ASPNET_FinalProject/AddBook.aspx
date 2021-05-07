<%@ Page Title="Add Book" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <!--Title-->
        <div class="col-md-3">Title:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBooksTitle" runat="server"></asp:TextBox>         
        </div>
                <br/>
                <br/>
        <!--author-->
        <div class="col-md-3">Author:</div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddBooksAuthor" runat="server" DataSourceID="sqlAuthors" DataTextField="LastName" DataValueField="AuthorID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName FROM Authors"></asp:SqlDataSource>
        </div>
                <br/>
                <br/>
        <!--author-->
        <div class="col-md-3">Price:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBooksPrice" runat="server"></asp:TextBox>         
        </div>
                <br/>
                <br/>
        <!--author-->
        <div class="col-md-3">Publish Date YYYY-MM-DD:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBooksPublishDate" runat="server"></asp:TextBox>         
        </div>
                <br/>
                <br/>
        <!--Publisher-->
        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddBooksPublisher" runat="server" DataSourceID="sqlPublishers" DataTextField="PublisherName" DataValueField="PublisherID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID,PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>
                <br/>
                <br/>
        <!--Genre-->
        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddBooksGenre" runat="server" DataSourceID="sqlGenre" DataTextField="GenreName" DataValueField="GenreID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID,GenreName FROM Genres"></asp:SqlDataSource>
        </div>
                <br/>
                <br/>
        <!--Word count-->
        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBooksWordCount" runat="server"></asp:TextBox>         
        </div>
                <br/>
                <br/>
        <!--Submit-->
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Book" OnClick="btnSubmit_Click"/>
        </div>
    </div>
</asp:Content>