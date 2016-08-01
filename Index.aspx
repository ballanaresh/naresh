<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="right-align grey-text navigation" >
        <span class="left"><i class="material-icons">dashboard</i>Dashboard</span>
        <a href="#!" class="right grey-text">Dashboard</a>
    </div>
</div>
<br />
<br />
<div class="row index">
    <div class="col m3 s12 left white-text " style="padding-left:0px">
        <div class="col m12 s12 light-green widget box-shadow" >
            <div class="col l6 m6 s4" align="center">
                <i class="material-icons">sort</i>    
                <i class="material-icons last">sort</i>    
            </div>
            <div class="col l6 m6 s8 center-align">
                <small class="truncate">OverAll Patients</small>
                <div class="clearfix"></div>
                <span class="count truncate">99,343</span>
                <big></big>
            </div>
            
        </div>
    </div>

    <div class="col m3 s12 white-text">
        <div class="col m12 s12 purple lighten-2 widget box-shadow">
            <div class="col l6 m6 s4" align="center">
                <i class="material-icons">sort</i>    
                <i class="material-icons last">sort</i>    
            </div>
            
            <div class="col l6 m6 s8 center-align">
                <small class="truncate">Current Patients</small>
                <div class="clearfix"></div>
                <span class="count truncate">99,343</span>
            </div>
        </div>
    </div>

    <div class="col m3 s12 white-text">
        <div class="col m12 s12 orange widget box-shadow">
            <div class="col l6 m6 s4" align="center">
                <i class="material-icons">sort</i>    
                <i class="material-icons last">sort</i>    
            </div>
            <div class="col l6 m6 s8 center-align">
                <small class="truncate">Old Patients</small>
                <div class="clearfix"></div>
                <span class="count truncate">99,343</span>
            </div>
        </div>
    </div>

    <div class="col m3 s12 white-text right" style="padding-right:0px">
        <div class="col m12 s12 blue-grey widget box-shadow" >
            <div class="col l6 m6 s4" align="center">
                <i class="material-icons">sort</i>    
                <i class="material-icons last">sort</i>    
            </div>
            <div class="col l6 m6 s8 center-align">
                <small class="truncate">Future Appointments</small>
                <div class="clearfix"></div>
                <span class="count truncate">99,343</span>
            </div>
        </div>
    </div>
</div>

<div class="row Appointments">
    <div class="col m6 s12 white box-shadow">
        <div class="grey lighten-4">
            <h6>Today's Appointments</h6>
        </div>
        <div class="col s12" style="padding:0px;">
            <ul class="collection">
                <li class="collection-item avatar  truncate">
                  <img src="images/profile.jpg" alt="" class="circle">
                  <span class="title">Title</span>
                  <span class="cause">sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf </span>
                </li>
                <li class="collection-item avatar  truncate">
                  <img src="images/profile1.jpg" alt="" class="circle">
                  <span class="title">Title</span>
                  <span class="cause">Vestibulum purus quam scelerisque, mollis nonummy metus </span>
                </li>
                <li class="collection-item avatar  truncate">
                  <img src="images/profile.jpg" alt="" class="circle">
                  <span class="title">Title</span>
                  <span class="cause">sdf</span>
                </li>
                <li class="collection-item avatar truncate">
                  <img src="images/profile3.jpg" alt="" class="circle">
                  <span class="title">Title</span>
                  <span class="cause">sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf sdf </span>
                </li>
              </ul>
        </div>
    </div> 
</div>

</asp:Content>

