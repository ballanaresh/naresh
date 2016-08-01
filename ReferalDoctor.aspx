<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ReferalDoctor.aspx.cs" Inherits="ReferalDoctor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><img src="images/medical-specialist.png" />Referal Doctor</span>
        <ul class="right">
            <li><a href="#!">Masters</a></li>
            <li>Referal Doctor</li>
        </ul>
    </div>
</div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

<div class="row">
    <div class="col s12 box-shadow white inner-form">
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtReferalDoctor" runat="server"></asp:TextBox>
                <label for="txtReferalDoctor">Referal Doctor</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="materialize-textarea" runat="server"></asp:TextBox>
                <label for="txtAddress">Address</label>
            </div>
        </div>
        
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtMobile" runat="server" CssClass="allowNumbersOnly"></asp:TextBox>
                <label for="txtMobiel">Mobile No</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem disabled Selected>Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtPercentage" runat="server" CssClass="allowNumbersOnly"></asp:TextBox>
                <label for="txtPercentage">Percentage</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <asp:LinkButton ID="lbAdd" runat="server" CssClass="hideOnClick btn blue waves-effect waves-light">Add</asp:LinkButton>
                <asp:LinkButton ID="lbClear" runat="server" CssClass="btn blue waves-effect waves-light">Clear</asp:LinkButton>

                <div class="preloader-wrapper small active" style="display:none;">
                            <div class="spinner-layer spinner-blue-only">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>
                        </div>   
            </div>
        </div>
    </div>
</div>

<cc1:ModalPopupExtender ID="MPEModel1" runat="server" PopupControlID="pnlPopUp" TargetControlID="lbAdd"
   CancelControlID="lbOk" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>

<div class="row">
    <asp:Panel ID="pnlPopUp" runat="server" visible="true" CssClass="PopUp white center-align box-shadow col m3 s12 ">
        <div class="row">
            <div class="">
                <asp:LinkButton ID="lbOk" runat="server" CssClass="close grey-text"><i class="material-icons  waves-effect waves-dark">close</i></asp:LinkButton>        

                <img src="images/check_gif.gif" class="col s4 offset-s4 responsive-img"/>
                <div class="clearfix"></div>
                <br/>
                <span class="grey-text center-align">Added Successfully</span>
                <br />
        
            </div>
        </div>
        
    </asp:Panel>
</div>


</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

