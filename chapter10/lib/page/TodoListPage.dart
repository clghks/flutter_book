import 'package:chapter10/model/Todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  // final _items = [];
  var _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
      ),
      body: _builder(),
    );
  }

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  Widget _builder() {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(controller: _todoController)),
                ElevatedButton(onPressed: () {
                  _addTodo(Todo(_todoController.text));
                }, child: Text('추가'))
              ],
            ),
            StreamBuilder<QuerySnapshot>(stream: Firestore.instance.collection('todo').snapshots(), builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }

              final documents = snapshot.data.documents;
              return Expanded(child: ListView(children: documents.map((e) => _buildItemWidget(e)).toList()));
            })
          ],
        ));
  }

  Widget _buildItemWidget(DocumentSnapshot doc) {
    final todo = Todo(doc['title'], isDone: doc['isDone']);

    return ListTile(
      onTap: () => _toggleTodo(doc),
      title: Text(
        todo.title,
        style: todo.isDone ? TextStyle(
            decoration: TextDecoration.lineThrough,
            fontStyle: FontStyle.italic
        ) : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(doc),
      ),
    );
  }

  void _addTodo(Todo todo) {
    Firestore.instance.collection('todo').add({'title': todo.title, 'isDone': todo.isDone});
    _todoController.text = '';

    // setState(() {
    //   _items.add(todo);
    //   _todoController.text = '';
    // });
  }

  void _deleteTodo(DocumentSnapshot doc) {
    Firestore.instance.collection('todo').document(doc.documentID).delete();

    // setState(() {
    //   _items.remove(todo);
    // });
  }

  void _toggleTodo(DocumentSnapshot doc) {
    Firestore.instance.collection('todo').document(doc.documentID).updateData(
        {'isDone': !doc['isDone']}
    );

    // setState(() {
    //   todo.isDone = !todo.isDone;
    // });
  }
}