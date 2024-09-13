
import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';
import 'package:untitled/widgets/expence_tile.dart';


class ExpenseList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const ExpenseList({super.key,required this.expense_list});

  // ignore: non_constant_identifier_names
  final List<ExpenceModel> expense_list;

  @override
  Widget build(BuildContext context) {
    return Expanded(

            child: ListView.builder(

              itemCount: expense_list.length,
              itemBuilder: (BuildContext context, int index) {

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ExpenseTile(
                    expenceModel:expense_list[index] ,
                  ),
                );
              },
            ),
          );
  }
}