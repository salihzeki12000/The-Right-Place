﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="The_Right_Place.Home" %>

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
    

    <!-- Begin Cards for Customer Reviews -->
    <div class="card-black">
        <div class="row p-5">
            <div class="row m-1">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="img/man1.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h4 class="card-title">Frank Ellis</h4>
                            <p class="card-text">The text of the Testimony</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="img/woman1.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h4 class="card-title">Emma Smith</h4>
                            <p class="card-text">The text of the Testimony</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <div class="card">
                        <img src="img/man2.jpg"" alt="" class="card-img-top img-fluid"/>
                        <div class="card-body">
                           <h4 class="card-title">Wayne Lee</h4>
                           <p class="card-text">The text of the Testimony</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </div>

    <!-- Begin Carousel of Images of the Property -->
    <div class="row HomeContent">
        <div class="col-sm-12">
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
    </div>

    <div class="card-black">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">

            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>

    
</asp:Content>
