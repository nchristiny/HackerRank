/*
    Input Format
    The void Print(Node* head) method takes the head node of a linked list as a parameter. Each Node has a data field (which stores integer data) and a next field (which points to the next element in the list).

    Note: Do not read any input from stdin/console. Each test case calls the Print method individually and passes it the head of a list.

    Output Format
    Print the integer data for each element of the linked list to stdout/console (e.g.: using printf, cout, etc.). There should be one element per line.

    head pointer input could be NULL as well for empty list
    Node is defined as
    class Node {
     int data;
     Node next;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.
void Print(Node head) {
    Node r = new Node();
    r = head;
    if (r != null){
        while(r != null) {
            System.out.println(r.data);
            r = r.next;
        }
    }
}
