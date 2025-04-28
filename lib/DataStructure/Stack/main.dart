import 'stack.dart';  

void main() {
  Stack<int> stack = Stack<int>();

  print("Pushing elements onto the stack:");
  stack.push(10);
  stack.push(20);
  stack.push(30);

  print("Top element after pushing: ${stack.peek()}");  

  print("Size of stack: ${stack.size()}"); 

  print("Popped element: ${stack.pop()}");  

  print("Size of stack after pop: ${stack.size()}");  

  print("Top element after pop: ${stack.peek()}");  

  stack.clear();
  print("Stack cleared. Is the stack empty? ${stack.isEmpty()}"); 
  
  print("Top element after clear: ${stack.peek()}");  

}
