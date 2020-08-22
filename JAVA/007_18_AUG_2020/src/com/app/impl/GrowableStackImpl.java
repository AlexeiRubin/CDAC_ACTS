package com.app.impl;

import com.app.core.Employee;
import com.app.specification.Stack;

public class GrowableStackImpl implements Stack {

	private static int top;
	private Employee[] employeeDetailStack;

	public GrowableStackImpl() {
		top = (-1);
		employeeDetailStack = new Employee[STACK_SIZE];
	}

	@Override
	public boolean isFull() {
		if (top == employeeDetailStack.length) {
			return true;
		} else
			return false;
	}

	@Override
	public boolean isEmpty() {
		if (top == (-1))
			return true;
		else
			return false;
	}

	@Override
	public void push(Employee employeeEntity) {
		++top;
		if (isFull())
			resizeStack();

		employeeDetailStack[top] = employeeEntity;

	}

	@Override
	public void pop() {
		if (isEmpty())
			System.out.println("STACK IS EMPTY");
		else {
			System.out.println(employeeDetailStack[top]);
			--top;
		}
	}

	private void resizeStack() {
		Employee[] objRef = new Employee[STACK_SIZE * 2];

		for (int i = 0; i < employeeDetailStack.length; ++i)
			objRef[i] = employeeDetailStack[i];

		employeeDetailStack = objRef;
	}
}