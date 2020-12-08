using System;

namespace CalendarEntity
{
    class CalendarDay
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Gregorian Calendar Date (YYYY-MM-DD)");
            DateTime dateObj = DateTime.Parse(Console.ReadLine());
            
            Console.WriteLine("The Day of the Year is : " + dateObj.DayOfYear);
        }
    }
}