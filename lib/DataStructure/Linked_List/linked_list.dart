/// Node class representing an element in the linked list.
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [this.next]);
}

/// A generic singly linked list class.
class LinkedList<T> {
  Node<T>? head;
  int _length = 0;

  /// Returns the number of elements in the list.
  int get length => _length;

  /// Adds [value] to the end of the list.
  void add(T value) {
    Node<T> newNode = Node(value);
    if (head == null) {
      head = newNode;
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
    _length++;
  }

  /// Inserts [value] at the given [index].
  void insert(int index, T value) {
    if (index < 0 || index > _length) {
      throw "Index out of range";
    }

    Node<T> newNode = Node(value);

    if (index == 0) {
      newNode.next = head;
      head = newNode;
    } else {
      Node<T>? current = head;
      for (int i = 0; i < index - 1; i++) {
        if (current == null) throw "Index out of range";
        current = current.next;
      }

      newNode.next = current!.next;
      current.next = newNode;
    }
    _length++;
  }

  /// Removes and returns the element at [index].
  T removeAt(int index) {
    if (index < 0 || index >= _length || head == null) {
      throw "Index out of range";
    }

    if (index == 0) {
      T data = head!.data;
      head = head!.next;
      _length--;
      return data;
    }

    Node<T>? current = head;
    for (int i = 0; i < index - 1; i++) {
      if (current == null) throw "Index out of range";
      current = current.next;
    }

    Node<T>? removedNode = current!.next;
    if (removedNode == null) throw "Index out of range";

    current.next = removedNode.next;
    _length--;

    return removedNode.data;
  }

  /// Returns `true` if [value] is found in the list.
  bool contains(T value) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == value) return true;
      current = current.next;
    }
    return false;
  }

  /// Returns the index of the first occurrence of [value], or -1 if not found.
  int indexOf(T value) {
    Node<T>? current = head;
    int index = 0;
    while (current != null) {
      if (current.data == value) return index;
      current = current.next;
      index++;
    }
    return -1;
  }

  /// Clears the entire list.
  void clear() {
    head = null;
    _length = 0;
  }

  /// Provides read access to element at [index].
  T operator [](int index) {
    if (index < 0 || index >= _length) {
      throw "Index out of range";
    }

    Node<T>? current = head;
    for (int i = 0; i < index; i++) {
      current = current!.next;
    }

    return current!.data;
  }

  /// Provides write access to element at [index].
  void operator []=(int index, T value) {
    if (index < 0 || index >= _length) {
      throw "Index out of range";
    }

    Node<T>? current = head;
    for (int i = 0; i < index; i++) {
      current = current!.next;
    }

    current!.data = value;
  }

  /// Concatenates this list with [other] and returns a new list.
  LinkedList<T> operator +(LinkedList<T> other) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;

    while (current != null) {
      newLinkedList.add(current.data);
      current = current.next;
    }

    current = other.head;
    while (current != null) {
      newLinkedList.add(current.data);
      current = current.next;
    }

    return newLinkedList;
  }

  /// Removes the first occurrence of [value] and returns a new list.
  LinkedList<T> operator -(T value) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;
    bool removed = false;

    while (current != null) {
      if (current.data == value && !removed) {
        removed = true;
      } else {
        newLinkedList.add(current.data);
      }
      current = current.next;
    }

    return newLinkedList;
  }

  /// Applies the given [action] to each element in the list.
  void forEach(void Function(T) action) {
    Node<T>? current = head;
    while (current != null) {
      action(current.data);
      current = current.next;
    }
  }

  /// Returns a new [LinkedList] containing the results of applying [transform] to each element.
  LinkedList<S> map<S>(S Function(T) transform) {
    LinkedList<S> newLinkedList = LinkedList<S>();
    Node<T>? current = head;
    while (current != null) {
      newLinkedList.add(transform(current.data));
      current = current.next;
    }
    return newLinkedList;
  }

  /// Returns a new [LinkedList] containing only the elements that satisfy [test].
  LinkedList<T> where(bool Function(T) test) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;
    while (current != null) {
      if (test(current.data)) {
        newLinkedList.add(current.data);
      }
      current = current.next;
    }
    return newLinkedList;
  }

  @override
  String toString() {
    List<T> listOfString = [];
    Node<T>? current = head;
    while (current != null) {
      listOfString.add(current.data);
      current = current.next;
    }
    return 'LinkedList: ${listOfString.toString()}';
  }
}
