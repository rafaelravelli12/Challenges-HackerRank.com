import java.util.Scanner;

public class a08_java_datatypes {
	
    public static void main(String []argh) {
        Scanner scan = new Scanner(System.in);
        int query = scan.nextInt();
        for(int i = 0; i < query; i++) {
            try {
                long x = scan.nextLong();
                System.out.println(x + " can be fitted in:");               
                if (x >= -(Math.pow(2, 7)) && x <= (Math.pow(2, 7) -1))
                	System.out.println("* byte");
                if (x >= -(Math.pow(2, 15)) && x <= (Math.pow(2, 15) -1))
                	System.out.println("* short");
                if (x >= -(Math.pow(2, 31)) && x <= (Math.pow(2, 31) -1))
                	System.out.println("* int");
                if (x >= -(Math.pow(2, 63)) && x <= (Math.pow(2, 63) -1))
                	System.out.println("* long");
            }
            catch(Exception e) {
                System.out.println(scan.next()+" can't be fitted anywhere.");
            }
        }
        scan.close();
    }
}
