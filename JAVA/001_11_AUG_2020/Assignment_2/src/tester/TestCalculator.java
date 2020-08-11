package tester;

import com.app.*;

import java.util.*;

public class TestCalculator {
	
	private static Scanner in = new Scanner(System.in);
	
	public static void main(String args[]) {
	
		Calculator calc = new Calculator();
		
		int choice = 0;
		
		while(true) {
		
			System.out.println("Enter Two Numbers");
	
			double a = in.nextDouble();
			calc.setFirstNumber(a);
		
			double b = in.nextDouble();
			calc.setSecondNumber(b);
		
			while(true) {
				
				System.out.println("Enter 1 to ADD");
				System.out.println("Enter 2 to SUBTRACT");
				System.out.println("Enter 3 to MULTIPLY");
				System.out.println("Enter 4 to DIVIDE");
				System.out.println("Enter 5 to ENTER NEW NUMBERS");
				System.out.println("Enter 6 to EXIT");

				choice = in.nextInt();
		
				if(choice == 5)
					break;
				
				if(choice == 6) {
					System.out.println("Exiting the Program");
					break;
				}
		
				switch(choice) {
		
					case 1: System.out.println("Addition is : " + calc.Add());			
							break;
			
					case 2: System.out.println("Subtraction is : " + calc.Subtract());	
							break;
			
					case 3: System.out.println("Multiplication is : " + calc.Multiply());
							break;
			
					case 4: System.out.println("Division is : " + calc.Divide());
							break;
				}
			}
			
			if(choice == 6)
				break;
		}
		in.close();
	}
}