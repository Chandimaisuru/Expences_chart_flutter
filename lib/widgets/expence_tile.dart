
import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';


class ExpenseTile extends StatelessWidget {
  const ExpenseTile({super.key, required this.expenceModel});

  final ExpenceModel expenceModel;

  @override
  Widget build(BuildContext context) {

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
                         expenceModel.title,
                          style: Theme.of(context).textTheme.titleLarge,
                         ),
                    
                         const SizedBox(
                          height: 6,
                         ),
                    
                         Row(
                    
                          children: [
                    
                            Text(expenceModel.amount.toString()),
                    
                            const Spacer(),
                            
                            const Icon(Icons.trending_down),
                    
                            const SizedBox(
                    
                              width: 10,
                    
                            ),
                    
                            Text(expenceModel.getFormatedDate)
                          ],
                    
                         )
                      ],
                    ),
                  ),
                );
  }
}