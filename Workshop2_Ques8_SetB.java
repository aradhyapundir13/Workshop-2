package workshop2;

import java.util.Scanner;

public class Workshop2_Ques8_SetB {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a non-negative integer: ");

        try {
            int number = scanner.nextInt();
            long result = factorial(number);
            System.out.println("Factorial of the given number " + number + " is " + result);
        } catch (IllegalArgumentException e) {
            System.err.println("An Error Has Occurred: " + e.getMessage());
        } catch (StackOverflowError e) {
            System.err.println("An Error Has Occurred: Stack overflow due to deep recursion.");
        } catch (Exception e) {
            System.err.println("An Error Has Occurred: Invalid input. Please enter a valid non-negative integer.");
        } finally {
            scanner.close();
        }
    }
    public static long factorial(int n) {
        if (n < 0) {
            throw new IllegalArgumentException("Number must be non-negative.");
        }
        if (n == 0 || n == 1) {
            return 1;
        }
        return n * factorial(n - 1);
    }
}
