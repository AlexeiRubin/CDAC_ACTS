package com.app.tasks;

import static com.app.services.StudentSortService.sortStudentsDoBListMap;
import static com.app.utils.IOUtils.storeStudentDetails;
import static java.lang.Thread.currentThread;

import java.util.Map;

import com.app.entity.Student;

public class StudentSortDOBTask implements Runnable {

	private Map<String, Student> map;
	private String fileName;

	public StudentSortDOBTask(Map<String, Student> map, String fileName) {
		this.map = map;
		this.fileName = fileName;
	}

	@Override
	public void run() {
		try {
			storeStudentDetails(sortStudentsDoBListMap(map), fileName);
		} catch (Exception e) {
			System.out.println(currentThread().getName() + " error " + e);
		}
	}
}