<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatabseTest.aspx.cs" Inherits="The_Right_Place.DatabseTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">
            <h1>Database Test</h1>
        </div>
    </div>
    <%--<div class="row">
        <div class="col">
            <h3>Success</h3>
        </div>
    </div>--%>

    <div class="row">
        <div class="col">
            <form runat="server">
                <div class="form-group">
                    <asp:TextBox ID="tbFirstName" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="tbLastName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                </div>


                <asp:Button ID="nameSubmit" CssClass="btn btn-primary" runat="server" Text="Button" OnClick="nameSubmit_Click" />

            </form>
        </div>
    </div>


    <div class="row mt-4">
        <div class="col">
            <asp:SqlDataSource ID="sqlUpdatePeople" runat="server" ConnectionString="<%$ ConnectionStrings:TheRightPlaceDatabaseConnectionString %>" InsertCommand="INSERT INTO Users(fName, lName, emailAddr) VALUES (@fname, @lname, @email)" SelectCommand="SELECT * FROM [Users]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="tbFirstName" Name="fname" PropertyName="Text" Size="30" Type="String" />
                    <asp:ControlParameter ControlID="tbLastName" Name="lname" PropertyName="Text" Size="30" Type="String" />
                    <asp:ControlParameter ControlID="tbEmail" Name="email" PropertyName="Text" Size="50" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="peopleList" CssClass="table" runat="server" DataSourceID="sqlUpdatePeople" RepeatLayout="Flow">
                <HeaderTemplate>
                    <div class="row">
                        <th><span class="col-sm-2">First Name</span></th>
                        <th><span class="col-sm-2">Last Name</span></th>
                        <th><span class="col-sm-2">Email</span></th>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="row">
                        <asp:Label ID="lNameLabel" CssClass="col-sm-2" runat="server" Text='<%# Eval("lName") %>' />
                        <asp:Label ID="fNameLabel" CssClass="col-sm-2" runat="server" Text='<%# Eval("fName") %>' />
                        <asp:Label ID="emailLabel" CssClass="col-sm-3" runat="server" Text='<%# Eval("emailAddr") %>' />
                    </div>
                </ItemTemplate>
            </asp:DataList>

        </div>
    </div>

</asp:Content>
