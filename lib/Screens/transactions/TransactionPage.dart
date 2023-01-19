import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(15),
      itemBuilder: (context, index) => Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.deepPurple[900],
            child: Text(
              "10\n10\n'22",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          title: Text(
            'Rs. 1000/-',
            style: TextStyle(
              color: Colors.deepPurple[900],
            ),
          ),
          subtitle: Text(
            'Transactions',
            style: TextStyle(
              color: Colors.deepPurple[900],
            ),
          ),
          trailing: Wrap(
            children: [
              IconButton(
                onPressed: () {
                  print('edit button clicked');
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.deepPurple[900],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  print('Delete button clicked');
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
                  Icons.delete,
                  color: Colors.deepPurple[900],
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
