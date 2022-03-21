import 'package:flutter/material.dart';
import 'package:sample_database/data/db/db_helper.dart';


class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final db = DBHelper.instance;

  @override
  void initState() {
    super.initState();
    db.openDB();
    // db.insert(TodoDao.TABLE_NAME, {
    //   "id": 1,
    //   "name": "Eat"
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
      ),
    );
  }
}