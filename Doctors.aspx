<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="Doctors" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><img src="images/dentist_tooth_doctor_dental-512.png" /> Doctors</span>
        <ul class="right">
            <li><a href="#!">Masters</a></li>    
            <li>Doctors</li>
        </ul>
    </div>
</div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<div class="row">
    <div class="col s12 white box-shadow inner-form">
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtDoctor" runat="server"></asp:TextBox>
                <label for="txtDoctor">Doctor</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlDepartment" runat="server">
                    <asp:ListItem disabld Selected>Department</asp:ListItem>
                    <asp:ListItem>Dental</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem disabld Selected>Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="input-field col m6 s12">
                <asp:DropDownList ID="Experience" runat="server">
                    <asp:ListItem disabld Selected>Experience</asp:ListItem>
                    <asp:ListItem>2 years</asp:ListItem>
                    <asp:ListItem>3 years</asp:ListItem>
                    <asp:ListItem>4 years</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAddress" CssClass="materialize-textarea" TextMode="MultiLine" runat="server" style="height:75px !important;padding:.8rem 0 1.6rem 0 !imprtant;"></asp:TextBox>
                <label for="txtAddress">Address</label>
            </div>

            <div class="input-field col m6 s12">
                <div class="row">
                    <div class="input-field col s12" style="padding:0px;">
                        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                        <label for="txtCountry" style="left:0px;">Country</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12" style="padding:0px;">
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                        <label for="txtState" style="left:0px;">State</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAge" runat="server" CssClass="allowNumbersOnly"></asp:TextBox>
                <label for="txtAge">Age</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <label for="txtCity">City</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="allowNumbersOnly"></asp:TextBox>
                <label for="txtPhone">Phone</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtConsultantFee" runat="server" CssClass="allowNumbersOnly"></asp:TextBox>
                <label for="txtConsultantFee">Consultant Fee</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12" >
                <asp:TextBox ID="txtTimeFrom" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtTimeFrom" Format="dd-MMM-yyyy" />
                <label for="txtVisitNo">Time From</label>
            </div>

            <div class="input-field col m6 s12" >
                <asp:TextBox ID="txtTimeTo" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtTimeTo" Format="dd-MMM-yyyy" />
                <label for="txtTimeTo">Time To</label>
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

<cc2:ModalPopupExtender ID="MPEModel1" runat="server" PopupControlID="pnlPopUp" TargetControlID="lbAdd"
   CancelControlID="lbOk" BackgroundCssClass="modalBackground">
</cc2:ModalPopupExtender>

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

