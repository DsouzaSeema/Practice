import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("custom widget"),
      ),
      body: Container(
        child: Column(
          children: [
            CatItem(),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.lightGreen,
                child:ListView.builder(itemBuilder: (context,index)=>Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.white70,),
                    title: Text("Name",style: TextStyle(fontSize: 25),),
                    subtitle: Text(",Mobile No",style: TextStyle(fontSize: 20),),
                    trailing: Icon(Icons.delete),
                  ),
                ))
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Colors.brown,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 15,crossAxisSpacing: 15,
                children: [Container(
                  height: 100,
                  color:Colors.blueGrey
                ),

                  Container(
                      height: 100,
                      color:Colors.black12
                  ),

                  Container(
                      height: 100,
                      color:Colors.tealAccent
                  ),

                  Container(
                      height: 100,
                      color:Colors.teal
                  )],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class CatItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.amberAccent,
        child: ListView.builder(
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,

        ),
      ),
    );
  }

}