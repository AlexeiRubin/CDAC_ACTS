package tester;

import com.app.*;
import java.util.*;

public class TestCustomer {
    
    private static Scanner in = new Scanner(System.in);
    
	public static void main(String[] args) {
	    
	    System.out.println("Enter Customer Name, Email ID, Age and Credit Limit");
	    Customer c1 = new Customer(in.next(), in.next(), in.nextInt(), in.nextDouble());
	    in.nextLine();
	    
	    Customer c2 = new Customer();
	    
	    System.out.println("Enter Customer Name, Email ID and Age");
	    Customer c3 = new Customer(in.next(), in.next(), in.nextInt());
	    in.nextLine();	    

	    System.out.println("\nThe Customer Details are : ");
	    System.out.println(c1 + "\n");
	    System.out.println(c2 + "\n");
	    System.out.println(c3 + "\n");
	    
	    System.out.println("\nCustomer Name & Credit Limtit : ");
	    System.out.println(c1.getDetails() + "\n");
	    System.out.println(c2.getDetails() + "\n");
	    System.out.println(c3.getDetails() + "\n");
	    
	    System.out.println("Enter New Credit Limit for Customer C3");
	    double newCreditLimit = in.nextDouble();
	    in.nextLine();
	    c3.setCustomerCreditLimit(c3.getCustomerCreditLimit() + newCreditLimit);
	    
	    System.out.println("\nNew Credit Limit for Customer C3 is : " + c3.getCustomerCreditLimit() + "\n");
	    
	    in.close();
	}
}
