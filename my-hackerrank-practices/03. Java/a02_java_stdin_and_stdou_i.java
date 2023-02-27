import java.util.Scanner;

public class a02_java_stdin_and_stdou_i {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int number01 = scan.nextInt();
        int number02 = scan.nextInt();
        int number03 = scan.nextInt();
        scan.close();

        System.out.println(number01);
        System.out.println(number02);
        System.out.println(number03);
    }
}
