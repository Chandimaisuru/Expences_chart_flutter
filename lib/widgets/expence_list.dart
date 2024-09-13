
import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';


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

                return Card(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 24
                    ),
                    child: Column(
                    
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                    
                         Text(
                          expense_list[index].title,
                          style: Theme.of(context).textTheme.titleLarge,
                         ),
                    
                         const SizedBox(
                          height: 6,
                         ),
                    
                         Row(
                    
                          children: [
                    
                            Text(expense_list[index].amount.toString()),
                    
                            const Spacer(),
                            
                            const Icon(Icons.trending_down),
                    
                            const SizedBox(
                    
                              width: 6,
                    
                            ),
                    
                            Text(expense_list[index].date.toString())
                          ],
                    
                         )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}