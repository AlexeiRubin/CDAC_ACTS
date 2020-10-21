package com.app.tasks;

import static com.app.utils.CollectionUtils.sortStudentsSubjectListMap;
import static com.app.utils.IOUtils.storeStudentDetails;
import static java.lang.Thread.currentThread;

import java.util.Map;

import com.app.entity.Student;

public class StudentSortSubjectTask implements Runnable {

	private Map<String, Student> studentDetails;
	private String fileName;

	public StudentSortSubjectTask(Map<String, Student> studentDetails, String fileName) {
		this.studentDetails = studentDetails;
		this.fileName = fileName;
	}

	@Override
	public void run() {
		try {
			synchronized (studentDetails) {
				storeStudentDetails(sortStudentsSubjectListMap(studentDetails), fileName);
			}
		} catch (Exception e) {
			System.out.println(currentThread().getName() + " error " + e);
		}
	}
}