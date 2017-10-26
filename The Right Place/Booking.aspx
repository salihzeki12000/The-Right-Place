﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="The_Right_Place.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Booking Page</h1>
        <p>This page will allow users to search for a room based on date, and capacity</p>
    </div>

    <main>
        <div class="row">
            <div class="col">
                <h1>Find Your Space</h1>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <form id="form1" runat="server">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Date</label>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tbDate" runat="server" TextMode="Date" CssClass="form-control" OnTextChanged="tbDate_TextChanged"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Number of Guests</label>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tbGuestTotal" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvGuests" runat="server" ErrorMessage="Please enter the number of guests" ControlToValidate="tbGuestTotal" CssClass="alert-danger"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvGuests" runat="server" ErrorMessage="Please enter a valid guest count." CssClass="alert-danger" Type="Integer" ControlToValidate="tbGuestTotal" MaximumValue="50000" MinimumValue="0"></asp:RangeValidator>
                    </div>

                </form>
            </div>
        </div>
    </main>

</asp:Content>
