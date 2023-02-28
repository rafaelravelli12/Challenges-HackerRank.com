import java.util.Scanner;
import java.util.Locale;
import java.text.NumberFormat;

public class a12_java_currency_formatter {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double payment = scanner.nextDouble();
        scanner.close();

        NumberFormat us = NumberFormat.getCurrencyInstance(Locale.US);
        NumberFormat india = NumberFormat.getCurrencyInstance(new Locale("en", "IN"));
	    NumberFormat china = NumberFormat.getCurrencyInstance(Locale.CHINA);
	    NumberFormat france = NumberFormat.getCurrencyInstance(Locale.FRANCE);
	
	    System.out.println("US: " + us.format(payment));
	    System.out.println("India: " + india.format(payment));
	    System.out.println("China: " + china.format(payment));
	    System.out.println("France: " + france.format(payment));
    }
}

// Only works in JAVA 7 - India didn't working
