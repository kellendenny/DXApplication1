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
    public partial class WebForm5 : System.Web.UI.Page
    {
        public Object[] data = new object[5];
        public Object[] data2 = new object[5];
        public Object[] data3 = new object[10];
        public Object[] data4 = new object[18];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                UpdateData(1);
            }
        }

        protected void TextChanged(object sender, EventArgs e)
        {
            float temp = Convert.ToSingle(ASPxTextBox1.Value);
            WriteData(temp, 1);
        }

        public void UpdateData(int ID)
        {
            data = GetData(ID);
            
        }

        public void UpdateData2(int ID)
        {
            data2 = GetData2(ID);

        }

        public void UpdateData3(int ID)
        {
            data3 = GetData3(ID);

        }

        public void UpdateData4(int ID)
        {
            data4 = GetData4(ID);

        }


        private void WriteData(float value, int ID)
        {
            string ConString;
            SqlConnection cnn;
            ConString = "Data Source = decibal.database.windows.net; Initial Catalog = decibal.ece8803; Persist Security Info = True; User ID = decibal; Password = ece8803!";


            cnn = new SqlConnection(ConString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;

            string sql, Output = "";

            sql = "Select Max(RecordID) From dbo.MarketData Where ControllerID = " + ID;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Update MarketData Set DemandResponse = " + value + "Where RecordID = " + Output;

            command = new SqlCommand(sql, cnn);

            command.ExecuteNonQuery();

            cnn.Close();



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

            sql = "Select Max(RecordID) From dbo.MarketData Where ControllerID = " + ID;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Select * From dbo.MarketData Where RecordID = " + Output;

            Object[] values = new Object[5];

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
            }
            cnn.Close();
            return values;
        }

        private Object[] GetData2(int ID)
        {
            string ConString;
            SqlConnection cnn;
            ConString = "Data Source = decibal.database.windows.net; Initial Catalog = decibal.ece8803; Persist Security Info = True; User ID = decibal; Password = ece8803!";


            cnn = new SqlConnection(ConString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;

            string sql, Output = "";

            sql = "Select Max(RecordID) From dbo.DistributionFeeders Where ControllerID = " + ID;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Select * From dbo.DistributionFeeders Where RecordID = " + Output;

            Object[] values = new Object[5];

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
            }

            cnn.Close();

            return values;
        }

        private Object[] GetData3(int ID)
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


            try
            {
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
            }
            catch (Exception)
            {
                values[0] = 0;
                values[1] = 0;
                values[2] = 0;
                values[3] = 0F;
                values[4] = 0F;
                values[5] = "Innactive";
                values[6] = 0F;
                values[7] = 0F;
                values[8] = 0F;
                values[9] = 0F;
                return values;
            }
            
            cnn.Close();
            return values;
        }

        private Object[] GetData4(int ID)
        {
            string ConString;
            SqlConnection cnn;
            ConString = "Data Source = decibal.database.windows.net; Initial Catalog = decibal.ece8803; Persist Security Info = True; User ID = decibal; Password = ece8803!";


            cnn = new SqlConnection(ConString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;

            string sql, Output = "";

            sql = "Select Max(RecordID) From dbo.Transactions Where ChargerID = " + ID;

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0);
            }

            dataReader.Close();
            command.Dispose();

            sql = "Select * From dbo.Transactions Where RecordID = " + Output;

            Object[] values = new Object[18];

            command = new SqlCommand(sql, cnn);


            try
            {
                SqlDataReader rdr = command.ExecuteReader();
                while (rdr.Read())
                {
                    // get the results of each column
                    values[0] = (int)rdr[0];
                    values[1] = 0;
                    values[2] = (int)rdr[2];
                    values[3] = (int)rdr[3];
                    values[4] = (int)rdr[4];
                    values[5] = (bool)rdr[5];
                    values[6] = (bool)rdr[6];
                    values[7] = 0;
                    values[8] = 0;
                    values[9] = (int)rdr[9];
                    values[10] = (float)rdr[10];
                    values[11] = (float)rdr[11];
                    values[12] = (float)rdr[12];
                    values[13] = (float)rdr[13];
                    values[14] = (float)rdr[14];
                    values[15] = (float)rdr[15];
                    values[16] = (float)rdr[16];
                    values[17] = (float)rdr[17];
                }
            }
            catch (Exception)
            {
                values[0] = 0;
                values[1] = 0;
                values[2] = 0;
                values[3] = 0;
                values[4] = 0;
                values[5] = false;
                values[6] = false;
                values[7] = 0;
                values[8] = 0;
                values[9] = 0;
                values[10] = 0F;
                values[11] = 0F;
                values[12] = 0F;
                values[13] = 0F;
                values[14] = 0F;
                values[15] = 0F;
                values[16] = 0F;
                values[17] = 0F;
                return values;
            }

            cnn.Close();
            return values;
        }

        private void UpdateGauge(int total)
        {
            float newValue = 0;
            string newString = "";
            if (total == 1)
            {
                newValue = (float)data.GetValue(3);
                UpdateMarketPrice(MarketCost, newValue);
            }
            else if (total == 2)
            {
                newValue = (float)data2.GetValue(4);
                UpdateScaleFeeder(FeederLoad, newValue);
            }
            else if (total == 3)
            {
                newValue = (float)data.GetValue(4);
                UpdateDemandReduction(DemandReduction, newValue);
            }
            else if (total == 4)
            {
                newValue = (float)data3.GetValue(4);
                UpdateScaleFeeder(CarGauge1, newValue);
            }
            else if (total == 5)
            {
                newValue = (float)data3.GetValue(4);
                UpdateScaleFeeder(CarGauge2, newValue);
            }
            else if (total == 6)
            {
                newValue = (float)data3.GetValue(4);
                UpdateScaleFeeder(CarGauge3, newValue);
            }
            else if (total == 7)
            {
                newValue = (float)data3.GetValue(4);
                UpdateScaleFeeder(CarGauge4, newValue);
            }
            else if (total == 8)
            {
                newValue = (float)data4.GetValue(17);
                UpdateMarketPrice(CarMultiplier1, newValue);
            }
            else if (total == 9)
            {
                newValue = (float)data4.GetValue(17);
                UpdateMarketPrice(CarMultiplier2, newValue);
            }
            else if (total == 10)
            {
                newValue = (float)data4.GetValue(17);
                UpdateMarketPrice(CarMultiplier3, newValue);
            }
            else if (total == 11)
            {
                newValue = (float)data4.GetValue(17);
                UpdateMarketPrice(CarMultiplier4, newValue);
            }
            else if (total == 12)
            {
                newValue = (float)data4.GetValue(15);
                UpdateUserCost(CarNetm1, newValue);
            }
            else if (total == 13)
            {
                newValue = (float)data4.GetValue(15);
                UpdateUserCost(CarNetm2, newValue);
            }
            else if (total == 14)
            {
                newValue = (float)data4.GetValue(15);
                UpdateUserCost(CarNetm3, newValue);
            }
            else if (total == 15)
            {
                newValue = (float)data4.GetValue(15);
                UpdateUserCost(CarNetm4, newValue);
            }
            else if (total == 16)
            {
                newValue = (float)data4.GetValue(16);
                UpdateUserCost(CarNete1, newValue);
            }
            else if (total == 17)
            {
                newValue = (float)data4.GetValue(16);
                UpdateUserCost(CarNete2, newValue);
            }
            else if (total == 18)
            {
                newValue = (float)data4.GetValue(16);
                UpdateUserCost(CarNete3, newValue);
            }
            else if (total == 19)
            {
                newValue = (float)data4.GetValue(16);
                UpdateUserCost(CarNete4, newValue);
            }
            else if (total == 20)
            {
                newValue = (int)data4.GetValue(9);
                UpdateTimeRem(CarEstrem1, newValue);
            }
            else if (total == 21)
            {
                newValue = (int)data4.GetValue(9);
                UpdateTimeRem(CarEstrem2, newValue);
            }
            else if (total == 22)
            {
                newValue = (int)data4.GetValue(9);
                UpdateTimeRem(CarEstrem3, newValue);
            }
            else if (total == 23)
            {
                newValue = (int)data4.GetValue(9);
                UpdateTimeRem(CarEstrem4, newValue);
            }
            else if (total == 24)
            {
                newString = (string)data3.GetValue(5);
                UpdateCarState(CarState1, newString);
            }
            else if (total == 25)
            {
                newString = (string)data3.GetValue(5);
                UpdateCarState(CarState2, newString);
            }
            else if (total == 26)
            {
                newString = (string)data3.GetValue(5);
                UpdateCarState(CarState3, newString);
            }
            else if (total == 27)
            {
                newString = (string)data3.GetValue(5);
                UpdateCarState(CarState4, newString);
            }

        }
        private void UpdateMarketPrice(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            //newValue = Convert.ToString(value);
            newValue = String.Format("{0:N2}", value);

            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateUserCost(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            //newValue = Convert.ToString(value);
            newValue = String.Format("{0:N2}", value);
            //newValue = "$" + newValue;
            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateTimeRem(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            //newValue = Convert.ToString(value);
            newValue = String.Format("{0:N0}", value);
            //newValue = "$" + newValue;
            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateDemandReduction(ASPxGaugeControl gauge, float value)
        {


            string newValue;
            DigitalGauge oldValue2 = (DigitalGauge)gauge.Gauges[0];
            string oldValue;
            oldValue = oldValue2.Text;
            //Dennis: use a random value, just for demonstration purposes.
            //DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //float newValue = Convert.ToSingle(dv.Table.Rows[0][0]);

            //newValue = Convert.ToString(value);
            newValue = String.Format("{0:N0}", value);

            if (oldValue != newValue)
            {
                oldValue2.Text = newValue;
                ((DigitalGauge)gauge.Gauges[0]).Text = oldValue2.Text;
                //ASPxGaugeControl2.Value = newValue;
                //gauge.Gauges[0].ForceUpdateChildren();
            }
        }

        private void UpdateScaleFeeder(ASPxGaugeControl gauge, float value)
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

        private void UpdateCarState(ASPxGaugeControl gauge, string value)
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
                newValue = 1;
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

        protected void MarketPrice_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1);
            UpdateGauge(1);
        }
        protected void FeederLoad_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData2(1);
            UpdateGauge(2);
        }

        protected void DemandReduction_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData(1);
            UpdateGauge(3);
        }

        protected void CarGauge1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1001);
            UpdateGauge(4);
        }

        protected void CarGauge2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1002);
            UpdateGauge(5);
        }

        protected void CarGauge3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1003);
            UpdateGauge(6);
        }

        protected void CarGauge4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1004);
            UpdateGauge(7);
        }

        protected void CarMultiplier1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1001);
            UpdateGauge(8);
        }

        protected void CarMultiplier2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1002);
            UpdateGauge(9);
        }

        protected void CarMultiplier3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1003);
            UpdateGauge(10);
        }

        protected void CarMultiplier4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1004);
            UpdateGauge(11);
        }

        protected void CarNetm1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1001);
            UpdateGauge(12);
        }

        protected void CarNetm2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1002);
            UpdateGauge(13);
        }

        protected void CarNetm3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1003);
            UpdateGauge(14);
        }

        protected void CarNetm4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1004);
            UpdateGauge(15);
        }

        protected void CarNete1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1001);
            UpdateGauge(16);
        }

        protected void CarNete2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1002);
            UpdateGauge(17);
        }

        protected void CarNete3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1003);
            UpdateGauge(18);
        }

        protected void CarNete4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1004);
            UpdateGauge(19);
        }

        protected void CarEstrem1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1001);
            UpdateGauge(20);
        }

        protected void CarEstrem2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1002);
            UpdateGauge(21);
        }

        protected void CarEstrem3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1003);
            UpdateGauge(22);
        }

        protected void CarEstrem4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData4(1004);
            UpdateGauge(23);
        }

        protected void CarState1_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1001);
            UpdateGauge(24);
        }

        protected void CarState2_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1002);
            UpdateGauge(25);
        }

        protected void CarState3_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1003);
            UpdateGauge(26);
        }

        protected void CarState4_CustomCallback(object source, DevExpress.Web.CallbackEventArgsBase e)
        {
            UpdateData3(1004);
            UpdateGauge(27);
        }

    }
}