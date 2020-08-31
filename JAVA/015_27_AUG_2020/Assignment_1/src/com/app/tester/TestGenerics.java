package com.app.tester;

import static com.app.utils.Generics.displayAnyCollection;
import static com.app.utils.Generics.removeAlternateElementsInAnyCollectionType;
import static com.app.utils.Generics.squareRootOfSumOfNumbersInAnyCollectionType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Vector;

public class TestGenerics {

	public static void main(String[] args) {

		ArrayList<Double> al = new ArrayList<>(Arrays.asList(0.7, 1.4, 2.1, 2.8, 3.5, 4.2, 4.9, 5.6, 6.3, 7.0));

		LinkedList<String> ll = new LinkedList<>(Arrays.asList("lol", "lmao", "rofl", "roflmao"));

		Vector<Float> vect = new Vector<>(Arrays.asList(0.7f, 1.4f, 2.1f, 2.8f));

		HashSet<Integer> hs = new HashSet<>(Arrays.asList(7, 14, 21, 28, 35, 42, 49, 56, 63, 70));

		LinkedHashSet<Integer> lhs = new LinkedHashSet<>(Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10));

		System.out.println("Testing displayAnyCollection method");

		System.out.println("ArrayList");
		displayAnyCollection(al);
		System.out.print("\n");

		System.out.println("LinkedList");
		displayAnyCollection(ll);
		System.out.print("\n");

		System.out.println("Vector");
		displayAnyCollection(vect);
		System.out.print("\n");

		System.out.println("HashSet");
		displayAnyCollection(hs);
		System.out.print("\n");

		System.out.println("LinkedHashSet");
		displayAnyCollection(lhs);
		System.out.print("\n");

		System.out.println("Testing squareRootOfSumOfNumbersInAnyCollectionType method");

		System.out.println("ArrayList");
		System.out.println(squareRootOfSumOfNumbersInAnyCollectionType(al));
		System.out.print("\n");

		System.out.println("Vector");
		System.out.println(squareRootOfSumOfNumbersInAnyCollectionType(vect));
		System.out.print("\n");

		System.out.println("HashSet");
		System.out.println(squareRootOfSumOfNumbersInAnyCollectionType(hs));
		System.out.print("\n");

		System.out.println("LinkedHashSet");
		System.out.println(squareRootOfSumOfNumbersInAnyCollectionType(lhs));
		System.out.print("\n");

		System.out.println("Testing removeAlternateElementsInAnyCollectionType method");

		System.out.println("ArrayList");
		removeAlternateElementsInAnyCollectionType(al);
		displayAnyCollection(al);
		System.out.print("\n");

		System.out.println("LinkedList");
		removeAlternateElementsInAnyCollectionType(ll);
		displayAnyCollection(ll);
		System.out.print("\n");

		System.out.println("Vector");
		removeAlternateElementsInAnyCollectionType(vect);
		displayAnyCollection(vect);
		System.out.print("\n");

		System.out.println("HashSet");
		removeAlternateElementsInAnyCollectionType(hs);
		displayAnyCollection(hs);
		System.out.print("\n");

		System.out.println("LinkedHashSet");
		removeAlternateElementsInAnyCollectionType(lhs);
		displayAnyCollection(lhs);
	}
}