<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxNavBar" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .css-vertical-text
        {
            writing-mode: tb-rl;
            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            white-space: nowrap;
            display: block;
            bottom: 0;
            vertical-align:top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 150px">
            <tr>
                <td>
                    <dx:ASPxPopupControl ID="pcPopup" runat="server" AppearAfter="200" CloseAction="MouseOut"
                        HeaderText="Cameras" PopupAction="MouseOver" PopupElementID="lbShowPopup"
                        PopupHorizontalAlign="OutsideLeft" PopupVerticalAlign="TopSides">
                        <ClientSideEvents PopUp="function(s, e) { lbShowPopup.SetEnabled(false); }" CloseUp="function(s, e) { lbShowPopup.SetEnabled(true); }" />
                        <ContentCollection>
                            <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxNavBar ID="nvbrExample" runat="server" Width="100%" DataSourceID="dsCameras" AutoCollapse="true">
                                    <ItemTextTemplate>
                                        <dx:ASPxLabel ID="lblModel" runat="server" Font-Bold="True" Text='<%# Container.EvalDataItem("Model") %>' />
                                        <br />
                                        <dx:ASPxLabel ID="lblPixels" runat="server" Text='<%# Container.EvalDataItem("Pixels") %>' />
                                        <dx:ASPxLabel ID="Label3" runat="server" Text="million pixels" />
                                    </ItemTextTemplate>
                                </dx:ASPxNavBar>
                                <asp:XmlDataSource ID="dsCameras" runat="server" DataFile="~/App_Data/Cameras.xml" XPath="/Cameras/*">
                                </asp:XmlDataSource>
                            </dx:PopupControlContentControl>
                        </ContentCollection>
                    </dx:ASPxPopupControl>
                    <asp:AccessDataSource ID="dsDepartments" runat="server" DataFile="~/App_Data/nwind.mdb"
                        SelectCommand="SELECT [CategoryID], [CategoryName], [Description], [Picture] FROM [Categories]">
                    </asp:AccessDataSource>
                </td>
                <td width="26px" align="right" valign="middle">                    
                    <dx:ASPxLabel ID="lbShowPopup" runat="server" Text="Invoke Popup" ClientInstanceName="lbShowPopup"
                        CssClass="css-vertical-text" Font-Size="Large">
                        <DisabledStyle BackColor="LightYellow" Font-Overline="False">
                            <Border BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" />
                        </DisabledStyle>
                        <Border BorderStyle="Solid" BorderWidth="1px" />
                    </dx:ASPxLabel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
