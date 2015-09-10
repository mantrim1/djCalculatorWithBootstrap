/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Mark
 */
public class AreaCalculatorService {
    private final String CIRCLE = "circle";
    private final String RECTANGLE = "rectangle";
    private final String TRIANGLE = "triangle";
    private double dHeight;
    private double dWidth;
    private double dRadius;
    private double area;
    private double output;
 
    
    private final double convertToDouble(String val) throws Exception{
        
        Double dVal = Double.parseDouble(val);
        System.out.println("~DVAL = "+dVal+" ~");
        return dVal;
    }
    
    private final double calculateRectangleArea(String height, String width) throws Exception{
        
    
        
            dHeight = this.convertToDouble(height);
         dWidth = this.convertToDouble(width);
         area = (dWidth * dHeight);
         return area;
        
    }
    private final double calculateTriangleArea(String height, String width) throws Exception{
       
         dHeight = this.convertToDouble(height);
         dWidth = this.convertToDouble(width);
         
         area = ((dWidth * dHeight)/2);
         
         return area;
    }
    private final double calculateCircleArea(String radius)throws Exception{
        dRadius = this.convertToDouble(radius);
        
        area = (dRadius*dRadius) * Math.PI;
        
         return area;
    }
    public final double calculateArea(String radius, String height, String width, String shape)throws Exception{
         switch (shape.toLowerCase()) {
             case RECTANGLE:
                
                    output =  this.calculateRectangleArea(height, width);
                 
                 break;
             case TRIANGLE:
                 
                     output = this.calculateTriangleArea(height, width);
               
                 break;
             case CIRCLE:
                    
                      output =  this.calculateCircleArea(radius);
                    break;
          
         }
        
         return output;
    }
    
    
}
