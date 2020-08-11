package usingCMD;

import java.util.*;

public class UsingCMD {

	public static void main(String args[]) {
		
		double sum = 0.0;
		
		for(int i = 0 ; i < args.length ; ++i ) {
			
			sum += Double.parseDouble(args[i]);
		}
		
		if(args.length < 2)
			System.out.println("Error, input less than 2");
		else {
			sum /= args.length;
			System.out.println(sum);
		}
	}
}