<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="The_Right_Place.SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row card m-3">
        <div class="col-sm-8 p-5">
            <form runat="server">
                <div class="form-group row">
                    <label for="FirstName" class="col-sm-3">First Name</label>
                    <div class="col">
                        <asp:TextBox ID="FirstName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="firstRFV" runat="server" ErrorMessage="Please enter your First Name" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="LastName" class="col-sm-3">Last Name</label>
                    <div class="col">
                        <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator CssClass="alert alert-danger my-2" ID="lastRFV" runat="server" ErrorMessage="Please enter your Last Name" ControlToValidate="LastName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col">
                        <div class="row">
                            <label for="Email" class="col-sm-3">Email Address</label>
                            <div class="col">
                                <asp:TextBox ID="Email" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="emailRFV" 
                                    runat="server" ErrorMessage="Please enter your Email Address" 
                                    ControlToValidate="Email" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col">
                                <asp:RegularExpressionValidator ID="revEmail" 
                                    runat="server" CssClass="alert alert-danger" 
                                    ErrorMessage="Please enter a valid email address" class="float-left"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ControlToValidate="Email" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col">
                                <small id="emailHelp" class="form-text text-muted">We will never share your email with anyone else.</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="Phone" class="col-sm-3">Phone Number</label>
                    <div class="col">
                        <asp:TextBox ID="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator CssClass="alert alert-danger my-2" ID="phoneRFV" runat="server" ErrorMessage="Please enter your Phone Number" ControlToValidate="Phone"></asp:RequiredFieldValidator>
                    </div>
                <div>
                    <asp:RegularExpressionValidator ID="revPhoneNumber" 
                        ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$" 
                        runat="server" class="alert alert-danger" ErrorMessage="Please enter valid phone number ex: 555-555-5555" ControlToValidate="Phone"></asp:RegularExpressionValidator>
                </div>
                </div>


                <asp:Button ID="submit" CssClass="btn btn-yellow" runat="server" Text="Register" 
                    OnClick="submit_Click" />
            
                <%--<asp:SqlDataSource ID="updateSource" runat="server"></asp:SqlDataSource>--%>
            
            
            </form>
        </div>
    </div>

</asp:Content>
