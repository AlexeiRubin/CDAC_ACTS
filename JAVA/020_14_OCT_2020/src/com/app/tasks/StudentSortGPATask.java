package com.app.tasks;

import static com.app.utils.CollectionUtils.sortStudentsGPAListMap;
import static com.app.utils.IOUtils.storeStudentDetails;
import static java.lang.Thread.currentThread;

import java.util.Map;

import com.app.entity.Student;

public class StudentSortGPATask implements Runnable {

	private Map<String, Student> studentDetails;
	private String fileName;

	public StudentSortGPATask(Map<String, Student> studentDetails, String fileName) {
		this.studentDetails = studentDetails;
		this.fileName = fileName;
	}

	@Override
	public void run() {
		try {
			synchronized (studentDetails) {
				storeStudentDetails(sortStudentsGPAListMap(studentDetails), fileName);
			}
		} catch (Exception e) {
			System.out.println(currentThread().getName() + " error " + e);
		}
	}
}