using System;
using ArrayService;

namespace ArrayEntity
{
    class TestArray
    {
        static void Main(string[] args)
        {
            ArrayOps ops = new ArrayOps();
            bool exit = false;

            Console.WriteLine("Enter the number of elements of the array");
            int N = Int32.Parse(Console.ReadLine());

            int[] arr = new int[N];

            Console.WriteLine("Enter the elemetns of the array");
            for(int i = 0 ; i < N ; ++i)
                arr[i] = Int32.Parse(Console.ReadLine());

            while(!exit)
            {
                Console.WriteLine("Enter 1 to Sort Using BubbleSort");
                Console.WriteLine("Enter 2 to Sort Using QuickSort");
                Console.WriteLine("Enter 3 to Search Using LinearSearch");
                Console.WriteLine("Enter 4 to Search Using BinarySearch (Iterative)");
                Console.WriteLine("Enter 5 to Search Using BinarySearch (Recursive)");
                Console.WriteLine("Enter 6 to EXIT");

                int ele, choice = Int32.Parse(Console.ReadLine());

                switch(choice)
                {
                    case 1:
                        ops.BubbleSort(arr);
                        break;

                    case 2:
                        ops.QuickSort(arr, 0, (arr.Length - 1));
                        Console.WriteLine("Sorted Using QuickSort");
                        ops.display(arr);
                        break;

                    case 3:
                        Console.WriteLine("Enter the element to Search");
                        ele = Int32.Parse(Console.ReadLine());
                        ops.LinearSearch(arr, ele);
                        break;

                    case 4:
                        Console.WriteLine("Enter the element to Search");
                        ele = Int32.Parse(Console.ReadLine());
                        ops.BinarySearchIterative(arr, ele);
                        break;

                    case 5:
                        Console.WriteLine("Enter the element to Search");
                        ele = Int32.Parse(Console.ReadLine());
                        ops.BinarySearchRecursive(arr, ele, 0 , (arr.Length - 1));
                        break;

                    case 6:
                        exit = true;
                        break;
                }
            }
        }
    }
}