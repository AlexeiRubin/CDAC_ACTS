package com.app.geometry;

import java.util.*;
import java.lang.math;

class Point2D {
    
    private double x, y;
    
    double getX() { return this.x; }
    
    double getY() { return this.y; }
    
    void setX(double x) { this.x = x; }
    
    void setY(double y) { this.y = y; }
    
    Point2D(double x, double y) {
        this.x = x;
        this.y = y;
    }
    
    public String getDetails() {
        return "(x,y) co-ordinate pair is : ("+ x + ", " + y + ")";
    }
    
    public boolean isEqual(Point2D pointObjParam) {
        if( (this.x == pointObjParam.x) && (this.y == pointObjParam.y) )
            return true;
        else
            return false;
    }
    
    public Point2D createNewPointViaOffset(double xOffset, double yOffset) {
        Point2D newPoint = new Point2D( (this.x + xOffset), (this.y + yOffset));
        return newPoint;
    }
    
    public double calculateDistance(Point2D pointObjParam) {
        return Math.sqrt(Math.pow((pointObjParam.x - this.x), 2) + Math.pow((pointObjParam.y - this.y), 2));
    }
}