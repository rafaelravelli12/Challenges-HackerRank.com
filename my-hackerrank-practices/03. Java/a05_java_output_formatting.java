import java.util.Scanner;

public class a05_java_output_formatting {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("================================");
        for(int i=0;i<3;i++){
            String s1 = sc.next();
            int x =sc.nextInt();
            System.out.print(s1);
        	int a = 15 - s1.length();
        	for (int j = 1; j<=a; j++){
        		System.out.print(" ");
        	}
        	if (x>=0 && x<=9)
    			System.out.print("00" + x);
    		else if (x>=10 && x<=99)
    			System.out.print("0" + x);
    		else 
    			System.out.print(x);
        System.out.println();
        }
        sc.close();
        System.out.println("================================");
    }
}
