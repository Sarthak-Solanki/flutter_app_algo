import 'Node.dart';
import 'dart:io';
class Queue{
Node head;
int size=0;
void enque(data){
  size++;
  Node node = new Node(data);
  if (head == null) {
    head = node;
  } else {
    Node n = head;
    while (n.next != null) {
      n = n.next;
    }
    //print(n.next.data);
    n.next = node;
  }
}
String deque(){
  if(isEmpty()){
    return null;
  }
  else
  {
    Node n = head;
    if(head.next!=null){
      String datas = head.data;
      head = head.next;

      size--;
      return datas;
    }
    else{
      return head.data;}
  }}
bool isEmpty(){
  if(size==0){
    return true;
  }
  return false;
}
int isSize(){
  return size;
}
display(){
  Node n = head;
  while(n!=null){
    print(n.data.toString()+" ");
    n = n.next;
  }

}
}
main(){
  Queue q = new Queue();
  q.enque(44);
  q.enque(77);
  q.enque(54);
  q.enque(4);
  q.enque(54);
  q.enque(42);
  q.display();

}