<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="The_Right_Place.SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col">
            


            <form runat="server">
                
                <asp:SqlDataSource ID="availableRooms" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="select * from Rooms ro left join Reservations re on ro.RID = re.RID"></asp:SqlDataSource>
                
                <asp:Button ID="ConfirmReservation" runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="ConfirmReservation_Click" />
            </form>
        </div>
    </div>

</asp:Content>
