import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';
import 'package:untitled/widgets/add_new_expences.dart';
import 'package:untitled/widgets/expence_list.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {

  // expence list---

  final List<ExpenceModel> expenceList =[
   
   ExpenceModel(amount: 12.5, date: DateTime.now(), title: "Cricket", category: Category.food),

   ExpenceModel(amount: 19.5, date: DateTime.now(), title: "Football", category: Category.travel),

  ];

// add expence

void onAddNewExpence(ExpenceModel expence){
  
  setState(() {
    expenceList.add(expence);
  });
} 

// function to open a model

  void openAddExpences (){
    showModalBottomSheet(
      context: context,
      builder: (context){

          return AddnewExpences(onAddExpence: onAddNewExpence,);
      }
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXPENCES CHART ",
         style: TextStyle(
          fontSize:20,
          color: Color.fromARGB(246, 216, 200, 20),
          fontWeight:FontWeight.w300,
        ),
        ),
        backgroundColor: const Color.fromARGB(230, 3, 3, 3),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Container(
              width: 39,
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(226, 216, 200, 20),
              ),
                     
              child: IconButton(onPressed: openAddExpences, 
              icon:const Icon(Icons.add),
              color: const Color.fromARGB(246, 7, 7, 7),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ExpenseList(expense_list: expenceList,),
        ],
      ),
    );
  }
}