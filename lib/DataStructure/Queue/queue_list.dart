// Queue Using List
class QueueList<T> {
  final List<T> _queue = [];

  void enqueue(T data) => _queue.add(data);

  T? dequeue() {
    if(isEmpty()){
      return null;
    }
    return _queue.removeAt(0);
  }

  T? front() {
    if(isEmpty()){
        return null;
      }
    return _queue.first;
  }

  bool isEmpty() => _queue.isEmpty;

  int size() => _queue.length;

  void clear() => _queue.clear();
}
