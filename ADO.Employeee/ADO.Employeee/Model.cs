using System;
using System.Collections.Generic;
using System.Text;

namespace ADO.Employeee
{
    public class Model
    {
       
        public string name { get; set; }
        public float salary { get; set; }
        public DateTime start { get; set; }
        public char gender { get; set; }
        public string PhoneNo { get; set; }
        public string OfficeAddress { get; set; }
        public string Department { get; set; }
        public double BasicPay { get; set; }
        public double Deductions { get; set; }
        public double TaxablePay { get; set; }
        public double IncomeTax { get; set; }
        public double NetPay { get; set; }
        public int id { get; set; }
    }
}
