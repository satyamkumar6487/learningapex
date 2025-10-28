public with sharing class MyRectangle {
    public Double length;
    public Double breadth;

    public MyRectangle(Double l, Double b) {
        length = l;
        breadth = b;
    }

    public Double area() {
        return length * breadth;
    }

    public Double perimeter() {
        return 2 * (length + breadth);
    }

    public static void displayResult() {
        MyRectangle r = new MyRectangle(5, 3);
        System.debug('Area: ' + r.area());
        System.debug('Perimeter: ' + r.perimeter());
    }
}
