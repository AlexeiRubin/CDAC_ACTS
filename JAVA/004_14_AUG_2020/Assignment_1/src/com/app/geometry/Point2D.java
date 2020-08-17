package com.app.geometry;

import java.lang.Math;

public class Point2D {
    
	private boolean pointExistFlag;
    private double x, y;
    
    boolean getPointExistFlag() { return this.pointExistFlag; }
    
    double getX() { return this.x; }
    
    double getY() { return this.y; }
    
    void setPointExistFlag(boolean pointExistFlag) { this.pointExistFlag = pointExistFlag; }
    
    void setX(double x) { this.x = x; }
    
    void setY(double y) { this.y = y; }
    
    public Point2D() {
    	this.pointExistFlag = false;
    	this.x = 0.0;
    	this.y = 0.0;
    }
    
    public Point2D(double x, double y) {
    	this.pointExistFlag = true;
        this.x = x;
        this.y = y;
    }
    
    public String getDetails() {
        return "(x, y) co-ordinate pair is : ("+ x + ", " + y + ")";
    }
    
    public double calculateDistance(Point2D pointObjParam) {
        return Math.sqrt(Math.pow((pointObjParam.x - this.x), 2) + Math.pow((pointObjParam.y - this.y), 2));
    }
    
    public boolean isEmpty() {
    	if(!pointExistFlag)
    		return true;
    	else
    		return false;
    }
}