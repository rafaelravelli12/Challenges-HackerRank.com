import java.io.*;

public class a06_java_loops_i {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(bufferedReader.readLine().trim());
        bufferedReader.close();
        for (int j = 1; j<=10; j++){
            System.out.println(N+" x "+j+" = "+N*j);
        }
    }
}
