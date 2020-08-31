package com.app.utils;

import java.util.Collection;
import java.util.Iterator;

public class Generics {

	public static void displayAnyCollection(Collection<?> theCollection) {
		for (Object obj : theCollection)
			System.out.println(obj);
	}

	public static double squareRootOfSumOfNumbersInAnyCollectionType(Collection<? extends Number> theNumbers) {
		double sum = 0;
		for (Number n : theNumbers) {
			sum += n.doubleValue();
		}
		return Math.sqrt(sum);
	}

	public static void removeAlternateElementsInAnyCollectionType(Collection<?> theCollection) {
		Iterator<?> itr_theCollection = theCollection.iterator();
		boolean remove = false;
		while (itr_theCollection.hasNext()) {
			itr_theCollection.next();
			if (remove)
				itr_theCollection.remove();
			remove = !remove;
		}
	}
}