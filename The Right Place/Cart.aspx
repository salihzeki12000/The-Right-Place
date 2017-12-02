<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="The_Right_Place.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <form runat="server">
            <div class="row">
                <div class="col">
                    <div class="jumbotron">
                        <h1>
                            <asp:Label ID="HeaderLabel" runat="server" Text="Your Cart Is Empty"></asp:Label></h1>
                        <asp:Label ID="nameLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="row my-3 mx-3 card">
                <div class="col-sm-12 py-3">
                    <div class="row my-2">
                        <div class="col"></div>
                        <div class="col-sm-1">
                            Total Price: <asp:Label ID="TotalPrice" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="col-sm-1">
                            <asp:Button ID="Checkout" CssClass="btn btn-yellow" runat="server" Text="Checkout" OnClick="Checkout_Click" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="CartDataList" CssClass="w-100" runat="server" ForeColor="#333333" DataKeyField="ConfNumber" DataSourceID="CartDataSource">
                                <HeaderStyle BackColor="#EBCB80" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#4B4B4B" />
                                <HeaderTemplate>
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <h4>Confirmation Number</h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <h4>Room Name</h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <h4>Room Type</h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <h4>Date</h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <h4>Price</h4>
                                        </div>
                                        <div class="col-sm-2">
                                            <h4>Capacity</h4>
                                        </div>
                                    </div>
                                </HeaderTemplate>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#4B4B4B" />
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <asp:Label ID="ConfNumberLabel" runat="server" Text='<%# Eval("ConfNumber") %>' />
                                        </div>

                                        <div class="col-sm-2">
                                            <asp:Label ID="RoomNameLabel" runat="server" Text='<%# Eval("RoomName") %>' />
                                        </div>

                                        <div class="col-sm-2">
                                            <asp:Label ID="RoomTypeLabel" runat="server" Text='<%# Eval("RoomType") %>' />
                                        </div>

                                        <div class="col-sm-2">
                                            <asp:Label ID="ResDateLabel" runat="server" Text='<%# Eval("ResDate") %>' />
                                        </div>

                                        <div class="col-sm-2">
                                            $<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                        </div>

                                        <div class="col-sm-2">
                                            <asp:Label ID="capacityLabel" runat="server" Text='<%# Eval("capacity") %>' />
                                        </div>
                                    </div>
                                </ItemTemplate>

                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>

            <asp:SqlDataSource ID="CartDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="SELECT r.ConfNumber, ro.RoomName, ro.RoomType, ro.capacity, r.ResDate, r.Price FROM Reservations AS r INNER JOIN Users AS u ON r.UID = u.UID INNER JOIN Rooms AS ro ON r.RID = ro.RID WHERE (u.FName = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="nameLabel" Name="name" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="TotalPriceGrabber" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" SelectCommand="SELECT sum(Price) as 'Total Price'
FROM Reservations AS r 
JOIN Users AS u ON r.UID = u.UID
JOIN Rooms AS ro ON r.RID = ro.RID WHERE (u.FName = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="nameLabel" Name="name" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </main>
</asp:Content>
