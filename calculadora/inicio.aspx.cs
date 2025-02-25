using System;
using System.Web.UI;

namespace calculadora
{
    public partial class inicio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void boperacion_Click(object sender, EventArgs e)
        {
            try
            {
                double valor1 = Convert.ToDouble(Tvalor1.Text);
                double valor2 = Convert.ToDouble(Tvalor2.Text);
                double resultado = 0;
                bool operacionSeleccionada = false;

                // Operaciones con RadioButtons
                if (rsuma.Checked)
                {
                    resultado = valor1 + valor2;
                    operacionSeleccionada = true;
                }
                else if (rresta.Checked)
                {
                    resultado = valor1 - valor2;
                    operacionSeleccionada = true;
                }
                else if (rmulti.Checked)
                {
                    resultado = valor1 * valor2;
                    operacionSeleccionada = true;
                }
                else if (rdivi.Checked)
                {
                    if (valor2 != 0)
                        resultado = valor1 / valor2;
                    else
                        throw new DivideByZeroException();
                    operacionSeleccionada = true;
                }

                // Operaciones con CheckBoxes
                if (csuma.Checked)
                {
                    resultado = valor1 + valor2;
                    operacionSeleccionada = true;
                }
                if (cresta.Checked)
                {
                    resultado = valor1 - valor2;
                    operacionSeleccionada = true;
                }
                if (cmulti.Checked)
                {
                    resultado = valor1 * valor2;
                    operacionSeleccionada = true;
                }
                if (cdivi.Checked)
                {
                    if (valor2 != 0)
                        resultado = valor1 / valor2;
                    else
                        throw new DivideByZeroException();
                    operacionSeleccionada = true;
                }

                // Operaciones con DropDownList
                switch (DropDownList1.SelectedValue)
                {
                    case "Suma":
                        resultado = valor1 + valor2;
                        operacionSeleccionada = true;
                        break;
                    case "Resta":
                        resultado = valor1 - valor2;
                        operacionSeleccionada = true;
                        break;
                    case "Multiplicación":
                        resultado = valor1 * valor2;
                        operacionSeleccionada = true;
                        break;
                    case "División":
                        if (valor2 != 0)
                            resultado = valor1 / valor2;
                        else
                            throw new DivideByZeroException();
                        operacionSeleccionada = true;
                        break;
                }

                // Operaciones con ListBox
                switch (ListBox1.SelectedValue)
                {
                    case "Suma":
                        resultado = valor1 + valor2;
                        operacionSeleccionada = true;
                        break;
                    case "Resta":
                        resultado = valor1 - valor2;
                        operacionSeleccionada = true;
                        break;
                    case "Multiplicación":
                        resultado = valor1 * valor2;
                        operacionSeleccionada = true;
                        break;
                    case "División":
                        if (valor2 != 0)
                            resultado = valor1 / valor2;
                        else
                            throw new DivideByZeroException();
                        operacionSeleccionada = true;
                        break;
                }

                
                if (operacionSeleccionada)
                {
                    lresultado.Text = "Resultado: " + resultado;
                }
                else
                {
                    lresultado.Text = "Selecciona al menos una operación.";
                }
            }
            catch (FormatException)
            {
                lresultado.Text = "Error: Ingresa valores numéricos válidos.";
            }
            catch (DivideByZeroException)
            {
                lresultado.Text = "Error: No se puede dividir por cero.";
            }
            catch (Exception ex)
            {
                lresultado.Text = "Error inesperado: " + ex.Message;
            }
        }
    }
}
