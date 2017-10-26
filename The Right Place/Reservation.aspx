<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="The_Right_Place.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Reservations</h1>
        <p>This page will allow users to search for a reservation that has been made already. Users will provide their confirmation nubmer, email, or phone number in order to look up their reservation</p>
        <p>If a reservation exists, then the user will have the opportunity to edit the day of the reservation, update their information, or cancel the reservation.</p>
    </div>
</asp:Content>
