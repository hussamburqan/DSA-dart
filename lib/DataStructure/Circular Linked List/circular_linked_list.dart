
class CircularNode<T> {
  T data;
  CircularNode<T>? next;

  CircularNode(this.data);
}

class CircularLinkedList<T> {
  CircularNode<T>? _head;

  void insert(T data) {
    final newNode = CircularNode<T>(data);
    if (_head == null) {
      _head = newNode;
      newNode.next = _head;
    } else {
      var current = _head;
      while (current!.next != _head) {
        current = current.next;
      }
      current.next = newNode;
      newNode.next = _head;
    }
  }

  bool delete(T data) {
    if (_head == null) return false;

    var current = _head;
    CircularNode<T>? prev;

    do {
      if (current!.data == data) {
        if (prev != null) {
          prev.next = current.next;
        } else {
          if (current.next == _head) {
            _head = null;
          } else {
            var last = _head;
            while (last!.next != _head) {
              last = last.next;
            }
            _head = current.next;
            last.next = _head;
          }
        }
        return true;
      }
      prev = current;
      current = current.next;
    } while (current != _head);

    return false;
  }

  bool contains(T data) {
    if (_head == null) return false;
    var current = _head;
    do {
      if (current!.data == data) return true;
      current = current.next;
    } while (current != _head);
    return false;
  }

  T? getAt(int index) {
    if (_head == null || index < 0) return null;
    var current = _head;
    int count = 0;
    do {
      if (count == index) return current!.data;
      count++;
      current = current!.next;
    } while (current != _head);
    return null;
  }

  void printList() {
    if (_head == null) {
      print('List is empty');
      return;
    }
    var current = _head;
    do {
      print(current!.data);
      current = current.next;
    } while (current != _head);
  }

  int length() {
    if (_head == null) return 0;
    var count = 0;
    var current = _head;
    do {
      count++;
      current = current!.next;
    } while (current != _head);
    return count;
  }
}