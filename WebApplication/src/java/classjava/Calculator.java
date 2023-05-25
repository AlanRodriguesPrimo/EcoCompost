/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classjava;

/**
 *
 * @author pedri
 */
public class Calculator {
    public static float calculatorPF(float peso){
        float gain;
        gain = (float) (peso * 3.75 - ((peso * 3.75 )* (0.1)));
        return gain;
    }
    public static float calculatorPJ(float peso){
        float gain;
        gain = (float) (peso * 3.75 - ((peso * 3.75 )* (0.2)));
        return gain;
    }
}
