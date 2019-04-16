using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGauges.Gauges.Linear;
using DevExpress.Web.ASPxGauges;
using DevExpress.Web.ASPxGauges.Gauges.Digital;
using System.Web.Routing;
using DevExpress.Utils;
using DevExpress.Web;
using System.Data.SqlClient;
using System.Web.UI;

namespace Decibal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                UpdateGauge(1);
            }
        }
        
        private void UpdateGauge(int gaugeNo)
        {
            float v = GetData(gaugeNo);
            if (gaugeNo == 1)
            {
                UpdateScaleInternal(ASPxGaugeControl1, v);
            }
            else if (gaugeNo == 2)
            {
                UpdateScaleInternal2(ASPxGaugeControl2, v);
            }
            else if (gaugeNo == 3)
            {
                UpdateScaleInternal3(ASPxGaugeControl3, v);
            }
        }

        private float GetData(int index)
        {
            string ConString;
            SqlConnection cnn;
            ConString = "Data Source = decibal.database.windows.net; Initial Catalog = decibal.ece8803; Persist Security Info = True; User ID = decibal; Password = ece8803!";


            cnn = new SqlConnection(ConString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;

            string sql, Output = "";

            sql = "Select Max(RecordID) From dbo.Chargers Where ArduinoID = 1001";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Select * From dbo.Chargers Where RecordID = " + Output;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            float newValue = 0;

            if (index == 1){
                
                Output = "";
                float Output2;
                while (dataReader.Read())
                {
                    Output2 = (float)dataReader.GetValue(4);
                    newValue = Output2;
                }

                return newValue;
            
            }

            else if (index == 2)
            {
                Output = "";
                float Output2;
                while (dataReader.Read())
                {
                    Output2 = (float)dataReader.GetValue(3);
                    newValue = Output2;
                }

                return newValue;
            
            }

            else if (index == 3)
            {
                Output = "";
                float Output2;
                while (dataReader.Read())
                {
                    Output2 = (float)dataReader.GetValue(6);
                    newValue = Output2;
                }

                return newValue;
            }

            else
            {
                return newValue;
            }

            

        }
        private void UpdateScaleInternal(ASPxGaugeControl gauge, float value)
        {


            float newValue;
            float oldValue = ((LinearGauge)gauge.Gauges[0]).Scales[0].Value;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            newValue = value;
            
            if (oldValue != newValue)
            {
                ((LinearGauge)gauge.Gauges[0]).Scales[0].Value = newValue;
                gauge.DataBind();
            }
        }

        private void UpdateScaleInternal2(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            newValue = String.Format("{0:N3}", value);

            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateScaleInternal3(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            newValue = String.Format("{0:N3}", value);

            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }



        protected void ASPxGaugeControl1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateGauge(1);
        }

        protected void ASPxGaugeControl2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateGauge(2);
        }

        protected void ASPxGaugeControl3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateGauge(3);
        }
    }
}