<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="The_Right_Place.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sitestyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="landing">
        <div class="row verticalBuffer">
        </div>

        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col">
                <h1 class="header-1" style="text-align:center;">The Right Place For You</h1>
                <h1 class="header-2" style="text-align:center;">Just A Click Away</h1>
            </div>
            <div class="col-sm-3"></div>
        </div>

        <div class="row verticalBuffer">
        </div>
    </div>

    <%-- Description Cards --%>

    <div class="row mt-4 px-1">
        <div class="col-sm-8 pr-2">
            <div class="card h-100">
                <div class="card-body">
                    <h3 class="card-title my-2">We love our rooms, and we think you will too.</h3>
                    <p class="card-text">Every room is designed with you in mind. From PTA meetings, to corporate mergers, we have every tool available and at your disposal.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-4 pl-2">
            <div class="card h-100">
                <div class="card-body">
                    <h3 class="card-title my-2">Bang for your buck</h3>
                    <p class="card-text">You won't find a better price anywhere. Each room is ready to fit your exact needs, all for one incredibly low price.</p>
                </div>
            </div>
        </div>
    </div>
    

    <!-- Begin Cards for Customer Reviews -->
    <div class="card-black my-4">
            <div class="row">
                <div class="col my-3">
                    <h1 style="text-align:center; color:white; font-weight:300;">A Place for Everyone</h1>
                </div>
            </div>
            <div class="row pb-5">
                <div class="col"></div>
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="img/man1.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h4 class="card-title">Frank Ellis</h4>
                            <h5 class="card-subtitle">Business Owner</h5>
                            <p class="card-text">I take everyone in my office to The Right Place once a month for team building. They have everything ready for us before we get there. All the necessities to have employees sign in, watch powerpoints, and listen to speakers are ready when we arrive.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 px-3">
                    <div class="card h-100">
                        <img src="img/woman1.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h4 class="card-title">Emma Smith</h4>
                            <h5 class="card-subtitle">Small Group Leader</h5>
                            <p class="card-text">My small group needed a place to meet every week for our bible study. Our hope was a place that was scalable, so we could continue adding members to our group. We couldn't exceed cost, even if we only had a few show up one week. The Right Place provided exactly that.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="img/man2.jpg"" alt="" class="card-img-top img-fluid"/>
                        <div class="card-body">
                           <h4 class="card-title">Wayne Lee</h4>
                            <h5 class="card-subtitle">Senior Partner</h5>
                           <p class="card-text">Each year, I'm tasked with putting together a dental summit, and in a place like Stillwater, having enough rooms for many speakers and enough room for everyone to meet is hard to come by. The Right Place took care of that for us.</p>
                        </div>
                    </div>
                </div>
                <div class="col"></div>
            </div>
    </div>

    <!-- Begin Carousel of Images of the Property -->
    <div class="row HomeContent">
        <div class="col"></div>
        <div class="col-sm-7">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block c-item" src="img/Club_Lounge_Meeting_Room.jpg" alt="First slide"/>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block c-item" src="img/HH_meetingroom_970x404_FitToBox_Center.jpg" alt="Second slide"/>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block c-item" src="img/UFA4.jpg" alt="Third slide"/>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col"></div>
    </div>

    <div class="my-4" style="background-image: url('../img/background-grey.png'); height:500pt; background-repeat: no-repeat; background-size:cover;">
        <div class="row verticalBuffer">
        </div>

        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col">
                <h1 class="display-4 my-3" style="text-align:center; color:white;">Let's find a room for you</h1>
                <div class="row my-5">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <form runat="server">
                            <asp:Button ID="goToSearch" CssClass="btn btn-outline-warning btn-block" runat="server" Text="Book Now" OnClick="goToSearch_Click" />
                        </form>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>

        <div class="row verticalBuffer">
        </div>
    </div>


    
</asp:Content>
