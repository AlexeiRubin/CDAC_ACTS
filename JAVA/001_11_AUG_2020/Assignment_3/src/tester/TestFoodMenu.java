package tester;

import com.app.*;

import java.util.*;

public class TestFoodMenu {
	
	private static Scanner in = new Scanner(System.in);
	
	public static void main(String args[]) {
		
		FoodMenu menu = new FoodMenu();
		
		int choice = 0, qty = 0, cost = 0;
		
		while(true) {
			
			System.out.println("Enter 1 for Dosa");
			System.out.println("Enter 2 for Samosa");
			System.out.println("Enter 3 for Poha");
			System.out.println("Enter 4 for Upma");
			System.out.println("Enter 5 for Sandwich");
			System.out.println("Enter 6 for Tea");
			System.out.println("Enter 7 for Coffee");
			System.out.println("Enter 8 for Parantha");
			System.out.println("Enter 9 for Maggi");
			System.out.println("Enter 10 for Uttapam");
			System.out.println("Enter (-1) to STOP Ordering");
			
			choice = in.nextInt();
			
			if(choice == (-1))
				break;
			
			System.out.println("Enter the Quantity");
			
			qty = in.nextInt();
			
			cost += menu.generateBill(choice, qty);
		}
		System.out.println("The Total Bill is : " + cost);
	}
}