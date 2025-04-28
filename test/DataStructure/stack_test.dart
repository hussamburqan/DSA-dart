import 'package:linked_list/DataStructure/Stack/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack Basic Operations', () {
    late Stack<int> stack;

    setUp(() {
      stack = Stack<int>();
    });

    test('New stack should be empty', () {
      expect(stack.isEmpty(), isTrue);
      expect(stack.size(), equals(0));
    });

    test('Push should add an element to the top', () {
      stack.push(10);
      expect(stack.isEmpty(), isFalse);
      expect(stack.size(), equals(1));
      expect(stack.peek(), equals(10));
    });

    test('Pop should remove and return the top element', () {
      stack.push(20);
      stack.push(30);
      final popped = stack.pop();
      expect(popped, equals(30));
      expect(stack.size(), equals(1));
      expect(stack.peek(), equals(20));
    });

    test('Pop on empty stack should return null', () {
      final popped = stack.pop();
      expect(popped, isNull);
    });

    test('Peek should return the top element without removing it', () {
      stack.push(40);
      final peeked = stack.peek();
      expect(peeked, equals(40));
      expect(stack.size(), equals(1));
    });

    test('Peek on empty stack should return null', () {
      final peeked = stack.peek();
      expect(peeked, isNull);
    });

    test('Clear should empty the stack', () {
      stack.push(50);
      stack.push(60);
      stack.clear();
      expect(stack.isEmpty(), isTrue);
      expect(stack.size(), equals(0));
    });
  });
}
