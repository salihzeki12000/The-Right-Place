<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="The_Right_Place.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--style sheet in master page-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!--main section-->
    <div class="jumbotron">
        <h1>Contact</h1>
        <p>Find the <em><b>Right</b></em> coordinator for your event</p>
    </div>
<!--first row-->
    <div class="form-group row">
        <div class="col-2">
            <img src="img/StaffHeadshots/Rogue.jpg" alt="Gary Rogue headshot"/>
        </div>
        <!--emails are not linked-->
        <div class="col-3">
            <asp:Label ID="lblGRogue" runat="server" Text="Gary Rogue, Meeting Coordinator"></asp:Label>
            <a href="mailto:meetings@therightplace.com">meetings@therightplace.com</a>
        </div>
         <div class="col-2">
             <img src="img/StaffHeadshots/Myers.jpg" alt="Mike Meyers headshot" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblMMyers" runat="server" Text="MikaMyers, Small Event Coordinator">
            </asp:Label>
            <a href="mailto:smallevents@therightplace.com">smallevents@therightplace.com</a>
        </div>
    </div>
<!--second row-->
    <div class="form-group row">
        <div class="col-2">
            <img src="img/StaffHeadshots/Sikes.jpg" alt="Paul Sikes headshot" />
        </div>
        <div class="col-3">
            <asp:Label ID="lblPSikes" runat="server" 
                Text="Paul Sikes, Medium and Large Event Coordinator"></asp:Label>
            <a href="mailto:mlevents@therightplace.com">mlevents@therightplace.com</a>
        </div>
         <div class="col-2">
             <img src="img/StaffHeadshots/Stokes.jpg" alt="Felicia Stokes headshot"/>
        </div>
        <div class="col-3">
            <asp:Label ID="lblFStokes" runat="server"
                 Text="Felicia Stokes, Wedding Coordinator"></asp:Label>
            <a href="mailto:weddings@therightplace.com">weddings@therightplace.com</a>
        </div>
    </div>
<!--third row-->
    <div class="form-group row">
        <!--custom width and height-->
        <div class="col-2">
            <img src="img/StaffHeadshots/Wilson.jpg" width="125" height="90" alt="Cade Wilson headshot"/>
        </div>
        <div class="col-3">
            <asp:Label ID="lblCWilson" runat="server" 
                Text="Cade Wilson, Catering Coordinator"></asp:Label>
            <a href="mailto:catering@therightplace.com">catering@therightplace.com</a>
        </div>
        <div class="col-3">
            <dl>
                <dt>Catering</dt>
                    <dd class="float-right">Catering services are available on site. For a current menu, email Caleb Wilson.</dd>
            </dl>
        </div>
    </div>


 
  
</asp:Content>
