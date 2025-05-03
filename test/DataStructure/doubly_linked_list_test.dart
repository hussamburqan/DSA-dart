import 'package:linked_list/DataStructure/Doubly%20Linked%20List/doubly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('DoublyLinkedList', () {
    late DoublyLinkedList<int> list;

    setUp(() {
      list = DoublyLinkedList<int>();
    });

    test('Insert and verify order', () {
      list.insertAtHead(1);
      list.insertAtTail(3);
      list.insertAt(1, 2);

      expect(list.getAt(0), equals(1));
      expect(list.getAt(1), equals(2));
      expect(list.getAt(2), equals(3));
    });

    test('Delete and verify contents', () {
      list.insertAtTail(1);
      list.insertAtTail(2);
      list.insertAtTail(3);
      list.delete(2);
      expect(list.length(), equals(2));
      expect(list.getAt(0), equals(1));
      expect(list.getAt(1), equals(3));

      list.delete(1);
      expect(list.getAt(0), equals(3));

      list.delete(3);
      expect(list.length(), equals(0));
    });

    test('Length correctness', () {
      expect(list.length(), equals(0));
      list.insertAtHead(1);
      expect(list.length(), equals(1));
      list.insertAtTail(2);
      expect(list.length(), equals(2));
      list.delete(1);
      expect(list.length(), equals(1));
      list.delete(2);
      expect(list.length(), equals(0));
    });

    test('Forward/backward print matches expected order', () {
      list.insertAtTail(1);
      list.insertAtTail(2);
      list.insertAtTail(3);

      final forward = <int>[];
      final backward = <int>[];

      var current = list.head;
      while (current != null) {
        forward.add(current.data);
        current = current.next;
      }

      current = list.tail;
      while (current != null) {
        backward.add(current.data);
        current = current.prev;
      }

      expect(forward, equals([1, 2, 3]));
      expect(backward, equals([3, 2, 1]));
    });

    test('Boundary checks (empty list, single element, out-of-bounds index)', () {
      expect(list.length(), equals(0));
      expect(() => list.getAt(0), throwsA(equals('Index out')));
      expect(list.contains(1), isFalse);
      expect(list.delete(1), isFalse);

      list.insertAtHead(10);
      expect(list.getAt(0), equals(10));
      expect(() => list.getAt(1), throwsA(equals('Index out')));
      expect(list.contains(10), isTrue);

      expect(() => list.insertAt(5, 100), throwsA(equals('Index out')));
    });
  });
}
