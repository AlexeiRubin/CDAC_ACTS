package com.app;

import java.util.*;

public class Calculator {

	private static double m_firstNumber, m_secondNumber;
	
	public Calculator() { m_firstNumber = m_secondNumber = 0; }
	
	public void setFirstNumber(double firstNumber) { m_firstNumber = firstNumber; }
			
	public void setSecondNumber(double secondNumber) { m_secondNumber = secondNumber; }
			
	public double getFirstNumber() { return m_firstNumber; }
			
	public double getSecondNumber() { return m_secondNumber; }
			
	public double Add() { return (m_firstNumber + m_secondNumber); }
			
	public double Subtract() { return (m_firstNumber - m_secondNumber); }
			
	public double Multiply() {  return (m_firstNumber * m_secondNumber); }
			
	public double Divide() {
		
		if(m_secondNumber == 0)
			return 0;
		else
			return (m_firstNumber / m_secondNumber);
	}
}