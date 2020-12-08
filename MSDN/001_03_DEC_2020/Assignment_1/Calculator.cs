using System;

namespace CalculatorService
{
    public class Calculator
    {
        public void AddOp(int firstOperand, int secondOperand) => Console.WriteLine("{0} + {1} = " + (firstOperand + secondOperand), firstOperand, secondOperand);

        public void SubOp(int firstOperand, int secondOperand) => Console.WriteLine("{0} - {1} = " + (firstOperand - secondOperand), firstOperand, secondOperand);

        public void ProdOp(int firstOperand, int secondOperand) => Console.WriteLine("{0} * {1} = " + (firstOperand * secondOperand), firstOperand, secondOperand);

        public void DivOp(int firstOperand, int secondOperand)
        {
            if (secondOperand == 0)
                Console.WriteLine("Cannot Divide By Zero, Second Operand is Zero");
            else
                Console.WriteLine("{0} / {1} = " + (firstOperand / secondOperand), firstOperand, secondOperand);
        }

        public void SqrtOp(double operand) 
        {
            if (Double.IsNaN(Math.Sqrt(operand)))
                Console.WriteLine("Cannot Find Negative Square Root, Operand is Negative");
            else
                Console.WriteLine("SQRT({0}) = " + Math.Sqrt(operand), operand);
        }
    }
}