<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="The_Right_Place.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Contact</h1>
        <p>This page will display general contact information, location, potentially a map.</p>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <asp:Image ID="imgStaff1" runat="server" />
        </div>
        <div class="col-sm-3">
            <asp:Image ID="imgStaff2" runat="server" />
        </div>
        <div class="col-sm-3">
            <asp:Image ID="imgStaff3" runat="server" />
        </div>
    </div>
</asp:Content>
