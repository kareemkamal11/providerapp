import 'package:flutter/material.dart';
import 'package:todo/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    onPressed() {
      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Add Task',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.indigo[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextField(
                            autofocus: true,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal[400],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Add'),
                          ),
                        ]),
                  ),
                ),
              ));
    }

    return Scaffold(
        backgroundColor: Colors.teal[400],
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 20, left: 30),
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: Colors.indigo[400],
            onPressed: onPressed,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(width: 30),
                Text('ToDayDo',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ],
            ),
            const Text(
              '4 Tasks',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TaskList(),
              ),
            )
          ]),
        ));
  }
}
