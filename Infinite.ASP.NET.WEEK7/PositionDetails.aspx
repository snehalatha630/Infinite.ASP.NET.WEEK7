<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionDetails.aspx.cs" Inherits="Infinite.ASP.NET.WEEK7.PositionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <label>Position Code</label>
            </div>
          <asp:TextBox ID="txtcPositionCode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcPositionCode" runat="server" ControlToValidate="txtcPositionCode" 
                ErrorMessage="Please enter position code"></asp:RequiredFieldValidator>
            <div><label>Description</label></div>
            <asp:TextBox ID="txtvDescription" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvvDescription" runat="server" ControlToValidate="txtvDescription" 
                ErrorMessage="Please enter description"></asp:RequiredFieldValidator>
            <div><label>Budgeted Strength</label></div>
            <asp:TextBox ID="txtiBudgetStrength" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfviBudgetStrength" runat="server" ControlToValidate="txtiBudgetStrength" 
                ErrorMessage="Please enter budget strength"></asp:RequiredFieldValidator>

            <div><label>Current Strength</label></div>
            <asp:TextBox ID="txtiCurrentStrength" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCurrentStrength" runat="server" ControlToValidate="txtiCurrentStrength" 
                ErrorMessage="Please enter current strength"></asp:RequiredFieldValidator>

        </div>

        <div>
            <label>Year</label>
            <asp:DropDownList ID="ddlsiYear" runat="server">
                <asp:ListItem>Select Year</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Reset"  OnClick="btnReset_Click"/>
            </div>
        <div>
            <asp:Label Text="" ID="LblMessage" runat="server" />
        </div>
    </form>
</body>
</html>
