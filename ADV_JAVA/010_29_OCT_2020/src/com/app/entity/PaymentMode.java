package com.app.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Embeddable
public class PaymentMode {

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private PaymentType paymentType;

	private double paymentAmount;

	private LocalDate paymentDate;

	public PaymentMode() {
		System.out.println("In Default Constructor of Embeddable PaymentMode");
	}

	public PaymentMode(PaymentType paymentType, double paymentAmount, LocalDate paymentDate) {
		this.paymentType = paymentType;
		this.paymentAmount = paymentAmount;
		this.paymentDate = paymentDate;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(PaymentType paymentType) {
		this.paymentType = paymentType;
	}

	public double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public LocalDate getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(LocalDate paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "PAYMENT TYPE : " + paymentType + ", AMOUNT : " + paymentAmount + ", DATE : " + paymentDate;
	}
}