<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DayWiseReport.aspx.cs" Inherits="DayWiseReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col s12 grey-text navigation">
        <span class="left"><i class="material-icons">date_range</i>Day Wise Report</span>
        <ul class="right">
            <li><a href="#!">Reports</a></li>
            <li>Day Wise</li>
        </ul>
    </div>
</div>

<div class="row">
    <div class="col s12 box-shadow white inner-form">
        <div class="row">
            <div class="input-field col m3 s12">
                <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" BehaviorID="txtFrom_CalendarExtender" TargetControlID="txtFromDate" Format="dd-MMM-yyyy" />
                <label for="txtFromDate">From Date   </label>
            </div>

            <div class="input-field col m3 s12">
                <asp:TextBox ID="txtToDate" runat="server" CssClass="datepicker form-control"></asp:TextBox>
                <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="txtFrom_CalendarExtender1" TargetControlID="txtToDate" Format="dd-MMM-yyyy" />--%>
                <label for="txtToDate">To Date   </label>
            </div>

            <div class="input-field col m3 s12">
                <asp:DropDownList ID="ddlSearchBy" runat="server">
                    <asp:ListItem disabled Selected>Search By</asp:ListItem>
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>Old</asp:ListItem>
                    <asp:ListItem>New</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="input-field col m3 s12 report">
                <asp:LinkButton ID="lbShow" runat="server" CssClass="form-control btn waves-effect waves-light blue">Show</asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col s12  box-shadow white inner-form reportGridView">
            <asp:GridView ID="gvDayWiseReport" runat="server" AutoGenerateColumns="false" CssClass="highlight responsive-table">
                <Columns>
                    <asp:BoundField HeaderText="Date" DataField="Date"/>
                    <asp:BoundField HeaderText="Op Number" DataField="OpNumber"/>
                    <asp:BoundField HeaderText="Patient Name" DataField="PatientName"/>
                    <asp:BoundField HeaderText="Treatment" DataField="Treatment"/>
                    <asp:BoundField HeaderText="Total Amount" DataField="TotalAmount"/>
                    <asp:BoundField HeaderText="Paid Amount" DataField="PaidAmount"/>
                    <asp:BoundField HeaderText="Due Amount" DataField="DueAmount"/>
                    <asp:BoundField HeaderText="No Of Visits" DataField="NoOFVisits"/>
                    <asp:BoundField HeaderText="Visit Status" DataField="VisitStatus"/>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>

</asp:Content>

