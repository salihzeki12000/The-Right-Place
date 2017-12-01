﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="The_Right_Place.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/site.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Contact</h1>
        <p>Find the <em><b>Right</b></em> coordinator for your event</p>
    </div>

    <div class="row">
        <div class="col-3">
            <img src="img/StaffHeadshots/Rogue.png"/>
        </div>
        <div class="col-3">
            <asp:Label ID="lblGRogue" runat="server" Text="Gary Rogue, Meeting Coordinator"></asp:Label>
            <a href="mailto:meetings@therightplace.com">meetings@therightplace.com</a>
        </div>
         <div class="col-3">
             <img src="img/StaffHeadshots/Myers.jpg" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblMMyers" runat="server" Text="MikaMyers, Small Event Coordinator">
            </asp:Label>
            <a href="mailto:smallevents@therightplace.com">smallevents@therightplace.com</a>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
            <img src="img/StaffHeadshots/Sikes.jpg" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblPSikes" runat="server" 
                Text="Paul Sikes, Medium and Large Event Coordinator"></asp:Label>
            <a href="mailto:mlevents@therightplace.com">mlevents@therightplace.com</a>
        </div>
         <div class="col-3">
             <img src="img/StaffHeadshots/Stokes.jpg" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblFStokes" runat="server"
                 Text="Felicia Stokes, Wedding Coordinator"></asp:Label>
            <a href="mailto:weddings@therightplace.com">weddings@therightplace.com</a>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
            <img src="img/StaffHeadshots/Wilson.jpg" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblCWilson" runat="server" 
                Text="Cade Wilson, Catering Coordinator"></asp:Label>
            <a href="mailto:catering@therightplace.com">catering@therightplace.com</a>
        </div>
    </div>


 
  
</asp:Content>
