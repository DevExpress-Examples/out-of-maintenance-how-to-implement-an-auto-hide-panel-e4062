<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564509/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4062)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to implement an auto hide panel
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4062/)**
<!-- run online end -->


<p>This example demonstrates how to implement an auto hide panel, like a toolbox in the default Visual Studio layout.</p><p>Use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_PopupElementIDtopic"><u>ASPxPopupControl.PopupElementID</u></a> property to set a web control with which a popup window is associated and set the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_PopupActiontopic"><u>ASPxPopupControl.PopupAction</u></a> property to the "MouseOver" value to show the popup when the mouse is hovering over the popup element. Then set the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_CloseActiontopic"><u>ASPxPopupControl.CloseAction</u></a> property to the "MouseOut" value to close the popup when the mouse is out and set a close delay using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlASPxPopupControl_DisappearAftertopic"><u>ASPxPopupControl.DisappearAfter</u></a> property.</p>

<br/>


