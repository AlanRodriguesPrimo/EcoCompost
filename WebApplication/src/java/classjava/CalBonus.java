/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classjava;


public class CalBonus extends Calculator {
    
    public static float calculatorBPF(float peso){
        float gain;
        gain = (float) (peso * 3.75 - ((peso * 3.75 )* (0.1)) + 25);
        return gain;
    }
    public static float calculatorBPJ(float peso){
        float gain;
        gain = (float) (peso * 3.75 - ((peso * 3.75 )* (0.2)) + 20);
        return gain;
    }
    
}
