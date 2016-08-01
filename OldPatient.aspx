<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="OldPatient.aspx.cs" Inherits="OldPatient" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    
</style>
<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><i class="material-icons">airline_seat_flat_angled</i>Old Patient</span>
        <ul class="right">
            <li><a href="#!">Home</a></li>
            <li>Old Patient</li>
        </ul>
    </div>
</div>

<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="always">
<ContentTemplate>

<div class="row">
    <div class="col s12 white box-shadow inner-form">
        <div class="row">
            <div class="input-field col m6 s12">
                <asp:Panel runat="server" id="pnlSearchBy">
                    <asp:DropDownList ID="ddlSearchBy" runat="server" AutoPostBack="true"
                        onselectedindexchanged="ddlSearchBy_SelectedIndexChanged" onclientclick="returning();">
                        <asp:ListItem disabled Selected>Search By</asp:ListItem>
                        <asp:ListItem>Date</asp:ListItem>
                        <asp:ListItem>OP Number</asp:ListItem>
                        <asp:ListItem>Name</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </div>
            <div class="input-field col m6 s12">
                <asp:Panel ID="pnlDateSelector" runat="server" Visible="false">
                    <div class="input-field col s9">
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        <cc1:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtDate" Format="dd-MMM-yyyy" />
                        <label for="txtDate">Date</label>
                    </div>
                    
                </asp:Panel>

                <asp:Panel ID="pnlOpNoSelector" runat="server"  Visible="false">
                    <div class="input-field col s9">
                        <asp:TextBox ID="txtOpNo" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" for="txtOpNo" runat="server" Text="Op No"></asp:Label>
                    </div>
                    
                </asp:Panel>

                <div class="col s3">
                        <asp:LinkButton ID="lbSearch" runat="server" Visible="true" CssClass="hideOnClick btn waves-effect waves-light blue"><i class="material-icons">search</i></asp:LinkButton>

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
                        
                        
                    </div>
            </div>
        </div>
    </div>
</div>



<asp:Panel runat="server" ID="pnlOutPatient" Visible="false">
    <div class="row">
        <div class="col s12 box-shadow white inner-form">
            <div class="row ">
                <asp:GridView ID="gvOutPatient" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" CssClass="responsive-table highlight" >
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date"/>
                        <asp:BoundField DataField="OpNumber" HeaderText="OP Number"/>
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name"/>
                        <asp:BoundField DataField="Amount" HeaderText="Amount"/>
                        <asp:BoundField DataField="NoOfVistis" HeaderText="No Of Visits"/>
                        <asp:BoundField DataField="Status" HeaderText="Status"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Panel>



<cc1:ModalPopupExtender ID="MPEModel" runat="server" PopupControlID="pnlPopUp" TargetControlID="lbSearch"
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
<Triggers>
<asp:PostBackTrigger ControlID="ddlSearchBy" />
<%--<asp:AsyncPostBackTrigger ControlID="ddlSearchBy" EventName="SelectedIndexChanged"/>--%>
</Triggers>
    </asp:UpdatePanel>

</asp:Content>

