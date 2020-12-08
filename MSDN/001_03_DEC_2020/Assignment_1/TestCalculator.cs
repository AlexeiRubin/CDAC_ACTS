using System;
using CalculatorService;

namespace CalculatorEntity
{
    class TestCalculator
    {
        static void Main(string[] args)
        {
            Calculator calcEntity = new Calculator();

            bool exit = false;
            int firstOperand = 0, secondOperand = 0;

            while(!exit)
            {
                Console.WriteLine("Enter 1 to Add");
                Console.WriteLine("Enter 2 to Subtract");
                Console.WriteLine("Enter 3 to Multiply");
                Console.WriteLine("Enter 4 to Divide");
                Console.WriteLine("Enter 5 to find Square Root");
                Console.WriteLine("Enter 6 to EXIT");

                int choice = Int32.Parse(Console.ReadLine());

                if(choice == 6)
                {
                    exit = true;
                    continue;
                }

                if(choice != 5)
                {
                    Console.WriteLine("Enter the First Operand");
                    firstOperand = Int32.Parse(Console.ReadLine());

                    Console.WriteLine("Enter the Second Operand");
                    secondOperand = Int32.Parse(Console.ReadLine());
                }

                switch(choice)
                {
                    case 1:
                        calcEntity.AddOp(firstOperand, secondOperand);
                        break;

                    case 2:
                        calcEntity.SubOp(firstOperand, secondOperand);
                        break;

                    case 3:
                        calcEntity.ProdOp(firstOperand, secondOperand);
                        break;

                    case 4:
                        calcEntity.DivOp(firstOperand, secondOperand);
                        break;

                    case 5:
                        Console.WriteLine("Enter the Operand");
                        double operand = Double.Parse(Console.ReadLine());

                        calcEntity.SqrtOp(operand);
                        break;
                }
            }
        }
    }
}