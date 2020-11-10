package dependency;

public class HTTPTransport implements Transport {

	@Override
	public void informBank(byte[] data) {
		System.out.println("Transaction Successful!\n");
	}

	@Override
	public String toString() {
		return "HttpTransport";
	}
}