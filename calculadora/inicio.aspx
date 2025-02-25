<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="calculadora.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Calculadora</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora</h2>
            <label>Valor 1:</label>
            <asp:TextBox ID="Tvalor1" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <label>Valor 2:</label>
            <asp:TextBox ID="Tvalor2" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="boperacion" runat="server" Text="Calcular" OnClick="boperacion_Click" />
            <br />
            <asp:Label ID="lresultado" runat="server" Text="Resultado: "></asp:Label>
            <br /><br />
            
            <h3>Radio Buttons</h3>
            <asp:RadioButton ID="rsuma" Text="Suma" runat="server" GroupName="operacion" />
            <asp:RadioButton ID="rresta" Text="Resta" runat="server" GroupName="operacion" />
            <asp:RadioButton ID="rmulti" Text="Multiplicación" runat="server" GroupName="operacion" />
            <asp:RadioButton ID="rdivi" Text="División" runat="server" GroupName="operacion" />
            
            <h3>CheckBoxes</h3>
            <asp:CheckBox ID="csuma" Text="Suma" runat="server" />
            <asp:CheckBox ID="cresta" Text="Resta" runat="server" />
            <asp:CheckBox ID="cmulti" Text="Multiplicación" runat="server" />
            <asp:CheckBox ID="cdivi" Text="División" runat="server" />
            
            <h3>DropDownList</h3>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Suma</asp:ListItem>
                <asp:ListItem>Resta</asp:ListItem>
                <asp:ListItem>Multiplicación</asp:ListItem>
                <asp:ListItem>División</asp:ListItem>
            </asp:DropDownList>
            
            <h3>ListBox</h3>
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Suma</asp:ListItem>
                <asp:ListItem>Resta</asp:ListItem>
                <asp:ListItem>Multiplicación</asp:ListItem>
                <asp:ListItem>División</asp:ListItem>
            </asp:ListBox>
        </div>
    </form>
</body>
</html>

<script runat="server">
    protected void boperacion_Click(object sender, EventArgs e)
    {
        double valor1 = Convert.ToDouble(Tvalor1.Text);
        double valor2 = Convert.ToDouble(Tvalor2.Text);
        double resultado = 0;
        
        if (rsuma.Checked || csuma.Checked || DropDownList1.SelectedValue == "Suma" || ListBox1.SelectedValue == "Suma")
        {
            resultado += valor1 + valor2;
        }
        if (rresta.Checked || cresta.Checked || DropDownList1.SelectedValue == "Resta" || ListBox1.SelectedValue == "Resta")
        {
            resultado += valor1 - valor2;
        }
        if (rmulti.Checked || cmulti.Checked || DropDownList1.SelectedValue == "Multiplicación" || ListBox1.SelectedValue == "Multiplicación")
        {
            resultado += valor1 * valor2;
        }
        if (rdivi.Checked || cdivi.Checked || DropDownList1.SelectedValue == "División" || ListBox1.SelectedValue == "División")
        {
            if (valor2 != 0)
                resultado += valor1 / valor2;
            else
                lresultado.Text = "No se puede dividir por cero";
        }
        
        lresultado.Text = "Resultado: " + resultado;
    }
</script>
