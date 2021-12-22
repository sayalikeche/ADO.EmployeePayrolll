using ADO.Employeee;
using System;

namespace ADO.Employeee
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome To Pay Roll Service");

            bool flag = true;
            while (flag)
            {
                Console.WriteLine("Select the number which is to be executed \n 1.ADD \n 2.Delete \n 3.Update  \n 4.View \n 5.Exit");
                int choice = Convert.ToInt32(Console.ReadLine());
                Connection paysql = new Connection();
                switch (choice)
                {
                    case 1:
                        Model model = new Model();

                        model.name = "Anisha";
                        model.start = DateTime.Now;
                        model.salary = 250000;
                        model.gender = 'F';
                        model.PhoneNo = 524556555;
                        model.OfficeAddress = "Mumbai";
                        model.Department = "HR";
                        model.BasicPay = 12345;
                        model.Deductions = 5642.56;
                        model.TaxablePay = 500.45;
                        model.IncomeTax = 1200.34;
                        model.NetPay = 80000;
                        model.Dep_id = 09;



                        var result = paysql.AddEmployee(model);

                        if (result != null)

                            Console.WriteLine("Data is added Successfully");
                        else
                            Console.WriteLine("Correct Data as per given Column Sequence");
                        break;

                    case 2:
                        Console.WriteLine("Enter the id To Delete Data");
                        int num = Convert.ToInt32(Console.ReadLine());
                        paysql.DeleteEmployee(num);
                        break;


                    case 3:
                        flag = false;
                        break;
                }
            }
        }
    }
}