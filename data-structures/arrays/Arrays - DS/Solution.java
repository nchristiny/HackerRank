/** Output Format
 * Print all n integers in array in reverse order as a single line of space-separated integers.
 *
 * Sample Input
 * 4
 * 1 4 3 2
 * Sample Output
 * 2 3 4 1
 */
import java.io.*;
import java.util.*;

public class Solution {
    private int arraySize;

    public Solution(int inputSize) {
        arraySize = inputSize;
    }

    public String getReversedArray(int[] inputArray) {
        String output = "";
        for(int i = inputArray.length - 1; i >= 0; i--) {
            output += inputArray[i] + " ";
        }
        return output;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int size = sc.nextInt();
        Solution mySolution = new Solution(size);
        int[] myArray = new int[size];
        for(int i = 0; i <= size - 1; i++) {
            myArray[i] = sc.nextInt();
        }
        // call to method will not change the array in-place
        System.out.println(mySolution.getReversedArray(myArray));
    }
}

