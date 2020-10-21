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

			EvenThread t_id1 = new EvenThread("Even", startValue, endValue);
			OddThread t_id2 = new OddThread("Odd", startValue, endValue);

			t_id1.join();
			t_id2.join();
		}
	}
}