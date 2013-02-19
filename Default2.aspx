<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Chusmea Browser" OnClick="Button1_Click" />&nbsp;<br />
        <br />
        &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Pasa paginas" />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Baseando" /><br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:apuConnectionString %>"
            OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ProfesionPersona]">
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id"
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"
                    SortExpression="Id" />
                <asp:BoundField DataField="ma_Id" HeaderText="ma_Id" SortExpression="ma_Id" />
                <asp:BoundField DataField="codProfesion" HeaderText="codProfesion" SortExpression="codProfesion" />
                <asp:BoundField DataField="nroMat" HeaderText="nroMat" SortExpression="nroMat" />
                <asp:BoundField DataField="tomo" HeaderText="tomo" SortExpression="tomo" />
                <asp:BoundField DataField="folio" HeaderText="folio" SortExpression="folio" />
                <asp:BoundField DataField="nro" HeaderText="nro" SortExpression="nro" />
                <asp:BoundField DataField="biblio" HeaderText="biblio" SortExpression="biblio" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </form>
</body>
</html>
