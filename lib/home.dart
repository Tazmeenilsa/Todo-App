import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  var result = "";
  List<dynamic> lst = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black87,
              height: 50,
              margin: EdgeInsets.only(top: 50),
              child: ListTile(
                title: Text(
                  "${lst[index]}",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
                trailing: Container(
                  width: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lst.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.cyanAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lst.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Additem"),
                  content: TextField(
                    onChanged: (value) {
                      result = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            lst.add(result);
                          });
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
