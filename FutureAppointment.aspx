<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FutureAppointment.aspx.cs" Inherits="FutureAppointment" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><i class="material-icons">date_range</i>future appointment</span>
        <ul class="right">
            <li><a href="#!">Home</a></li>
            <li>Future Appointment</li>
        </ul>
    </div>
</div>

<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
<ContentTemplate>

<div class="row">
    <div class="col s12 box-shadow white inner-form">
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtDate" Format="dd-MMM-yyyy" />
                <label for="txtDate">Date   </label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtOpNo" runat="server" CssClass="form-control" disabled="disabled"></asp:TextBox>
                <label for="txtOpNo">Op No</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="txtPatientName">Patient Name</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtMobileNo" runat="server" CssClass="allowNumbersOnly form-control"></asp:TextBox>
                <label for="txtMobileNo">Mobile No</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlDoctor" runat="server">
                    <asp:ListItem disabled Selected>Doctor</asp:ListItem>
                    <asp:ListItem>Naresh</asp:ListItem>
                </asp:DropDownList>
            </div>

            
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlTreatment" runat="server">
                    <asp:ListItem disabled Selected>Treatment</asp:ListItem>
                    <asp:ListItem>Consulations</asp:ListItem>
                    <asp:ListItem>X-Ray</asp:ListItem>
                    <asp:ListItem>EST</asp:ListItem>
                    <asp:ListItem>RCT</asp:ListItem>
                    <asp:ListItem>CC</asp:ListItem>
                </asp:DropDownList>
            </div>
            
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtTimeFrom" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFrom_CalendarExtender1" runat="server" BehaviorID="txtFrom_CalendarExtender1" TargetControlID="txtTimeFrom" Format="dd-MMM-yyyy" />
                <label for="txtTimeFrom">Time From</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtTimeTo" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtForm_CalendarExtender2" runat="server" BehaviorID="txtFrom_CalendarExtender2" TargetControlID="txtTimeTo" Format="dd-MMM-yyyy" />
                <label for="txtDate">Time To</label>
            </div>

        </div>

        <div class="row">
            <div class="input-field col s12">
                <asp:LinkButton ID="lbAdd" runat="server" CssClass="hideOnClick btn waves-effect waves-light blue">Add</asp:LinkButton>
                <asp:LinkButton ID="lbClear" runat="server" CssClass="btn waves-effect waves-light blue">Clear</asp:LinkButton>

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
    <asp:Panel ID="pnlPopUp" runat="server" visible="false" CssClass="PopUp white center-align box-shadow col m3 s12 ">
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

