import 'package:linked_list/DataStructure/Queue/queue_Linkedlist.dart';
import 'package:linked_list/DataStructure/Queue/queue_list.dart';

void main() {
  QueueLinkedList<int> queueLinkedList = QueueLinkedList<int>();
  print("===========================================================================");
  print("Queue LinkedList");
  print("===========================================================================");

  print("Enqueuing elements into the queue:");
  queueLinkedList.enqueue(10);
  queueLinkedList.enqueue(20);
  queueLinkedList.enqueue(30);
  queueLinkedList.enqueue(40);

  print("Front element after enqueueing: ${queueLinkedList.front()}");

  print("Size of queue: ${queueLinkedList.size()}");

  print("Dequeued element: ${queueLinkedList.dequeue()}");
  print("Size of queue after dequeue: ${queueLinkedList.size()}");

  print("Front element after dequeueing: ${queueLinkedList.front()}");

  queueLinkedList.clear();
  print("Queue cleared. Is the queue empty? ${queueLinkedList.isEmpty()}");


  QueueList<int> queueList = QueueList<int>();
  print("===========================================================================");
  print("Queue List");
  print("===========================================================================");

  print("Enqueuing elements into the queue:");
  queueList.enqueue(10);
  queueList.enqueue(20);
  queueList.enqueue(30);
  queueList.enqueue(40);

  print("Front element after enqueueing: ${queueList.front()}");

  print("Size of queue: ${queueList.size()}");

  print("Dequeued element: ${queueList.dequeue()}");
  print("Size of queue after dequeue: ${queueList.size()}");

  print("Front element after dequeueing: ${queueList.front()}");

  queueList.clear();
  print("Queue cleared. Is the queue empty? ${queueList.isEmpty()}");
}
