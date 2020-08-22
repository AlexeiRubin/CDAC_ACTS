package com.app.specification;

import com.app.core.Employee;

public interface Stack {
	int STACK_SIZE = 2;

	boolean isFull();

	boolean isEmpty();

	void push(Employee employeeEntity);

	void pop();
}