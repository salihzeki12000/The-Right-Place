<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="The_Right_Place.Booking" %>

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
        <div class="row">
            <div class="col-sm-3">
                <form id="form1" runat="server">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Date</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbDate" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Please enter a date"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="dateValidator" runat="server" ErrorMessage="CompareValidator" ControlToValidate="tbDate" EnableViewState="False" Type="Date"></asp:CompareValidator>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>

</asp:Content>
