package com.app.core;

public class OddThread implements Runnable {

	private int startValue, endValue;

	public OddThread(int startValue, int endValue) {
		this.startValue = startValue;
		this.endValue = endValue;
	}

	@Override
	public void run() {
		try {
			for (int i = startValue; i <= endValue; i++) {
				if (i % 2 != 0) {
					System.out.println("Odd : " + i);
				}
				Thread.sleep(500);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}