import java.util.Scanner;

public class a10_java_static_initializer_block {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner scanner = new Scanner(System.in);
        int b = scanner.nextInt();
        int h = scanner.nextInt();
        int a = b * h;
        if (a > 0 && b > 0 && h > 0)
            System.out.print(a);
        else
            System.out.print("java.lang.Exception: Breadth and height must be positive");
        scanner.close();
    }
}
