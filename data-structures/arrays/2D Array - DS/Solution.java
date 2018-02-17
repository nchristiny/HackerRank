/** Input Format
Given a 6x6 2D Array A, calculate the hourglass sum for every hourglass in A, then print the maximum hourglass sum.

There are 6 lines of input, where each line contains 6 space-separated integers describing 2D Array A; every value in A will be in the inclusive range of -9 to 9.

We define an hourglass in A to be a subset of values with indices falling in this pattern in A's graphical representation:

a b c
  d
e f g

Output Format
Print the largest (maximum) hourglass sum found in A.

Sample Input

1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0

Sample Output

19

 */
import java.io.*;
import java.util.*;

public class Solution {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int arr[][] = new int[6][6];
		for(int i = 0; i < 6; i++) {
			for(int j = 0; j < 6; j++) {
				arr[i][j] = sc.nextInt();
			}
		}

		int max = 0;
		int sum = 0;
		for(int i = 0; i <= 3; i++) {
			for(int j = 0; j <=  3; j++) {
				sum = arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j +1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2];
				if (sum > max) {
					max = sum;
				}
			}
		}
		System.out.println(max);
	}
}
