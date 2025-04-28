class Stack<T> {
  final List<T> _stack = [];

  void push(T data){
    _stack.add(data);
  }

  T? pop() {
    if (isEmpty()) {
      return null;
    }

    return _stack.removeLast();
  }

  T? peek() {
    if (isEmpty()) {
      return null;
    }

    return _stack.last;
  }

  bool isEmpty() => _stack.isEmpty; 

  int size() => _stack.length;

  void clear(){
    _stack.clear();
  }
}