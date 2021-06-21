import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (ctx, constraints) {
                return Column(
                  children: [
                    Text(
                      'No Transactions added yet!',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset('assets/images/waiting.png',
                            fit: BoxFit.cover))
                  ],
                );
              })
            : ListView(
                //? key example

                children: transactions
                    .map((tx) => TransactionItem(
                          key: ValueKey(tx.id),
                          transaction: tx,
                          mediaQuery: mediaQuery,
                          deleteTx: deleteTx,
                        ))
                    .toList(),
              )
        //? recomended list builder
        // : ListView.builder(
        //     itemBuilder: (context, index) {
        //       return TransactionItem(
        //         transaction: transactions[index],
        //         mediaQuery: mediaQuery,
        //         deleteTx: deleteTx,
        //       );
        //     },
        //     itemCount: transactions.length,
        //   ),
        );
  }
}
