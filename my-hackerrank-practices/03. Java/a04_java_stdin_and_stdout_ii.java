import java.util.Scanner;

public class a04_java_stdin_and_stdout_ii {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int number01 = scan.nextInt();
        double number02 = scan.nextDouble();
        scan.nextLine();
        String text = scan.next();
        scan.close();  

        System.out.println("String: " + text);
        System.out.println("Double: " + number02);
        System.out.println("Int: " + number01);
    }
}
