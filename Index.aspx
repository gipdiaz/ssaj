<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="bootstrap.css" rel="stylesheet" type="text/css" />

    <title>Página sin título modificada</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p> 
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-small btn-success" OnClick="Button1_Click" Text="Volver ar" />&nbsp;</p>
        <p>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="MiLabel" Text="Label"></asp:Label></p>   
            
    </div>
    </form>
</body>
</html>
