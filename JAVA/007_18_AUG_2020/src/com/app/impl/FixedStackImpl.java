package com.app.impl;

import com.app.core.Employee;
import com.app.specification.Stack;

public class FixedStackImpl implements Stack {

	private static int top;
	private Employee[] employeeDetailStack;

	public FixedStackImpl() {
		top = (-1);
		employeeDetailStack = new Employee[STACK_SIZE];
	}

	@Override
	public boolean isFull() {
		if (top == employeeDetailStack.length) {
			--top;
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
		if (isFull()) {
			System.out.println("STACK OVERFLOW");
			return;
		}
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
}