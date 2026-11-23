import 'package:flutter/material.dart';
import 'package:jsonplaceholder/model/todos.dart';

class TodoWidget extends StatelessWidget {
  final Todos todos;

  const TodoWidget({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                todos.completed
                    ? Icons.check_box_outline_blank
                    : Icons.check_box_rounded,
                color: todos.completed ? Colors.grey : Colors.green[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(1),
                ),
                height: 40,
                width: 1.5,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'ID: ${todos.id}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.withValues(alpha: 0.95),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            '•',
                            style: TextStyle(
                              color: Colors.grey.withValues(alpha: 0.95),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'User ID: ${todos.userId}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.withValues(alpha: 0.95),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      todos.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    todos.completed
                        ? Text(
                            'In Progress',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                            ),
                          )
                        : Text(
                            'Completed',
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
