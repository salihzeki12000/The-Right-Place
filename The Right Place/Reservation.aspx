<%@ Page Title="Check Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="The_Right_Place.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Reservations</h1>
        <p>Enter your confirmation number and Customer ID below to review your reservation</p>       
    </div>

    <div>
        <form runat="server">
            <div class="form-group row">
                <label class="col-sm-3">Confirmation #</label>
                    <div class="col">
                        <asp:TextBox ID="txbxConfirmNo" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator CssClass="alert alert-danger" 
                            ID="rfvConfirmNo" runat="server" ErrorMessage="Please enter a confirmation number" 
                            ControlToValidate="txbxConfirmNo"></asp:RequiredFieldValidator>
                    </div>
              </div>

              <div class="form-group row">
                 <label class="col-sm-3">Customer ID</label>
                    <div class="col">
                        <asp:TextBox ID="txbxCID" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator CssClass="alert alert-danger my-2" 
                            ID="rfvCID" runat="server" ErrorMessage="Please enter your Customer ID" 
                            ControlToValidate="txbxCID"></asp:RequiredFieldValidator>
                    </div>
              </div>
            <div class=" form-group row">
                 <asp:Label ID="lblForgotConfirm" runat="server" Text="If you do not have your confirmation number, you can contact the main office at 405-372-1235"></asp:Label>
            </div>
           

            <asp:Button ID="btnCheckReserv" class="btn btn-yellow" runat="server" 
                Text="Check Reservation" OnClick="btnCheckReserv_Click" />

        </form>
    </div>
</asp:Content>
