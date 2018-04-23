using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxFormLayout;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void btn_Click(object sender, EventArgs e) {
        (fv.FindControl("fl") as ASPxFormLayout).ForEach(ProcessItem);
        //sds.Update(); //Uncomment this line to allow updating.
    }

    private void ProcessItem(LayoutItemBase item) {
        LayoutItem layoutItem = item as LayoutItem;
        if (layoutItem != null) {
            ASPxTextBox editBase = layoutItem.GetNestedControl() as ASPxTextBox;
            if (editBase != null)
                sds.UpdateParameters[layoutItem.FieldName].DefaultValue = editBase.Text;
        }
    }
}