import java.util.Scanner;

public class a13_java_strings_introduction {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String text01 = scan.next();
        String text02 = scan.next();
        scan.close();
        
        int text01Length = text01.length();
        int text02Length = text02.length();

        System.out.println(text01Length + text02Length);
        System.out.println(text01.compareTo(text02)>0?"Yes":"No");
        
        String text01Ajusted = text01.substring(0,1).toUpperCase() + text01.substring(1).toLowerCase();
        String text02Ajusted = text02.substring(0,1).toUpperCase() + text02.substring(1).toLowerCase();
        System.out.println(text01Ajusted + " " + text02Ajusted);
    }
}
