import java.util.Scanner;

public class a10_java_static_initializer_block {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int parallelogramBase = scan.nextInt();
        int parallelogramHeight = scan.nextInt();
        int area = parallelogramBase * parallelogramHeight;
        if (area > 0 && parallelogramBase > 0 && parallelogramHeight > 0)
            System.out.print(area);
        else
            System.out.print("java.lang.Exception: Breadth and height must be positive");
        scan.close();
    }
}
