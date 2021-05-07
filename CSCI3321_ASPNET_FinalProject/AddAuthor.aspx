<%@ Page Title="Add Author" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthor.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h3>Add Author</h3>
   <div class ="row">
      <div class="col-md-3">Last Name:</div> 
      <div class="col-mid-9">
            <asp:TextBox ID="txtAuthorsLastName" runat="server"></asp:TextBox>
       </div>
            <br/>
            <br/>
      <div class="col-md-3">First Name:</div>
      <div class="col-mid-9">
            <asp:TextBox ID="txtAuthorsFirstName" runat="server"></asp:TextBox>
       </div>
            <br/>
            <br/>
      <div class="col-md-3">Gender:</div>
      <div class="col-mid-9">
            <asp:TextBox ID="txtAuthorsGender" runat="server"></asp:TextBox>
       </div>
             <br/>
             <br/>
      <div class="col-md-3">Date of Birth YYYY-MM-DD:</div>
      <div class="col-mid-9">
            <asp:TextBox ID="txtAuthorsBirthDate" runat="server"></asp:TextBox>
         </div>
            <br/>
            <br/>
      <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Author" OnClick="btnSubmit_Click"/>
       </div>
</div>





</asp:Content>