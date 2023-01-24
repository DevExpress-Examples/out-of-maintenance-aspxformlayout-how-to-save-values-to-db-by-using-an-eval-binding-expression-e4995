<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxFormLayout - How to save values to DB by using an Eval binding expression</title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:FormView ID="fv" runat="server" DefaultMode="Edit" DataSourceID="sds"
			Width="100%" DataKeyNames="CategoryID">
			<EditItemTemplate>
				<dx:ASPxFormLayout ID="fl" runat="server">
					<Items>
						<dx:LayoutGroup Caption="Caption">
							<Items>
								<dx:LayoutItem Name="CategoryID" FieldName="CategoryID" ClientVisible="false">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server"
											SupportsDisabledAttribute="True">
											<dx:ASPxTextBox ID="tb1" runat="server"
												Text='<%#Eval("CategoryID")%>' Width="170px">
											</dx:ASPxTextBox>
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Name="CategoryName" FieldName="CategoryName">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server"
											SupportsDisabledAttribute="True">
											<dx:ASPxTextBox ID="tb2" runat="server"
												Text='<%#Bind("CategoryName")%>' Width="170px">
											</dx:ASPxTextBox>
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Name="Description" FieldName="Description">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer3" runat="server"
											SupportsDisabledAttribute="True">
											<dx:ASPxTextBox ID="tb3" runat="server"
												Text='<%#Bind("Description")%>' Width="170px">
											</dx:ASPxTextBox>
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
							</Items>
						</dx:LayoutGroup>
					</Items>
				</dx:ASPxFormLayout>
				<%--<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True"
					CommandName="Update" Text="Update" />
				&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server"
					CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
			</EditItemTemplate>
		</asp:FormView>
		<asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:NWindConnectionString %>"
			UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description WHERE [CategoryID] = @CategoryID"
			SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
			<UpdateParameters>
				<asp:Parameter Name="CategoryName" Type="String" />
				<asp:Parameter Name="Description" Type="String" />
				<asp:Parameter Name="CategoryID" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<dx:ASPxButton ID="btn" runat="server" Text="Update" OnClick="btn_Click">
		</dx:ASPxButton>
	</form>
</body>
</html>