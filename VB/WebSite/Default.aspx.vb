Imports Microsoft.VisualBasic
Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub btn_Click(ByVal sender As Object, ByVal e As EventArgs)
		TryCast(fv.FindControl("fl"), ASPxFormLayout).ForEach(AddressOf ProcessItem)
        'sds.Update() 'Uncomment this line to allow updating.
	End Sub

	Private Sub ProcessItem(ByVal item As LayoutItemBase)
		Dim layoutItem As LayoutItem = TryCast(item, LayoutItem)
		If layoutItem IsNot Nothing Then
			Dim editBase As ASPxTextBox = TryCast(layoutItem.GetNestedControl(), ASPxTextBox)
			If editBase IsNot Nothing Then
				sds.UpdateParameters(layoutItem.FieldName).DefaultValue = editBase.Text
			End If
		End If
	End Sub
End Class