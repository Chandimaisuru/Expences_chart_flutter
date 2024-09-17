
import 'package:flutter/material.dart';
import 'package:untitled/model/expence.dart';



class AddnewExpences extends StatefulWidget {
  const AddnewExpences({super.key});

  @override
  State<AddnewExpences> createState() => _AddnewExpencesState();
}

class _AddnewExpencesState extends State<AddnewExpences> {

  final titleController = TextEditingController();
  final amountController =TextEditingController();
  Category selectCategory = Category.leasure;

  final DateTime initialDate = DateTime.now();
  final DateTime firstDate =DateTime(DateTime.now().year-1,DateTime.now().month,DateTime.now().day);
  final DateTime lastDate =DateTime(DateTime.now().year+1,DateTime.now().month,DateTime.now().day);

  DateTime selectDate = DateTime.now();


  // date picke-----------------

 Future<void> openDataModal() async {
  try{
      final pickDate = await showDatePicker(
        context: context, 
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate
        );

          setState(() {
            selectDate=pickDate!;
          });
        



  }catch(err){
      print(err.toString());
  }
 }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: titleController,
            decoration:const InputDecoration(
              hintText: "Add new expenece title",
              label: Text("Title")
      
            ),
            keyboardType: TextInputType.text,
            maxLength: 50,
          ),

          const SizedBox(height: 20,),
      
             Row(
              children: [
             Expanded(
                  child: TextField(
                    controller: amountController,
                    decoration: const InputDecoration(
                      hintText: "Add your Amount",
                      label: Text("Amount")
                            
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                // const SizedBox(
                //   width: 80,
                  
                // ),
                Expanded(child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   
                    Text(formatDate.format(selectDate)),
                    IconButton(onPressed: openDataModal,
                     icon: const Icon(Icons.date_range_outlined))
                    ],
                ))
               
              ],
            ),
            const SizedBox(height: 50,),
            Row(
             
              children: [
                DropdownButton(
                  value: selectCategory,
                  items: Category.values.map((category)=>DropdownMenuItem(
                    value: category,
                    child: Text(category.name)
                    ),
                    ).toList(),
                 onChanged: (value) {
                  setState(() {
                      selectCategory=value!;
                  });
                
                 }),
                
                 Expanded(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                       ElevatedButton(
                    
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
                     
                    ),
                        child:const Text("Save",style: TextStyle(color: Colors.black)),
                    ),
                   
                    const SizedBox(width: 10,),
                   
                      ElevatedButton(
                    
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                     
                    ),
                        child:const Text("Close",style: TextStyle(color: Colors.black),),
                    ),
                   
                   
                    ],
                   ),
                 ),
                
      
              ],
            )
          
        ],
      
      ),
    );
  }
}