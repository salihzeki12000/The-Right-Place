<%@ Page Title="Amenities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ammenities.aspx.cs" Inherits="The_Right_Place.Ammenities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
         <h1>Amenities</h1>
         <p>The <em><b>Right</b></em> luxuries for your event</p>
    </div>

    <%--This Table Lists all of the ammenities available--%>
    <div class="row">
        <div class="col-5">
            <dl>
              <dt>Washington Board Room, capacity: 15, $100/day</dt>
                <dd>SMART Board, white board, speakers</dd>
              <dt>Madison Board Room, capacity: 15, $100/day</dt>
                <dd>SMART Board, white board, speakers</dd>
              <dt>Adams Room, capacity: 50, $200/day</dt>
                <dd>screens, surround sound speakers</dd>
              <dt>Roosevelt Room, capacity: 50, $200/day</dt>
                <dd>screens, surround sound speakers</dd>
              <dt>Eisenhower Room, capacity: 50, $200/day</dt>
                <dd>screens, surround sound speakers</dd>
              <dt>Kennedy Room, capacity: 50, $200/day</dt>
                <dd>screens, surround sound speakers</dd>
              <dt>Reagan Room, capacity: 200, $400/day</dt>
                <dd>sliding dividers to separate into smaller rooms</dd>
              <dt>Bush Room, capacity: 200, $400/day</dt>
                <dd>sliding dividers to separate into smaller rooms</dd>
              <dt>Obama Room, capacity: 200, $400/day</dt>
                <dd>sliding dividers to separate into smaller rooms</dd>
            </dl>
        </div>
        <div class="col-5">
            <dl>

              <dt>Clinton Room, capacity: 200, $400/day</dt>
                <dd>sliding dividers to separate into smaller rooms</dd>
              <dt>Pioneer Auditorium, capacity: 1000, $1,000/day</dt>
                <dd>surround sound speakers, reclining chairs, handicap seating</dd>
              <dt>Jefferson Ballroom, capacity: 3000, $2,000/day</dt>
                <dd>20,000 sq ft, wood flooring</dd>
              <dt>Cowboy Courtyard, capacity: 500, $1000/day</dt>
                <dd>adjacent to Jefferson Ballroom, perfect for outdoor events</dd>
             <dt>Multi-purpose rooms, capacity: varies, $25/day</dt>
                 <dd>available to Bride/Groom and attendants, costume change rooms for plays, musicals, and many other purposes</dd>
              <dt>Other available technologies: </dt>
                <dd>free parking for all guests, iPads, lounge style seating, television, projection, and more of the latest technology for presenters, guests, and participants</dd>
              <dt>Non-Profits</dt>
                <dd>Our Coordinators have special pricing for non-profit organizations.
                     Find the <em><b>Right</b></em> coordinator <a href="Contact.aspx">here.</a></dd>
            </dl>
        </div>
    </div>
</asp:Content>
