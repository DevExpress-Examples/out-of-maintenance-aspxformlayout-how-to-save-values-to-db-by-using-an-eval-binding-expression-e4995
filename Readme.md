<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxFormLayout - How to save values to DB by using an Eval binding expression


<p>It's possible to update data in DB by using the ASPxFormLayout with an Eval binding expression:</p><p>- Set the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxFormLayoutLayoutItemBase_Nametopic">LayoutItemBase.Name</a>;</p><p>- Bind editors in LayoutItems with an Eval binding expression;</p><p>- Loop thru the layout items and set the SqlDataSource parameter default valuea depending on the  layout items names.</p>

<br/>


