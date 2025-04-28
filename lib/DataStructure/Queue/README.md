# Queue Implementation

This is a simple implementation of a **Queue** data structure in Dart using a **List** and a **LinkedList**. The queue follows the **FIFO** (First In, First Out) principle, where the first element added to the queue is the first one to be removed.

## FIFO Concept

The **FIFO** concept is a way of organizing data where the first element inserted into the queue is the first one to be removed. This behavior is similar to a queue at a checkout counter, where the first person to get in line is the first to be served.

## Features of the Queue

- `enqueue(T data)` – adds to the end
- `dequeue()` – removes from the front
- `front()` – returns the front element
- `isEmpty()` – checks if empty
- `size()` – returns number of elements
- `clear()` – empties the queue