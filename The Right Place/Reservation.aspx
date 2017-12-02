<%@ Page Title="Check Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="The_Right_Place.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <div class="jumbotron">
                <h1>Reservations</h1>
                <p>Enter your confirmation number and Customer ID below to review your reservation</p>
            </div>
        </div>
    </div>

    <div class="row my-3 mx-3 card">
        <div class="col-sm-12 py-3">
            <form runat="server">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Confirmation Number</label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="tbConfirmationNumber" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-2">
                        <asp:Button ID="searchForReservation" CssClass="btn btn-yellow" runat="server" Text="Button" OnClick="searchForReservation_Click" />
                    </div>
                </div>
                <asp:SqlDataSource ID="getNameSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Reservations]"></asp:SqlDataSource>
            </form>
        </div>
    </div>

</asp:Content>
