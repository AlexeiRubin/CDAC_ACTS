package com.app.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import com.app.entity.core.Employee;

public class IOUtils {

	@SuppressWarnings("unchecked")
	public static ArrayList<Employee> readEmployeeDetails() throws IOException, ClassNotFoundException {

		File fileRef = new File("EmployeeDetails");
		if (fileRef.exists() && fileRef.isFile() && fileRef.canRead()) {
			try (ObjectInputStream in = new ObjectInputStream(new FileInputStream(fileRef))) {
				return (ArrayList<Employee>) in.readObject();
			}
		}
		return new ArrayList<Employee>();
	}

	public static void writeEmployeeDetails(ArrayList<Employee> employeeDetails) throws IOException {

		try (ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("EmployeeDetails"))) {
			out.writeObject(employeeDetails);
		}
	}
}