import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

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
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
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
