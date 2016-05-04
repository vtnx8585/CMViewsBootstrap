using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClinicaMedica.Views
{
    public partial class CatalogoEstados : System.Web.UI.Page
    {
        Query.CatalogoEstados qry = new Query.CatalogoEstados();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                {                       
                    DataTable dt = new DataTable();
                    dt.Clear();
                    dt.Columns.Add("dfEstado", Type.GetType("System.String"));
                    dt.Columns.Add("dfDescripcion", Type.GetType("System.String"));

                    dt = qry.ListEstado(dt);

                    if (dt.Rows.Count == 0)
                    {

                    }
                                       
                    grdCatalogoEstado.DataSource = dt;
                    grdCatalogoEstado.DataBind();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnGuardarNombreEstado_Click(object sender, EventArgs e)
        {
            try
            {
                string NombreEstado = txtNombreEstado.Text;
                string DescripcionEstado = txtDescripcionEstado.Text;
                DateTime FechaCreacion = DateTime.Today;

                qry.SaveEstado(NombreEstado, DescripcionEstado, FechaCreacion);

            }
            catch (Exception ex) {
                throw ex;
            }
        }
    }
}