import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listt(),));
}
class Listt extends StatelessWidget{
  var name=['12-01-24','12-01-24','12-01-24'];
  var phone=['12:44PM to ongoing','12:44PM to ongoing','12:44PM to ongoing'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context,index){
        return Card(
          child: ListTile(
            leading: Icon(Icons.location_pin,),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
          ),

        );

      },itemCount: name.length,
      ),);
  }
}