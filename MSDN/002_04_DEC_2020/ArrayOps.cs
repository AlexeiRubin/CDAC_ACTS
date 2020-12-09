using System;

namespace ArrayService
{
    public class ArrayOps
    {
        public void BubbleSort(int[] arr)
        {
            int temp;

            for (int i = 0 ; i < (arr.Length - 1) ; ++i)
            {
                for (int j = 0 ; j < ((arr.Length - i) - 1) ; ++j)
                {
                    if (arr[j] > arr[j + 1])
                    {
                        temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }
            Console.WriteLine("Sorted Using BubbleSort");
            display(arr);
        }

        public int arrayPartition(int[] arr, int low, int high)
        {
            int i, j, temp1, temp2, pivot = arr[high];

            for (i = (low - 1), j = low ; j < high; ++j)
            {
                if (arr[j] < pivot)
                {
                    ++i;
                    temp1 = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp1;
                }
            }

            temp2 = arr[i + 1];
            arr[i + 1] = arr[high];
            arr[high] = temp2;
            
            return (i + 1);
        }

        public void QuickSort(int[] arr, int low , int high)
        {
            if (low < high)
            {
                int part = arrayPartition(arr, low, high);

                QuickSort(arr, low, (part - 1));
                QuickSort(arr, (part + 1), high);
            }
        }

        public void LinearSearch(int[] arr, int ele)
        {
            for (int i = 0 ; i < arr.Length ; ++i)
            {
                if (arr[i] == ele)
                {
                    Console.WriteLine("Element {0} found at position : {1}, using Linear Search ", ele, (i + 1));
                    return;
                }
            }
            Console.WriteLine("Element {0} NOT found", ele);
        }

        public void BinarySearchIterative(int[] arr, int ele)
        {
            int beg = 0, end = (arr.Length - 1), mid;

            while (beg <= end)
            {
                mid = ((beg + end) / 2);

                if (arr[mid] == ele)
                {
                    Console.WriteLine("Element {0} found at position : {1}, using Iterative Binary Search ", ele, (mid + 1));
                    return;
                }
                else if (ele > arr[mid])
                    beg = (mid + 1);
                else
                    end = (mid - 1);
            }
            Console.WriteLine("Element {0} NOT found", ele);
        }

        public void BinarySearchRecursive(int[] arr, int ele, int beg, int end)
        {
            if (beg > end)
                Console.WriteLine("Element {0} NOT found", ele);
            else
            {
                int mid = ((beg + end) / 2);

                if (arr[mid] == ele)
                {
                    Console.WriteLine("Element {0} found at position : {1}, using Recursive Binary Search", ele, (mid + 1));
                    return;
                }
                else if (ele > arr[mid])
                    BinarySearchRecursive(arr, ele, (mid + 1), end);
                else
                    BinarySearchRecursive(arr, ele, beg, (mid - 1));
            }
        }

        public void display(int[] arr) => Array.ForEach(arr, element => Console.WriteLine(element));
    }
}