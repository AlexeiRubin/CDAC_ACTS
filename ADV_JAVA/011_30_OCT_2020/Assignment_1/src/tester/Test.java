package tester;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import dependent.ATMImpl;

public class Test {

	public static void main(String[] args) {
		try (ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("config.xml")) {
			ATMImpl atm = context.getBean("atm_impl", ATMImpl.class);

			atm.deposit(1000);
			atm.cashInATM();

			atm.withdraw(2000);
			atm.cashInATM();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}