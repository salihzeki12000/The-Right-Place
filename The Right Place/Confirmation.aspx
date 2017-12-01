<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="Confirmation.aspx.cs" Inherits="The_Right_Place.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row card m-3">
        <div class="col-sm-8 p-5">
            <form runat="server">

                <div class="row">
                    <div class="col">
                        <h1 class="display-2">The Right Place</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h1 class="display-4">
                            <asp:Label ID="ConfNumber" runat="server" Text="Label" Visible="False"></asp:Label>
                        </h1>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="FullName" class="col-sm-3">Full Name</label>
                    <div class="col">
                        <asp:Label ID="FullName" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="EmailAdd" class="col-sm-3">Email</label>
                    <div class="col">
                        <asp:Label ID="EmailAdd" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="Phone" class="col-sm-3">Phone Number</label>
                    <div class="col">
                        <asp:Label ID="PhoneNum" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <hr />

                <div class="form-group row">
                    <label for="Date" class="col-sm-3">Reservation Date</label>
                    <div class="col">
                        <asp:Label ID="ResDate" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="RoomName" class="col-sm-3">Room Name</label>
                    <div class="col">
                        <asp:Label ID="RoomName" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="type" class="col-sm-3">Room Type</label>
                    <div class="col">
                        <asp:Label ID="RoomType" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="cap" class="col-sm-3">Maximum Capacity</label>
                    <div class="col">
                        <asp:Label ID="Capacity" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>


                <asp:Button ID="submit" CssClass="btn btn-yellow" runat="server" Text="Button" OnClick="submit_Click" />

                <asp:SqlDataSource ID="updateDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Reservations]"></asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            </form>
        </div>
    </div>
</asp:Content>
