package com.app.entity;

import java.io.Serializable;
import java.time.LocalDate;

public class Student implements Serializable {

	private static final long serialVersionUID = 1L;
	private String studentRollNo;
	private String studentName;
	private LocalDate studentDOB;
	private Subject studentSubject;
	private double studentGPA;
	private Address studentAddress;

	public Student(String studentRollNo, String studentName, LocalDate studentDOB, Subject studentSubject,
			double studentGPA) {
		this.studentRollNo = studentRollNo;
		this.studentName = studentName;
		this.studentDOB = studentDOB;
		this.studentSubject = studentSubject;
		this.studentGPA = studentGPA;
	}

	public String getStudentRollNo() {
		return studentRollNo;
	}

	public void setStudentRollNo(String studentRollNo) {
		this.studentRollNo = studentRollNo;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public LocalDate getStudentDOB() {
		return studentDOB;
	}

	public void setStudentDOB(LocalDate studentDOB) {
		this.studentDOB = studentDOB;
	}

	public Subject getStudentSubject() {
		return studentSubject;
	}

	public void setStudentSubject(Subject studentSubject) {
		this.studentSubject = studentSubject;
	}

	public double getStudentGPA() {
		return studentGPA;
	}

	public void setStudentGPA(double studentGPA) {
		this.studentGPA = studentGPA;
	}

	public Address getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(Address studentAddress) {
		this.studentAddress = studentAddress;
	}

	@Override
	public String toString() {
		return "ROLL NUMBER : " + studentRollNo + ", NAME : " + studentName + ", DATE OF BIRTH : " + studentDOB
				+ ", SUBJECT : " + studentSubject + ", GPA : " + studentGPA + ", ADDRESS : " + studentAddress;
	}
}