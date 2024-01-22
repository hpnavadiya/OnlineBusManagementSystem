<%--//1.Harsh Navadiya - 8869077
//2.Nihar kevadia - 8849917
//3.Shruti Devani - 8874405
//4.Aeni Patel - 8813744
//5.Karmveer kaur - 8845910
//6.Evin Thomas - 8825960--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <div>
                    <ul>
                        <li>Harsh Navadiya - 8869077</li>
                        <li>Nihar kevadia - 8849917</li>
                        <li>Shruti Devani - 8874405</li>
                        <li>Aeni Patel - 8813744</li>
                        <li>Karmveer kaur - 8845910</li>
                        <li>Evin Thomas - 8825960</li>
                    </ul>
                </div>
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>

                     
                        <asp:BoundField HeaderText="Bus Name" DataField="BusName" />
                         <asp:BoundField HeaderText="Passenger Name" DataField="PaxName" />
                        <asp:BoundField HeaderText="Email ID" DataField="Email" />
                         <asp:BoundField HeaderText="Contact No" DataField="Contact" />
                         <asp:BoundField HeaderText="Origin" DataField="Origin" />
                         <asp:BoundField HeaderText="Destination" DataField="Destination" />
                         <asp:BoundField HeaderText="Travel Date" DataField="TravelDate" />
                         <asp:BoundField HeaderText="Seat No" DataField="SeatNo" />
                         <asp:BoundField HeaderText="Fare" DataField="Fare" />
                        <asp:BoundField HeaderText="Booked By" DataField="BookedBy" />
                        
                    </Columns>
                </asp:GridView>
    </div>
</asp:Content>
