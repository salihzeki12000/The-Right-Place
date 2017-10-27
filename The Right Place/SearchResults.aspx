<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="The_Right_Place.SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col">
            <div class="jumbotron">
                <h1>Search Results</h1>
                <p>This page will allow users to select the room they want based on their previous search parameters.</p>
            </div>

            <form runat="server">

                <asp:Button ID="ConfirmReservation" runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="ConfirmReservation_Click" />

            </form>
        </div>
    </div>

</asp:Content>
