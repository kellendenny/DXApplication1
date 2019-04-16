using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGauges.Gauges.Linear;
using DevExpress.Web.ASPxGauges;
using System.Web.Routing;
using DevExpress.Utils;
using DevExpress.Web;
using System.Data;
using System.Web.UI;

namespace Decibal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                UpdateGauge();
            }
        }
        private void SetupDataSourceInternal()
        {
            SqlDataSource1.DataSourceMode = System.Web.UI.WebControls.SqlDataSourceMode.DataSet;
        }
        private void UpdateGauge()
        {
            SetupDataSourceInternal();
            UpdateScaleInternal(ASPxGaugeControl1);
        }
        private void UpdateScaleInternal(ASPxGaugeControl gauge)
        {
            float oldValue = ((LinearGauge)gauge.Gauges[0]).Scales[0].Value;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);
            float newValue = new Random().Next(300);
            if (oldValue != newValue)
            {
                ((LinearGauge)gauge.Gauges[0]).Scales[0].Value = newValue;
                gauge.DataBind();
            }
        }
       
        protected void ASPxGaugeControl1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateGauge();
        }
    }
}