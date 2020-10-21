package com.app.tester;

import static com.app.utils.CollectionUtils.populateList;
import static com.app.utils.CollectionUtils.sampleDataForMap;

import java.io.DataInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import com.app.entity.Student;
import com.app.entity.Subject;

public class StudentManagementServer {

	public static void main(String[] args) {
		HashMap<String, Student> studentDetailsMap = sampleDataForMap(populateList());

		System.out.println("SERVER : Waiting For Client");

		try (ServerSocket ss = new ServerSocket(7777, 1);
				Socket ds1 = ss.accept();
				ObjectOutputStream out = new ObjectOutputStream(ds1.getOutputStream());
				DataInputStream in = new DataInputStream(ds1.getInputStream())) {

			System.out.println("SERVER : Connection Established");

			try {
				Subject inputSubject = Subject.valueOf(in.readUTF().toUpperCase());

				List<Student> studentDetails;

				studentDetails = studentDetailsMap.values().stream()
						.filter(student -> student.getStudentSubject().equals(inputSubject))
						.filter(student -> student.getStudentGPA() > 7.0).collect(Collectors.toList());

				out.writeObject(studentDetails);

			} catch (IllegalArgumentException e) {
				out.writeObject("Subject Does NOT Exist");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}