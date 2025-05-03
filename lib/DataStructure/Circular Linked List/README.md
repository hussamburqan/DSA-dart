
## Circular Linked List in Dart

### Overview
This project is a **circular linked list** in Dart. It can store any type of data. The last node points back to the first node, making a circle.

---

### Files

- `circular_linked_list.dart`: The main code for the circular linked list.
- `main.dart`: Shows how to use the list (insert, delete, print).
- `circular_linked_list_test.dart`: Tests to check if the list works well.

---

### How It Works
The list has a private `_head` (the first node). When you add a new node, it connects back to the head to keep the circle. When deleting the head, the last node is updated to point to the new head. Loops use `do...while` so they don’t go forever.

---

### Run the Code

To run the example:

```bash
dart run main.dart
```

---

### Run the Tests

First install `package:test`
then run:

```bash
dart test circular_linked_list_test.dart
```

---

### What We Test

- Inserting and checking the circle
- Deleting and keeping the circle
- Traversing the list one full loop
- `length()`, `contains()`, `getAt()`
- Special cases: empty list, one node, deleting all

---
