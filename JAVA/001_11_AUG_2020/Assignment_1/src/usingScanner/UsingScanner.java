package usingScanner;

import java.util.*;

public class UsingScanner {

	public static void main(String args[]) {
		
		Scanner in = new Scanner(System.in);
		
		int count = 0;
		double val = 0.0;
		
		while(in.hasNextDouble()) {
			
			val += in.nextDouble();
			++count;
		}
		
		if(count < 2)
			System.out.println("Error, input less than 2");
		else {
			val /= count;	
			System.out.println(val);
		}
		in.close();
	}
}
