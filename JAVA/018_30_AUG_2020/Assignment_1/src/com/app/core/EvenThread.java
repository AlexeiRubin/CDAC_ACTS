package com.app.core;

public class EvenThread extends Thread {

	private int startValue, endValue;

	public EvenThread(String threadName, int startValue, int endValue) {
		super(threadName);
		this.startValue = startValue;
		this.endValue = endValue;
		start();
	}

	@Override
	public void run() {
		try {
			for (int i = startValue; i <= endValue; i++) {
				if (i % 2 == 0) {
					System.out.println("Even : " + i);
				}
				Thread.sleep(500);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}