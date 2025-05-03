# Doubly Linked List in Dart

## Overview

This project implements a generic `DoublyLinkedList<T>` class that supports:

* Inserting at the head, tail, and any index
* Deleting elements
* Traversing in both directions (forward & backward)
* Checking if an element exists (`contains`)
* Getting an element by index (`getAt`)
* Checking the length of the list

## Structure Explanation

The linked list is made up of nodes (`DoublyNode<T>`) where each node has:

* `data`: Holds the value.
* `next`: Points to the next node.
* `prev`: Points to the previous node.

The `DoublyLinkedList<T>` class keeps track of:

* `head`: The first node in the list.
* `tail`: The last node in the list.
* `_length`: The total number of nodes.

It provides methods to insert, delete, search, and print the list both forward and backward.

## Files

* `doubly_linked_list.dart`: The main class implementation.
* `main.dart`: Shows how to use the list with examples.
* `doubly_linked_list_test.dart`: Unit tests for all public methods.

## How to Run

Run the demo:

```bash
dart main.dart
```

Run the tests:

```bash
dart test doubly_linked_list_test.dart
```

## Sample Output

```
Forward:
10
15
20
Backward:
20
15
10
Contains 15? true
Element at index 1: 15
After deleting 15:
10
20
Length: 2
```
