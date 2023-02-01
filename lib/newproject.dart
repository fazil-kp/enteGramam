import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newProject extends StatefulWidget {
  const newProject({Key? key}) : super(key: key);

  @override
  State<newProject> createState() => _newProjectState();
}

class _newProjectState extends State<newProject> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(
                'Project Details',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                      'Project Title '
                  ),
               ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                      'Description '
                  ),
               ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 1000,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 40),
                border: OutlineInputBorder(),

                label: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(

                      'Category '
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                    'Budget '
                ),
                hintText: "₹",
              ),
            ),
          ),
          
          TextField(
            controller: _date,
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_month),
              label: Text("period 1")
            ),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(

                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2002),
                  lastDate: DateTime(2300),);

              if(pickedDate !=null){
                setState(() {
                  _date.text = pickedDate.toString();
                });
              }else{
                print("Not Selected");
              }

            },
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                    'Contract Team '
                ),
              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
              child: ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black),
    onPressed:(){},
                  child: Text(
                      'Cancel',
                  ),
                  ),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20
              ),
              child: ElevatedButton(onPressed:(){},
                child: Text(
                  'Save'
              ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
