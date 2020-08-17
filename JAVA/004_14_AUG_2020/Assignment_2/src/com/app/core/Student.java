package com.app.core;

public class Student {

	private String studentName, studentEmailId;
	private int studentId, studentAge;
	private double studentGPA;

	public static int idCounter = 0;

	public int getStudentId() {
		return studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentEmailId() {
		return studentEmailId;
	}

	public void setStudentEmailId(String studentEmailId) {
		this.studentEmailId = studentEmailId;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	public double getStudentGPA() {
		return studentGPA;
	}

	public void setStudentGPA(double studentGPA) {
		this.studentGPA = studentGPA;
	}

	public Student() {
		this.studentId = 0;
		this.studentName = null;
		this.studentEmailId = null;
		this.studentAge = 0;
		this.studentGPA = 0.0;
	}

	public Student(String studentName, String studentEmailId, int studentAge) {
		this.studentId = ++idCounter;
		this.studentName = studentName;
		this.studentEmailId = studentEmailId;
		this.studentAge = studentAge;
		this.studentGPA = 0.0;
	}

	public String fetchDetails() {
		return "ID: " + studentId + ", NAME : " + studentName + ", EMAIL ID : " + studentEmailId + ", AGE : "
				+ studentAge + ", GPA : " + studentGPA;
	}

	public void computeGpa(double quizScore, double testScore, double assignmentScore) {
		this.studentGPA = (((0.2 * quizScore) + (0.5 * testScore) + (0.3 * assignmentScore)) / 10);
	}
}