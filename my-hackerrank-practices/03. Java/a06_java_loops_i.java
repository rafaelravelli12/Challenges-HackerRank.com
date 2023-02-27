import java.util.Scanner;

public class a06_java_loops_i {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int number = scan.nextInt();
        scan.close();
        for(int i = 1; i < 10; i++){
            System.out.println(number + " x " + i + " = " + number * i);
        }
    }
}
