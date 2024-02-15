import java.util.Scanner;

public class a09_java_end_of_file {

    public static void main(String[] args) {          
        Scanner scan = new Scanner(System.in);
        int number = 1;
        while (scan.hasNext()) {
        	System.out.println(number + " " + scan.nextLine());
        	number++;
        }
        scan.close();
    }
}

// doesn't break the loop yet
