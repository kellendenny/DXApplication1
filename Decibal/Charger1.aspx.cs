using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGauges.Gauges.Linear;
using DevExpress.Web.ASPxGauges;
using DevExpress.Web.ASPxGauges.Gauges.Digital;
using DevExpress.Web.ASPxGauges.Gauges.State;
using System.Web.Routing;
using DevExpress.Utils;
using DevExpress.Web;
using System.Data.SqlClient;
using System.Web.UI;

namespace Decibal
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        public Object[] data = new object[10];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                UpdateData(1001);
            }
        }

        public void UpdateData(int ID)
        {
           data = GetData(ID);
        }

        private void UpdateGauge(int total)
        {
            float newValue = 0;
            string newString = "";
            if (total == 1)
            {
                newValue = (float)data.GetValue(4);
                UpdateScaleInternal(ASPxGaugeControl1, newValue);
            }                             
            if (total == 2)
            {
                newValue = (float)data.GetValue(3);
                UpdateScaleInternal2(ASPxGaugeControl2, newValue);
            }
            if (total == 3)
            {
                newValue = (float)data.GetValue(6);
                UpdateScaleInternal3(ASPxGaugeControl3, newValue);
            }
            if (total == 4)
            {
                newValue = (float)data.GetValue(7);
                UpdateScaleInternal4(ASPxGaugeControl4, newValue);
            }
            if (total == 5)
            {
                newValue = (float)data.GetValue(8);
                UpdateScaleInternal5(ASPxGaugeControl5, newValue);
            }
            if (total == 6)
            {
                newString = (string)data.GetValue(5);
                UpdateScaleInternal7(ASPxGaugeControl7, newString);
            }
            if (total == 7)
            {
                newValue = (float)data.GetValue(9);
                UpdateScaleInternal6(ASPxGaugeControl6, newValue);
            }
        }

        private Object[] GetData(int ID)
        {
            string ConString;
            SqlConnection cnn;
            ConString = "Data Source = decibal.database.windows.net; Initial Catalog = decibal.ece8803; Persist Security Info = True; User ID = decibal; Password = ece8803!";


            cnn = new SqlConnection(ConString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;

            string sql, Output = "";

            sql = "Select Max(RecordID) From dbo.Chargers Where ArduinoID = " + ID;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Select * From dbo.Chargers Where RecordID = " + Output;

            Object[] values = new Object[10];

            command = new SqlCommand(sql, cnn);



            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                // get the results of each column
                values[0] = (int)rdr[0];
                values[1] = 0;
                values[2] = (int)rdr[2];
                values[3] = (float)rdr[3];
                values[4] = (float)rdr[4];
                values[5] = (string)rdr[5];
                values[6] = (float)rdr[6];
                values[7] = (float)rdr[7];
                values[8] = (float)rdr[8];
                values[9] = (float)rdr[9];
            }
            return values;
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

        private void UpdateScaleInternal4(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            newValue = Convert.ToString(value);

            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateScaleInternal5(ASPxGaugeControl gauge, float value)
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

        private void UpdateScaleInternal7(ASPxGaugeControl gauge, string value)
        {

            int oldValue;
            int newValue = 0;
            string text = "";
            
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            if (value == "Charging")
            {
                 newValue = 0;
            }
            else if (value == "Discharging")
            {
                newValue  = 1;
            }
            else if (value == "Standby")
            {
                newValue = 2;
            }
            else if (value == "Innactive")
            {
                newValue = 3;
            }

            oldValue = ((StateIndicatorGauge)gauge.Gauges[0]).Indicators[0].StateIndex;
            
            if (oldValue != newValue)
            {
                ((StateIndicatorGauge)gauge.Gauges[0]).Indicators[0].StateIndex = newValue;
                ((StateIndicatorGauge)gauge.Gauges[0]).Labels[0].Text = value;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateScaleInternal6(ASPxGaugeControl gauge, float value)
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


        protected void ASPxGaugeControl1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(1);
        }

        protected void ASPxGaugeControl2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(2);
        }

        protected void ASPxGaugeControl3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(3);
        }

        protected void ASPxGaugeControl4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(4);
        }

        protected void ASPxGaugeControl5_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(5);
        }

        protected void ASPxGaugeControl7_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(6);
        }

        protected void ASPxGaugeControl6_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1001);
            UpdateGauge(7);
        }
    }
}