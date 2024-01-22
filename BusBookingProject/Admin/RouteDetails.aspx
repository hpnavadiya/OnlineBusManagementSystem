
<%--//1.Harsh Navadiya - 8869077
//2.Nihar kevadia - 8849917
//3.Shruti Devani - 8874405
//4.Aeni Patel - 8813744
//5.Karmveer kaur - 8845910
//6.Evin Thomas - 8825960--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RouteDetails.aspx.cs" Inherits="BusBookingProject.Admin.RouteDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 8%">
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
         <asp:GridView ID="gdRouteDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass="table table-hover table-bordered"
                    Width="100%" Font-Size="12" OnRowDataBound="gdRouteDetails_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField >
                         <asp:TemplateField HeaderText="Route ID">
                           <ItemTemplate>
                               <asp:Label ID="lblBusNo" runat="server" Text='<%# Eval("RouteID") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                          <asp:TemplateField HeaderText="Origin">
                           <ItemTemplate>
                               <asp:Label ID="lblBusName" runat="server" Text='<%# Eval("Origin") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                         <asp:TemplateField HeaderText="Destination">
                           <ItemTemplate>
                               <asp:Label ID="lblBusType" runat="server" Text='<%# Eval("Destination") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlinkBoarding" runat="server" >Add Boarding Points</asp:HyperLink>
                                 <asp:HiddenField ID="hdnRouteID" runat="server" Value='<%# Eval("RouteID") %>' />
                                 <asp:HiddenField ID="hdnBusID" runat="server" Value='<%# Eval("BusId") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
    </div>
</asp:Content>
