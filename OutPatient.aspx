<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="OutPatient.aspx.cs" Inherits="OutPatient" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><i class="material-icons">local_hotel</i> Out Patient</span>
        <ul class="right">
            <li><a href="#!">Home</a></li>    
            <li>Out Patient</li>
        </ul>
    </div>
</div>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<div class="row ">
    <div class="col s12  white box-shadow inner-form" >
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtVisitNo" disabled="disabled" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="txtVisitNo">Visit No</label>
            </div>

            <div class="input-field col m6 s12" >
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtDate" Format="dd-MMM-yyyy" />
                <label for="txtVisitNo">Date</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtReferalDoc" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="txtReferalDoc">Referal Doctor</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtOpNo" disabled="disabled" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="txtOpNo">OP No</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtpatientName" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="txtPatientName">Patient Name</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Selected disabled>Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" Rows="3" runat="server" CssClass="materialize-textarea form-control"></asp:TextBox>
                <label for="txtReferalDoc">Address</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAge" runat="server" CssClass="allowNumbersOnly form-control"></asp:TextBox>
                <label for="txtAge">Age</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control allowNumbersOnly"></asp:TextBox>
                <label for="txtMobile">Mobile</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlTreatment" runat="server">
                    <asp:ListItem Selected disabled>Treatment</asp:ListItem>
                    <asp:ListItem>Consultation</asp:ListItem>
                    <asp:ListItem>X-Ray</asp:ListItem>
                    <asp:ListItem>EXT</asp:ListItem>
                    <asp:ListItem>RCT</asp:ListItem>
                    <asp:ListItem>CC</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlConsultDept" runat="server">
                    <asp:ListItem Selected disabled>Consultant Department</asp:ListItem>
                    <asp:ListItem>Dental</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlDoctor" runat="server">
                    <asp:ListItem disabled Selected>Doctor</asp:ListItem>
                    <asp:ListItem>Naresh</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtValidFrom" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtValidFrom" Format="dd-MMM-yyyy" />
                <label for="txtValidFrom">Valid From</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtValidTo" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtValidTo" Format="dd-MMM-yyyy" />
                <label for="txtValidTo">Valid To</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtTotalAmount" runat="server" CssClass="form-control allowNumbersOnly" ></asp:TextBox>
                <label for="txtTotalAmount">Total Amount</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control allowNumbersOnly" ></asp:TextBox>
                <label for="txtDiscount">Discount</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtNetAmount" runat="server" CssClass="form-control allowNumbersOnly" ></asp:TextBox>
                <label for="txtNetAmount">Net Amount</label>
            </div>

            <div class="input-field col m6 s12">
                <asp:TextBox ID="txtAmountToPaid" runat="server" CssClass="form-control allowNumbersOnly"></asp:TextBox>
                <label for="txtAmountToPaid">Amount To Paid</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col m6 s12">
                <asp:DropDownList ID="ddlBalance" runat="server">
                    <asp:ListItem disabled Selected>Balance</asp:ListItem>
                    <asp:ListItem>Nill</asp:ListItem>
                    <asp:ListItem>Due</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                
                <asp:LinkButton ID="lbAdd" runat="server" CssClass="hideOnClick btn waves-effect waves-light blue" onclick="lbAdd_Click">Add</asp:LinkButton>
                
                <asp:LinkButton ID="lbClear" runat="server" CssClass="btn waves-effect waves-light blue">Clear</asp:LinkButton>
                
                <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                    <ProgressTemplate>
                        <div class="preloader-wrapper small active">
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
                    </ProgressTemplate>
                </asp:UpdateProgress>
                
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


<ajaxToolKit:ModalPopupExtender ID="MPEModel1" runat="server" PopupControlID="pnlPopUp" TargetControlID="lbAdd"
   CancelControlID="lbOk" BackgroundCssClass="modalBackground">
</ajaxToolKit:ModalPopupExtender>

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

