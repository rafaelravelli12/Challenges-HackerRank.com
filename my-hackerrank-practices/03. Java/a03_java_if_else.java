import java.util.Scanner;
import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;


public class a03_java_if_else {
	
    private static final Scanner scanner = new Scanner(System.in);
    
    public static void main(String[] args) {
        int a = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
        scanner.close();    
        if(a%2!=0){
	            System.out.println("Weird");
	    }
        else {
        	if (a>=6 && a<=20){	            
        		System.out.println("Weird");
        	}
        	else {
        		System.out.println("Not Weird");
        	}
        }
    }
}
