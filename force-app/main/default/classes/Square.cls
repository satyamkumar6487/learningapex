public class Square {
   

// constructor to initialize side of square
    Integer a;
    Double area;

    // for 2nd method perimeter
    static  Double perimeter;



public Square( Integer a ) {
            this.a = a;

    }


   // Method to calculate area of square
    public  void area() {
     
        area = a * a;
        System.debug('Area of Square: ' + area);

    }

    // Method with perimeter of square

public  static void perimeter(Integer a ) {
      
        perimeter = 4 * a;
        System.debug('Perimeter of Square: ' + perimeter);
    }

    // Static method to display results
    public static void displayResult( ) {
        Square s = new Square(10);
        s.area();
        perimeter(100);
    }


}