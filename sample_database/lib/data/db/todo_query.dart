abstract class TodoQuery {
  static const String TABLE_NAME = 'todos';
  static const String ID = 'id';
  static const String TODO_NAME = 'todo_name';

  static const String CREATE_TABLE = 'CREATE TABLE IF NOT EXITS $TABLE_NAME'
      '( $ID int PRIMARY KEY AUTOINCREMENT, $TODO_NAME TEXT )';
}

// abstract class TodoDao {
//   static const String TABLE_NAME = 'todos_other';
//   static const String CREATE_TABLE = 'CREATE TABLE IF NOT EXISTS $TABLE_NAME '
//       '(id INT PRIMARY KEY AUTOINCREMENT, name TEXT)';
// }
