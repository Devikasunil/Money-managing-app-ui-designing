import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(15),
      itemBuilder: (context, index) => Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple[900],
            radius: 30,
            child: Text("01\n01\n'22"),
          ),
          title: Text(
            'Income Category $index',
          ),
          subtitle: Text('From: $index',),
          trailing: Wrap(
            children: [
              IconButton(
                onPressed: () {
                  print('Edit button clicked');
                },
                icon: Icon(
                  Icons.edit,color: Colors.deepPurple[900],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  print('Delete button clicked');
                  FocusManager.instance.primaryFocus?.unfocus();

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text('DELETE'),
                      content: Text(
                        'Are you sure you want to delete?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'OK',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.delete,color: Colors.deepPurple[900],
                ),
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 30,
      ),
      itemCount: 10,
    );
  }
}