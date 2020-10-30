import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              // onChanged: (value) {
              //   amountInput = value;
              // },
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amout'),
            ),
            FlatButton(
              onPressed: () {
                print(titleController.text);
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
