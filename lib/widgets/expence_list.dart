
import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';
import 'package:untitled/widgets/expence_tile.dart';


class ExpenseList extends StatelessWidget {
    // ignore: non_constant_identifier_names
  final List<ExpenceModel> expense_list;
  final void Function (ExpenceModel expence) onDeleteExpence;
  // ignore: non_constant_identifier_names
  const ExpenseList({super.key,required this.expense_list,required this.onDeleteExpence});


  

  @override
  Widget build(BuildContext context) {
    return Expanded(

            child: ListView.builder(

              itemCount: expense_list.length,
              itemBuilder: (BuildContext context, int index) {

                return Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 5),
                  child: Dismissible(
                    key:ValueKey(expense_list[index]) ,
                    onDismissed: (direction){
                      onDeleteExpence(expense_list[index]);
                    },
                    child: ExpenseTile(
                      expenceModel:expense_list[index] ,
                    ),
                  ),
                );
              },
            ),
          );
  }
}