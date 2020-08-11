package com.app;

import java.util.*;

public class FoodMenu {

	public static Map<Integer, Integer> menuMap = new HashMap<Integer, Integer>();
		
	public FoodMenu() {
		
		menuMap.put(1, 30);
		menuMap.put(2, 10);
		menuMap.put(3, 20);
		menuMap.put(4, 25);
		menuMap.put(5, 25);
		menuMap.put(6, 10);
		menuMap.put(7, 15);
		menuMap.put(8, 30);
		menuMap.put(9, 40);
		menuMap.put(10, 40);
	}
	
	public static int generateBill(int item, int quantity) {
		
		return (menuMap.get(item) * quantity);
	}
}