import java.io.*;
import java.util.*;

public class a07_java_loops_ii {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int t = scan.nextInt();
		for (int i = 0; i < t; i++)
		{
			int a = scan.nextInt();
			int b = scan.nextInt();
			int n = scan.nextInt();
			int sum = a + b;
			System.out.print(sum + " ");
			
			for (int j = 1; j < n; j++)
			{
				sum = sum + b * (int) Math.pow(2,j);
				System.out.print(sum + " ");
			}
		System.out.println();
		}
		scan.close();
	}
}
