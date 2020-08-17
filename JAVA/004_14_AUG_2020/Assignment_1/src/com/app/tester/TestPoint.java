package com.app.tester;

import com.app.geometry.*;
import java.util.*;

public class TestPoint {
    
    	private static Scanner in = new Scanner(System.in);
    
	public static void main(String[] args) {
		System.out.println("Enter the number of points to be plotted");
		
		Point2D[] pointCoordinates = new Point2D[in.nextInt()];
		
		for(int i = 0 ; i < pointCoordinates.length ; ++i)
			pointCoordinates[i] = new Point2D();
		
		while(true) {
			System.out.println("\nEnter 1 to Plot A New Point");
			System.out.println("Enter 2 to Display All Plotted Points.");
			System.out.println("Enter 3 to Calculate Distance Between Two Points.");
			System.out.println("Enter 10 to EXIT");
			int choice = in.nextInt();
			
			if(choice == 10)
				break;
			
			switch(choice) {
				case 1 :
					System.out.println("\nEnter the Plot Index");
					int pointPlotIndex = in.nextInt();
						
					if( (pointPlotIndex > (pointCoordinates.length - 1)) || (pointPlotIndex < 0) )
							System.out.println("Invalid Index");
					else {
						if(pointCoordinates[pointPlotIndex].isEmpty()) {
							System.out.println("\nEnter the (x, y) co-ordinates of the New Point");
							Point2D refObj = new Point2D(in.nextDouble(), in.nextDouble());
							pointCoordinates[pointPlotIndex] = refObj;
						}
						else
							System.out.println("\nA Point already exits on the given plot index.");
					}
						
					break;
			
				case 2 :
					System.out.println("\nPlotted Points are : ");
						
					for(Point2D itr : pointCoordinates) {
						if(!itr.isEmpty())
							System.out.println(itr.getDetails());
					}
						
					break;
			
				case 3 :
					System.out.println("\nEnter the Plot Index of First Point");
					int firstPointPlotIndex = in.nextInt();
						
					if( (firstPointPlotIndex > (pointCoordinates.length - 1)) || (firstPointPlotIndex < 0) ) {
						System.out.println("Invalid Index");
						break;
					}
						
					if(pointCoordinates[firstPointPlotIndex].isEmpty()) {
						System.out.println("\nIndex has NO Plotted Point");
						break;
					}
						
					System.out.println("\nEnter the Plot Index of Second Point");
					int secondPointPlotIndex = in.nextInt();
						
					if( (secondPointPlotIndex > (pointCoordinates.length - 1)) || (secondPointPlotIndex < 0) ) {
						System.out.println("Invalid Index");
						break;
					}
						
					if(pointCoordinates[secondPointPlotIndex].isEmpty()) {
						System.out.println("\nIndex has NO Plotted Point");
						break;
					}
						
					System.out.println("\nDistance between First Point and Second Point is : " + pointCoordinates[firstPointPlotIndex].calculateDistance(pointCoordinates[secondPointPlotIndex]) + " units");
					
					break;
			}
		}
	    in.close();
	}
}
