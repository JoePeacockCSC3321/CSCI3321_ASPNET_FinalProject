<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublishers.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Add Publishers</h3>

    <div class ="row">

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersName" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-3">
            Address:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersAddress" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-3">
            City:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersCity" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-3">
            Postal Code:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersPostalCode" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-3">
            Country:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersCountry" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-3">
            Phone Number:
        </div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublishersPhone" runat="server"></asp:TextBox>
        </div>
            <br/>
            <br/>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Publisher" OnClick="btnSubmit_Click" />
        </div>
    </div>

</asp:Content>