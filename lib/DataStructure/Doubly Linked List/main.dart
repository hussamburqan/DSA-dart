import 'doubly_linked_list.dart';

void main() {
  var list = DoublyLinkedList<int>();

  list.insertAtHead(10);
  list.insertAtTail(20);
  list.insertAt(1, 15);

  print('Forward:');
  list.printForward();

  print('Backward:');
  list.printBackward();

  print('Contains 15? ${list.contains(15)}');
  print('Element at index 1: ${list.getAt(1)}');

  list.delete(15);
  print('After deleting 15:');
  list.printForward();

  print('Length: ${list.length()}');
}
