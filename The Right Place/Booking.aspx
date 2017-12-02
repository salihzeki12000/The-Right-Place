<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="The_Right_Place.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="row">
            <div class="col">
                <h1>Find the <em><b>Right</b></em> Space</h1>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm-12 py-3">
                <form id="form1" runat="server">
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label h-100">Date</label>
                        <div class="col-sm-5 h-100">
                            <asp:TextBox ID="tbDate" runat="server" TextMode="Date" CssClass="form-control" OnTextChanged="tbDate_TextChanged"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row my-3">
                        <div class="col-sm-1">
                            <asp:Button ID="submitButton" CssClass="btn btn-yellow" runat="server" Text="Search" OnClick="submitButton_Click" />
                        </div>
                        <div class="col">
                            <asp:RequiredFieldValidator ID="dateRFV" runat="server" ErrorMessage="Please select a date from the dropdown" CssClass="alert alert-danger" ControlToValidate="tbDate"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:SqlDataSource ID="availableRooms" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="SELECT DISTINCT Rooms.RID, Rooms.capacity, Rooms.RoomType, Rooms.RoomName FROM Rooms LEFT OUTER JOIN Reservations AS r ON Rooms.RID = r.RID WHERE (r.ResDate &lt;&gt; '12/26/2017') OR (r.ResDate IS NULL)"></asp:SqlDataSource>
                            <asp:DataList ID="roomsList" CssClass="w-100" runat="server" CellPadding="4" DataSourceID="availableRooms" ForeColor="#333333" DataKeyField="RID" Width="952px" OnItemCommand="roomsList_ItemCommand">
                                <HeaderStyle BackColor="#EBCB80" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#4B4B4B" />
                                <HeaderTemplate>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h1>Room Name</h1>
                                        </div>
                                        <div class="col-sm-3">
                                            <h1>Room Type</h1>
                                        </div>
                                        <div class="col-sm-3">
                                            <h1>Capacity</h1>
                                        </div>
                                        <div class="col-sm-3">
                                            <h1>Selection</h1>
                                        </div>
                                    </div>
                                </HeaderTemplate>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#4B4B4B" />
                                <ItemTemplate>

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <asp:Label ID="RoomNameLabel" runat="server" Text='<%# Eval("RoomName") %>' />
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label ID="RoomTypeLabel" runat="server" Text='<%# Eval("RoomType") %>' />
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label ID="capacityLabel" runat="server" Text='<%# Eval("capacity") %>' />
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Button ID="BookButton" runat="server" Text="Book" CommandName="select" />
                                        </div>
                                    </div>

                                </ItemTemplate>

                            </asp:DataList>
                            <asp:Label ID="lblAvailableRooms" runat="server" Text="Listed below are the rooms available for your selected date. A %15 discount is available for multi-day or multi-room reservations."></asp:Label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>

</asp:Content>
