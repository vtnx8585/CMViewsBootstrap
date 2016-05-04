using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClinicaMedica.Views
{
    public partial class CatalogoAlergias : System.Web.UI.Page
    {
        Query.AlergiasCatalogo qry = new Query.AlergiasCatalogo();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                {                     
                    DataTable dt = new DataTable();
                    dt.Clear();
                    dt.Columns.Add("dfAlergia", Type.GetType("System.String"));
                    dt.Columns.Add("dfDescripcion", Type.GetType("System.String"));

                    dt = qry.ListAlergias(dt);

                    if (dt.Rows.Count == 0)
                    {

                    }

                    grdCatalogoAlergia.DataSource = dt;
                    grdCatalogoAlergia.DataBind();                    
                    //ScriptManager.RegisterClientScriptBlock(this, GetType(), "JQWarning", "ShowWarning", true);
                    //ClientScript.RegisterStartupScript(this.GetType(), "JQWarning", "ShowWarning();", true);


                }                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnGuardarNombreAlergia_Click(object sender, EventArgs e)
        {            
            try
            {                
                string NombreAlergia = txtNombreAlergia.Text;
                string DescripcionAlergia = txtDescripcionAlergia.Text;
                int Estado = 1;
                DateTime Fecha = DateTime.Today;                

                bool resultado = qry.SaveAlergias(NombreAlergia, DescripcionAlergia,Estado,Fecha);

                if (resultado == true) {
                    lblAlergiaAlerta.Text = "Error en la transaccion";
                    lblAlergiaAlerta.Visible = true;                   
                }

            }
            catch (Exception ex) {
                throw ex;
            }

            Response.Redirect("CatalogoAlergias.aspx", false);

        }


    }
}