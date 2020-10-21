package com.app.tester;

import java.io.DataOutputStream;
import java.io.ObjectInputStream;
import java.net.Socket;
import java.util.Scanner;

public class StudentManagementClient {

	public static void main(String[] args) {

		System.out.println("CLIENT : Enter HostName and PortNumber");

		try (Scanner sc = new Scanner(System.in);
				Socket s_id1 = new Socket(sc.next(), sc.nextInt());
				DataOutputStream out = new DataOutputStream(s_id1.getOutputStream());
				ObjectInputStream in = new ObjectInputStream(s_id1.getInputStream())) {

			sc.nextLine();

			System.out.println("CLIENT : Enter Subject");
			out.writeUTF(sc.next());

			System.out.println(in.readObject());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}