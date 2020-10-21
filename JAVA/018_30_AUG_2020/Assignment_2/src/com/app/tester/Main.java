package com.app.tester;

import java.util.Scanner;

import com.app.core.EvenThread;
import com.app.core.OddThread;

public class Main {

	public static void main(String[] args) throws InterruptedException {

		try (Scanner in = new Scanner(System.in)) {

			System.out.println("Enter the Start Value");
			int startValue = in.nextInt();

			System.out.println("\nEnter the End Value");
			int endValue = in.nextInt();

			EvenThread even = new EvenThread(startValue, endValue);
			OddThread odd = new OddThread(startValue, endValue);

			Thread t_id1 = new Thread(even, "even");
			Thread t_id2 = new Thread(odd, "odd");

			t_id1.start();
			t_id2.start();

			t_id1.join();
			t_id2.join();
		}
	}
}