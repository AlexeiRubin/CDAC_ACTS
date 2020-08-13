package com.test;

import com.app.geometry.*;
import java.util.*;

public class TestPoint {
    
    private static Scanner in = new Scanner(System.in);
    
	public static void main(String[] args) {
	    System.out.println("Enter the (x, y) co-ordinates of Point P1");
	    Point2D p1 = new Point2D(in.nextDouble(), in.nextDouble());
	    
	    System.out.println("\nEnter the (x, y) co-ordinates of Point P2");
	    Point2D p2 = new Point2D(in.nextDouble(), in.nextDouble());
	    
	    System.out.println("\nPoint P1 : " + p1.getDetails());
	    System.out.println("Point P2 : " + p2.getDetails());
	    
	    System.out.println( (p1.isEqual(p2)) ? ("\nPoints are Same") : ("\nPoints are Different") );
	    
	    System.out.println("\nEnter the (x, y) co-ordinate offsets from point P1 to create new Point P3");
	    double xOffset = in.nextDouble();
	    double yOffset = in.nextDouble();
	    
	    Point2D p3 = p1.createNewPointViaOffset(xOffset, yOffset);
	    System.out.println("Point P3 : " + p3.getDetails());
	    
	    System.out.println("\nDistance between Point P1 and Point P2 is : " + p1.calculateDistance(p2) + " units");
	    
	    in.close();
	}
}