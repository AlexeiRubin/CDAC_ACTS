package dependent;

import dependency.Transport;

public class ATMImpl implements ATM {

	private Transport myTransport;
	private double cash;

	public ATMImpl(double c) {
		cash = c;
	}

	@Override
	public void deposit(double amt) {
		System.out.println("Depositing " + amt);
		byte[] data = ("depositing " + amt).getBytes();
		myTransport.informBank(data);
		cash += amt;
	}

	@Override
	public void withdraw(double amt) {
		System.out.println("Withdrawing " + amt);

		if (cash >= amt) {
			cash -= amt;
			byte[] data = ("withdrawing " + amt).getBytes();
			myTransport.informBank(data);
		} else
			System.out.println("OUT OF CASH. Try Again Later!\n");
	}

	@Override
	public void cashInATM() {
		System.out.println("Cash in ATM: " + cash);
		byte[] data = ("Cash In ATM :" + cash).getBytes();
		myTransport.informBank(data);
	}

	public void setMyTransport(Transport myTransport) {
		this.myTransport = myTransport;
	}

	public void init() {
		System.out.println("in init " + myTransport + "\n");
	}

	public void destroy() {
		System.out.println("in destroy " + myTransport);
	}
}