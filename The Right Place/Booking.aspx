<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="The_Right_Place.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                            <asp:RequiredFieldValidator ID="dateRFV" runat="server" ErrorMessage="Please select a date from the dropdown" CssClass="alert alert-danger" ControlToValidate="tbDate"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="tbDate" runat="server" TextMode="DateTime" CssClass="form-control" OnTextChanged="tbDate_TextChanged"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Number of Guests</label>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tbGuestTotal" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="SubmitSearch" runat="server" CssClass="btn btn-grey" Text="Search" OnClick="SubmitSearch_Click" />
                    
                <asp:SqlDataSource ID="availableRooms" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="select * from Rooms ro left join Reservations re on ro.RID = re.RID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbDate" Name=" date" PropertyName="Text" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                </form>
            </div>
        </div>
    </main>

</asp:Content>
