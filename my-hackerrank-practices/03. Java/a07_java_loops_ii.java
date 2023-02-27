import java.util.Scanner;

public class a07_java_loops_ii {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int query = scan.nextInt();
		for (int i = 0; i < query; i++) {
			int number01 = scan.nextInt();
			int number02 = scan.nextInt();
			int number03 = scan.nextInt();
			int sum = number01 + number02;
			System.out.print(sum + " ");
			
			for (int j = 1; j < number03; j++) {
				sum = sum + (int) Math.pow(2,j) * number02;
				System.out.print(sum + " ");
			}
		System.out.println();
		}
		scan.close();
	}
}
