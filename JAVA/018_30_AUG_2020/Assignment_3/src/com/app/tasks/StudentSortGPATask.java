package com.app.tasks;

import static com.app.services.StudentSortService.sortStudentsGPAListMap;
import static com.app.utils.IOUtils.storeStudentDetails;
import static java.lang.Thread.currentThread;

import java.util.Map;

import com.app.entity.Student;

public class StudentSortGPATask implements Runnable {

	private Map<String, Student> map;
	private String fileName;

	public StudentSortGPATask(Map<String, Student> map, String fileName) {
		this.map = map;
		this.fileName = fileName;
	}

	@Override
	public void run() {
		try {
			storeStudentDetails(sortStudentsGPAListMap(map), fileName);
		} catch (Exception e) {
			System.out.println(currentThread().getName() + " error " + e);
		}
	}
}