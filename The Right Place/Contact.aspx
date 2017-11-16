<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="The_Right_Place.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Contact</h1>
        <p>Find the <em><b>Right</b></em> coordinator for your event</p>
    </div>

    <div class="row">
        <div class="col-3">
            <asp:Image ID="imgGRogue" runat="server" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblGRogue" runat="server" Text="Gary Rogue, Meeting Coordinator"></asp:Label>
        </div>
         <div class="col-3">
             <asp:Image ID="imgMMyers" runat="server" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblMMyers" runat="server" Text="MikaMyers, Small Event Coordinator"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
            <asp:Image ID="imgPSikes" runat="server" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblPSikes" runat="server" Text="Paul Sikes, Medium and Large Event Coordinator"></asp:Label>
        </div>
         <div class="col-3">
             <asp:Image ID="imgFStokes" runat="server" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblFStokes" runat="server" Text="Felicia Stokes, Wedding Coordinator"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
            <asp:Image ID="imgCWilson" runat="server" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblCWilson" runat="server" Text="Cade Wilson, Catering Coordinator"></asp:Label>
        </div>
    </div>


 
  
</asp:Content>
