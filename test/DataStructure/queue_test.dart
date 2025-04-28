import 'package:linked_list/DataStructure/Queue/queue_Linkedlist.dart';
import 'package:linked_list/DataStructure/Queue/queue_list.dart';
import 'package:test/test.dart';

void main() {
  group('Queue using LinkedList', () {
    late QueueLinkedList<int> queue;

    setUp(() {
      queue = QueueLinkedList<int>(); 
    });

    test('enqueue/dequeue order should follow FIFO', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);

      expect(queue.dequeue(), 1); 
      expect(queue.dequeue(), 2);
      expect(queue.dequeue(), 3);
    });

    test('peek should return the front element without removing it', () {
      queue.enqueue(1);
      queue.enqueue(2);

      expect(queue.front(), 1);
      expect(queue.size(), 2);
    });

    test('isEmpty should return true when queue is empty', () {
      expect(queue.isEmpty(), true);
    });

    test('isEmpty should return false after enqueueing an element', () {
      queue.enqueue(1);
      expect(queue.isEmpty(), false); 
    });

    test('dequeue from empty queue should return null', () {
      expect(queue.dequeue(), null);
    });

    test('clear should reset the queue', () {
      queue.enqueue(1);
      queue.enqueue(2);

      queue.clear();
      expect(queue.isEmpty(), true);
    });

    test('enqueuing and dequeuing a single element', () {
      queue.enqueue(10);
      expect(queue.dequeue(), 10);
    });

    test('size should reflect the correct number of elements', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);

      expect(queue.size(), 3);
      queue.dequeue();
      expect(queue.size(), 2);
    });
  });

  group('Queue using List', () {
    late QueueList<int> queue;

    setUp(() {
      queue = QueueList<int>();
    });

    test('enqueue/dequeue order should follow FIFO', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);

      expect(queue.dequeue(), 1); 
      expect(queue.dequeue(), 2);
      expect(queue.dequeue(), 3);
    });

    test('peek should return the front element without removing it', () {
      queue.enqueue(1);
      queue.enqueue(2);

      expect(queue.front(), 1);
      expect(queue.size(), 2);
    });

    test('isEmpty should return true when queue is empty', () {
      expect(queue.isEmpty(), true);
    });

    test('isEmpty should return false after enqueueing an element', () {
      queue.enqueue(1);
      expect(queue.isEmpty(), false);
    });

    test('dequeue from empty queue should return null', () {
      expect(queue.dequeue(), null);
    });

    test('clear should reset the queue', () {
      queue.enqueue(1);
      queue.enqueue(2);

      queue.clear();
      expect(queue.isEmpty(), true);
    });

    test('enqueuing and dequeuing a single element', () {
      queue.enqueue(10);
      expect(queue.dequeue(), 10);
    });

    test('size should reflect the correct number of elements', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);

      expect(queue.size(), 3);
      queue.dequeue();
      expect(queue.size(), 2);
    });
  });
}
