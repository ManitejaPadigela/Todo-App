// import 'package:flutter/material.dart';
//
// class AddTaskScreen extends StatelessWidget {
//   const AddTaskScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String newTaskTitle;
//     return Container(
//       color: const Color(0xff757575),
//       child: Container(
//         padding: const EdgeInsets.all(20.0),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20.0),
//             topLeft: Radius.circular(20.0),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Text(
//               'Add Task',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.lightBlueAccent,
//                   fontSize: 30,
//                   fontWeight: FontWeight.w600),
//             ),
//             const TextField(
//               autofocus: true,
//               textAlign: TextAlign.center,
//               onChanged: (newText) {
//                 newTaskTitle = newText;
//               },
//             ),
//             FlatButton(
//               onPressed: () {},
//               child: const Text(
//                 "ADD",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 1.5),
//               ),
//               color: Colors.lightBlueAccent,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
