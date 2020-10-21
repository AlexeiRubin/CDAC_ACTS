package com.app.utils;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import com.app.entity.Student;

public class IOUtils {

	public static void storeStudentDetails(Collection<Student> students, String fileName) throws IOException {

		try (PrintWriter pw = new PrintWriter(new FileWriter(fileName))) {

			for (Student s : students) {
				pw.println(s);
				pw.println();
			}
		}
	}
}