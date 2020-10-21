package com.app.tasks;

import static com.app.utils.CollectionUtils.sortStudentsDoBListMap;
import static com.app.utils.IOUtils.storeStudentDetails;
import static java.lang.Thread.currentThread;

import java.util.Map;

import com.app.entity.Student;

public class StudentSortDOBTask implements Runnable {

	private Map<String, Student> studentDetails;
	private String fileName;

	public StudentSortDOBTask(Map<String, Student> studentDetails, String fileName) {
		this.studentDetails = studentDetails;
		this.fileName = fileName;
	}

	@Override
	public void run() {
		try {
			synchronized (studentDetails) {
				storeStudentDetails(sortStudentsDoBListMap(studentDetails), fileName);
			}
		} catch (Exception e) {
			System.out.println(currentThread().getName() + " error " + e);
		}
	}
}