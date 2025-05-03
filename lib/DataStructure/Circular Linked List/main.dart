// 📁 main.dart

import 'circular_linked_list.dart';

void main() {
  final list = CircularLinkedList<int>();

  print('Inserting 1, 2, 3, 4');
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);

  print('\nPrinting list:');
  list.printList();

  print('\nContains 3?');
  print(list.contains(3));

  print('\nContains 5?');
  print(list.contains(5));

  print('\nLength of list:');
  print(list.length());

  print('\nGet at index 2:');
  print(list.getAt(2));

  print('\nDelete 2 and 4');
  list.delete(2);
  list.delete(4);

  print('\nPrinting list after deletion:');
  list.printList();

  print('\nDelete 1 (head node)');
  list.delete(1);

  print('\nPrinting list after deleting head:');
  list.printList();

  print('\nDelete 3 (last node)');
  list.delete(3);

  print('\nPrinting list after deleting last:');
  list.printList();
}
