
import 'package:linked_list/DataStructure/Circular%20Linked%20List/circular_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('CircularLinkedList', () {
    test('Insert and verify cycle', () {
      final list = CircularLinkedList<int>();
      list.insert(10);
      list.insert(20);
      list.insert(30);

      expect(list.length(), 3);
      expect(list.getAt(0), 10);
      expect(list.getAt(1), 20);
      expect(list.getAt(2), 30);

      final first = list.getAt(0);
      final second = list.getAt(1);
      final third = list.getAt(2);
      expect([first, second, third], [10, 20, 30]);
    });

    test('Delete and ensure circular integrity', () {
      final list = CircularLinkedList<int>();
      list.insert(1);
      list.insert(2);
      list.insert(3);

      list.delete(2);
      expect(list.length(), 2);
      expect(list.contains(2), false);

      final values = <int>[];
      for (int i = 0; i < list.length(); i++) {
        values.add(list.getAt(i)!);
      }
      expect(values, [1, 3]);
    });

    test('Traversal stops after one full loop', () {
      final list = CircularLinkedList<String>();
      list.insert('A');
      list.insert('B');
      list.insert('C');

      final collected = <String>[];
      for (int i = 0; i < list.length(); i++) {
        collected.add(list.getAt(i)!);
      }
      expect(collected, ['A', 'B', 'C']);
    });

    test('Edge cases: empty, one-node, delete all', () {
      final list = CircularLinkedList<int>();

      expect(list.length(), 0);
      expect(list.getAt(0), null);
      expect(list.contains(100), false);

      list.insert(5);
      expect(list.length(), 1);
      expect(list.getAt(0), 5);

      list.delete(5);
      expect(list.length(), 0);
      expect(list.contains(5), false);
    });
  });
     test('Length after multiple inserts', () {
      final list = CircularLinkedList<String>();
      expect(list.length(), 0);

      list.insert('X');
      list.insert('Y');
      list.insert('Z');
      expect(list.length(), 3);
    });

    test('Contains works as expected', () {
      final list = CircularLinkedList<int>();
      list.insert(100);
      list.insert(200);
      list.insert(300);

      expect(list.contains(100), true);
      expect(list.contains(200), true);
      expect(list.contains(400), false);
    });

    test('GetAt returns correct elements', () {
      final list = CircularLinkedList<String>();
      list.insert('First');
      list.insert('Second');
      list.insert('Third');

      expect(list.getAt(0), 'First');
      expect(list.getAt(1), 'Second');
      expect(list.getAt(2), 'Third');
      expect(list.getAt(3), null);
    });
}
