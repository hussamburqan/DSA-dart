// Queue using LinkedList
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [this.next]);
}

class QueueLinkedList<T> {
  Node<T>? frontNode;
  Node<T>? rearNode;

  void enqueue(T data) {
    Node<T> newNode = Node(data);
    if (rearNode == null) {
      frontNode = newNode;
      rearNode = newNode;
    } else {
      rearNode!.next = newNode;
      rearNode = newNode;
    }
  }

  T? dequeue() {
    if (isEmpty()) {
      return null;
    }
    T data = frontNode!.data;
    frontNode = frontNode!.next;
    if (frontNode == null) {
      rearNode = null; 
    }
    return data;
  }

  T? front() {
    return frontNode?.data;
  }

  bool isEmpty() => frontNode == null;

  int size() {
    int count = 0;
    Node<T>? current = frontNode;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }

  void clear() {
    frontNode = null;
    rearNode = null;
  }
}
