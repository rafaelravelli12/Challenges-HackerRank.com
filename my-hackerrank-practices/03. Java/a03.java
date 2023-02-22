import java.util.Scanner;

public class a03 {
  
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int a = scan.nextInt();
        scan.close();    
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
