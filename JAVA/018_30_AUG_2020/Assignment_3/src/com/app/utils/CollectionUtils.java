package com.app.utils;

import static com.app.entity.Subject.BASH;
import static com.app.entity.Subject.C;
import static com.app.entity.Subject.CPP;
import static com.app.entity.Subject.JAVA;
import static com.app.entity.Subject.PYTHON;
import static java.time.LocalDate.parse;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.app.entity.Address;
import com.app.entity.Student;

public class CollectionUtils {

	public static List<Student> populateList() {
		List<Student> students = Arrays.asList(new Student("101A", "A", parse("1990-01-10"), CPP, 7.7),
				new Student("103A", "C", parse("1991-02-11"), JAVA, 7.0),
				new Student("104A", "B", parse("1992-03-12"), C, 9.0),
				new Student("102A", "E", parse("1993-09-12"), PYTHON, 6.5),
				new Student("107A", "D", parse("1989-08-05"), BASH, 6.8),
				new Student("106A", "G", parse("1988-10-06"), CPP, 7.2),
				new Student("105A", "F", parse("1987-11-07"), JAVA, 7.4));

		List<Address> adrs = Arrays.asList(new Address("Sevastopool", "Russia", "111"),
				new Address("BakuCity", "Azerbaijan", "222"), new Address("Karlovy", "Czechia", "333"),
				new Address("Bruges", "Brussels", "444"), new Address("Arnhem", "Netherlands", "555"),
				new Address("Sapporo", "Hokkaido", "666"), new Address("Rotterdam", "SouthHolland", "777"));

		int index = 0;
		for (Student s : students)
			s.setStudentAddress(adrs.get(index++));

		return students;
	}

	public static Map<String, Student> populateMap(List<Student> list) {
		HashMap<String, Student> map = new HashMap<>();

		for (Student s : list)
			map.put(s.getStudentRollNo(), s);

		return map;
	}
}